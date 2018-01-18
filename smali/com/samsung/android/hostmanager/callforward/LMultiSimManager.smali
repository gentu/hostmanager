.class public Lcom/samsung/android/hostmanager/callforward/LMultiSimManager;
.super Ljava/lang/Object;
.source "LMultiSimManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/samsung/android/hostmanager/callforward/LMultiSimManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hostmanager/callforward/LMultiSimManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getMultiSimManagerSubId(Landroid/content/Context;I)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simId"    # I

    .prologue
    .line 165
    sget-object v3, Lcom/samsung/android/hostmanager/callforward/LMultiSimManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMultiSimManagerSubId() - simId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/sim/MultiSimManagerFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/sim/MultiSimManagerInterface;

    move-result-object v0

    .line 167
    .local v0, "msm":Lcom/samsung/android/app/watchmanager/plugin/libinterface/sim/MultiSimManagerInterface;
    invoke-interface {v0, p0}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/sim/MultiSimManagerInterface;->getSubscriptionManager(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    .line 170
    .local v1, "sm":Landroid/telephony/SubscriptionManager;
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->isSamsungDevice()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 171
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/sim/MultiSimManagerFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/sim/MultiSimManagerInterface;

    move-result-object v3

    invoke-interface {v3, v1, p1}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/sim/MultiSimManagerInterface;->SIMSLOT2(Landroid/telephony/SubscriptionManager;I)I

    move-result v2

    .line 176
    .local v2, "subId":I
    :goto_0
    sget-object v3, Lcom/samsung/android/hostmanager/callforward/LMultiSimManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMultiSimManagerSubId() - subId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return v2

    .line 173
    .end local v2    # "subId":I
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/sim/MultiSimManagerFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/sim/MultiSimManagerInterface;

    move-result-object v3

    invoke-interface {v3, v1, p1}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/sim/MultiSimManagerInterface;->SIMSLOT1(Landroid/telephony/SubscriptionManager;I)I

    move-result v2

    .restart local v2    # "subId":I
    goto :goto_0
.end method

.method public static getPhoneNumber(I)Ljava/lang/String;
    .locals 5
    .param p0, "simId"    # I

    .prologue
    .line 114
    sget-object v2, Lcom/samsung/android/hostmanager/callforward/LMultiSimManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPhoneNumber for ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] slot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 118
    .local v1, "telMgr":Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->isSamsungDevice()Z

    move-result v2

    if-nez v2, :cond_0

    .line 119
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 123
    :goto_0
    return-object v0

    .line 121
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/sim/MultiSimManagerFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/sim/MultiSimManagerInterface;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/samsung/android/hostmanager/callforward/LMultiSimManager;->getMultiSimManagerSubId(Landroid/content/Context;I)I

    move-result v3

    invoke-interface {v2, v1, v3}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/sim/MultiSimManagerInterface;->getLine1Number(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "number":Ljava/lang/String;
    sget-object v2, Lcom/samsung/android/hostmanager/callforward/LMultiSimManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPhoneNumber for ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->printPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getPhoneType(I)Ljava/lang/String;
    .locals 6
    .param p0, "simId"    # I

    .prologue
    .line 127
    sget-object v3, Lcom/samsung/android/hostmanager/callforward/LMultiSimManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPhoneType for ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] slot"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->isSamsungDevice()Z

    move-result v3

    if-nez v3, :cond_0

    .line 130
    invoke-static {p0}, Lcom/samsung/android/hostmanager/callforward/LMultiSimManager;->isSimExists(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 131
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 132
    .local v2, "telMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 143
    .end local v2    # "telMgr":Landroid/telephony/TelephonyManager;
    :cond_0
    const-string v0, "none"

    .line 144
    .local v0, "networkType":Ljava/lang/String;
    invoke-static {p0}, Lcom/samsung/android/hostmanager/callforward/LMultiSimManager;->isSimExists(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 145
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 146
    .restart local v2    # "telMgr":Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/sim/MultiSimManagerFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/sim/MultiSimManagerInterface;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p0}, Lcom/samsung/android/hostmanager/callforward/LMultiSimManager;->getMultiSimManagerSubId(Landroid/content/Context;I)I

    move-result v4

    invoke-interface {v3, v2, v4}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/sim/MultiSimManagerInterface;->getCurrentPhoneType(Landroid/telephony/TelephonyManager;I)I

    move-result v1

    .line 147
    .local v1, "networkTypeInt":I
    sget-object v3, Lcom/samsung/android/hostmanager/callforward/LMultiSimManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPhoneType, networkTypeInt ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    packed-switch v1, :pswitch_data_1

    .line 160
    .end local v1    # "networkTypeInt":I
    .end local v2    # "telMgr":Landroid/telephony/TelephonyManager;
    :cond_1
    :goto_0
    sget-object v3, Lcom/samsung/android/hostmanager/callforward/LMultiSimManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPhoneType result ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .end local v0    # "networkType":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 134
    .restart local v2    # "telMgr":Landroid/telephony/TelephonyManager;
    :pswitch_0
    const-string v0, "CDMA"

    goto :goto_1

    .line 136
    :pswitch_1
    const-string v0, "GSM"

    goto :goto_1

    .line 138
    :pswitch_2
    const-string v0, "SIP"

    goto :goto_1

    .line 150
    .restart local v0    # "networkType":Ljava/lang/String;
    .restart local v1    # "networkTypeInt":I
    :pswitch_3
    const-string v0, "CDMA"

    .line 151
    goto :goto_0

    .line 153
    :pswitch_4
    const-string v0, "GSM"

    .line 154
    goto :goto_0

    .line 156
    :pswitch_5
    const-string v0, "SIP"

    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 148
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public static getSimOperator(I)Ljava/lang/String;
    .locals 7
    .param p0, "simId"    # I

    .prologue
    .line 49
    sget-object v4, Lcom/samsung/android/hostmanager/callforward/LMultiSimManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSimOperator for ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] slot"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->isSamsungDevice()Z

    move-result v4

    if-nez v4, :cond_0

    .line 51
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 52
    .local v3, "telMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 60
    .end local v3    # "telMgr":Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v1

    .line 55
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/sim/MultiSimManagerFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/sim/MultiSimManagerInterface;

    move-result-object v0

    .line 56
    .local v0, "msm":Lcom/samsung/android/app/watchmanager/plugin/libinterface/sim/MultiSimManagerInterface;
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/sim/MultiSimManagerInterface;->getSubscriptionManager(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    .line 58
    .local v2, "sm":Landroid/telephony/SubscriptionManager;
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/sim/MultiSimManagerFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/sim/MultiSimManagerInterface;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p0}, Lcom/samsung/android/hostmanager/callforward/LMultiSimManager;->getMultiSimManagerSubId(Landroid/content/Context;I)I

    move-result v5

    invoke-interface {v4, v2, v5}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/sim/MultiSimManagerInterface;->getSimOperator(Landroid/telephony/SubscriptionManager;I)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "simOperator":Ljava/lang/String;
    sget-object v4, Lcom/samsung/android/hostmanager/callforward/LMultiSimManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSimOperator result ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isDual()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 20
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->isSamsungDevice()Z

    move-result v4

    if-nez v4, :cond_0

    .line 45
    .local v0, "slotCount":I
    .local v1, "telMgr":Landroid/telephony/TelephonyManager;
    :goto_0
    return v3

    .line 23
    .end local v0    # "slotCount":I
    .end local v1    # "telMgr":Landroid/telephony/TelephonyManager;
    :cond_0
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 24
    .restart local v1    # "telMgr":Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/sim/MultiSimManagerFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/sim/MultiSimManagerInterface;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/sim/MultiSimManagerInterface;->getSimSlotCount(Landroid/telephony/TelephonyManager;)I

    move-result v0

    .line 25
    .restart local v0    # "slotCount":I
    sget-object v4, Lcom/samsung/android/hostmanager/callforward/LMultiSimManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDual, slotCount ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    if-le v0, v2, :cond_1

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public static isIdleCallState(I)Z
    .locals 8
    .param p0, "simId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 86
    sget-object v5, Lcom/samsung/android/hostmanager/callforward/LMultiSimManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isIdleCallState for ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] slot"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->isSamsungDevice()Z

    move-result v5

    if-nez v5, :cond_1

    .line 89
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 91
    .local v2, "telMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v5

    if-nez v5, :cond_0

    .line 97
    .end local v2    # "telMgr":Landroid/telephony/TelephonyManager;
    :goto_0
    return v3

    .restart local v2    # "telMgr":Landroid/telephony/TelephonyManager;
    :cond_0
    move v3, v4

    .line 91
    goto :goto_0

    .line 93
    .end local v2    # "telMgr":Landroid/telephony/TelephonyManager;
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/sim/MultiSimManagerFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/sim/MultiSimManagerInterface;

    move-result-object v5

    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, p0}, Lcom/samsung/android/hostmanager/callforward/LMultiSimManager;->getMultiSimManagerSubId(Landroid/content/Context;I)I

    move-result v6

    invoke-interface {v5, v6}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/sim/MultiSimManagerInterface;->getCallState(I)I

    move-result v0

    .line 94
    .local v0, "callState":I
    sget-object v5, Lcom/samsung/android/hostmanager/callforward/LMultiSimManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isIdleCallState for ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] slot ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    if-nez v0, :cond_2

    move v1, v3

    .line 96
    .local v1, "res":Z
    :goto_1
    sget-object v3, Lcom/samsung/android/hostmanager/callforward/LMultiSimManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isIdleCallState result ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v1

    .line 97
    goto :goto_0

    .end local v1    # "res":Z
    :cond_2
    move v1, v4

    .line 95
    goto :goto_1
.end method

.method public static isNetworkRoaming(I)Z
    .locals 5
    .param p0, "simId"    # I

    .prologue
    .line 101
    sget-object v2, Lcom/samsung/android/hostmanager/callforward/LMultiSimManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isNetworkRoaming for ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] slot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 104
    .local v1, "telMgr":Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->isSamsungDevice()Z

    move-result v2

    if-nez v2, :cond_0

    .line 105
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 110
    :goto_0
    return v0

    .line 108
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/sim/MultiSimManagerFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/sim/MultiSimManagerInterface;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/samsung/android/hostmanager/callforward/LMultiSimManager;->getMultiSimManagerSubId(Landroid/content/Context;I)I

    move-result v3

    invoke-interface {v2, v1, v3}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/sim/MultiSimManagerInterface;->isNetworkRoaming(Landroid/telephony/TelephonyManager;I)Z

    move-result v0

    .line 109
    .local v0, "roaming":Z
    sget-object v2, Lcom/samsung/android/hostmanager/callforward/LMultiSimManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isNetworkRoaming for ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] slot ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isSimExists(I)Z
    .locals 7
    .param p0, "simId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 64
    sget-object v4, Lcom/samsung/android/hostmanager/callforward/LMultiSimManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSimExists for ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] slot"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 66
    .local v2, "telMgr":Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->isSamsungDevice()Z

    move-result v4

    if-nez v4, :cond_0

    .line 67
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    .line 68
    .local v1, "simState":I
    packed-switch v1, :pswitch_data_0

    .line 82
    :goto_0
    return v0

    :pswitch_0
    move v0, v3

    .line 72
    goto :goto_0

    .line 78
    .end local v1    # "simState":I
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/sim/MultiSimManagerFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/sim/MultiSimManagerInterface;

    move-result-object v4

    invoke-interface {v4, v2, p0}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/sim/MultiSimManagerInterface;->getSimState(Landroid/telephony/TelephonyManager;I)I

    move-result v1

    .line 79
    .restart local v1    # "simState":I
    sget-object v4, Lcom/samsung/android/hostmanager/callforward/LMultiSimManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "simState for ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] slot ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/4 v4, 0x5

    if-ne v1, v4, :cond_1

    .line 81
    .local v0, "res":Z
    :goto_1
    sget-object v3, Lcom/samsung/android/hostmanager/callforward/LMultiSimManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSimExists result ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "res":Z
    :cond_1
    move v0, v3

    .line 80
    goto :goto_1

    .line 68
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
