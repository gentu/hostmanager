.class public Lcom/samsung/android/app/watchmanager/plugin/selibrary/sim/MultiSimManager;
.super Ljava/lang/Object;
.source "MultiSimManager.java"

# interfaces
.implements Lcom/samsung/android/app/watchmanager/plugin/libinterface/sim/MultiSimManagerInterface;


# static fields
.field private static final DEFAULT_SUBSCRIPTION_ID:I = 0x7fffffff


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getSubIdUsingProperty(I)I
    .locals 12
    .param p1, "slotId"    # I

    .prologue
    const/4 v11, 0x1

    .line 207
    const/4 v2, 0x0

    .line 208
    .local v2, "propVal":Ljava/lang/String;
    const v5, 0x7fffffff

    .line 210
    .local v5, "subId":I
    const/4 v3, 0x0

    .line 211
    .local v3, "retObj":Ljava/lang/Object;
    const-string v7, "android.os.SemSystemProperties"

    invoke-static {v7}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/ReflectUtil;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 212
    .local v0, "SemSystemProperties":Ljava/lang/Class;
    if-eqz v0, :cond_0

    .line 213
    const-string v7, "get"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "ril.subinfo"

    aput-object v10, v8, v9

    const-string v9, ""

    aput-object v9, v8, v11

    invoke-static {v0, v7, v8}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/ReflectUtil;->callMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "retObj":Ljava/lang/Object;
    :cond_0
    move-object v1, v3

    .line 216
    check-cast v1, Ljava/lang/String;

    .line 217
    .local v1, "prop":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 218
    const-string v7, ","

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 219
    .local v6, "values":[Ljava/lang/String;
    if-ltz p1, :cond_1

    array-length v7, v6

    if-ge p1, v7, :cond_1

    aget-object v7, v6, p1

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 220
    aget-object v2, v6, p1

    .line 224
    .end local v6    # "values":[Ljava/lang/String;
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 225
    const-string v7, ":"

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 226
    .local v4, "retStr":[Ljava/lang/String;
    if-ltz p1, :cond_2

    array-length v7, v4

    if-ge p1, v7, :cond_2

    aget-object v7, v4, p1

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 227
    aget-object v7, v4, v11

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 231
    .end local v4    # "retStr":[Ljava/lang/String;
    :cond_2
    return v5
.end method


# virtual methods
.method public SIMSLOT1()I
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    return v0
.end method

.method public SIMSLOT1(Landroid/telephony/SubscriptionManager;I)I
    .locals 2
    .param p1, "sm"    # Landroid/telephony/SubscriptionManager;
    .param p2, "simId"    # I

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/sim/MultiSimManager;->getSubscriptionId(Landroid/telephony/SubscriptionManager;I)[I

    move-result-object v0

    .line 24
    .local v0, "subId":[I
    const/4 v1, 0x0

    aget v1, v0, v1

    return v1
.end method

.method public SIMSLOT2()I
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method public SIMSLOT2(Landroid/telephony/SubscriptionManager;I)I
    .locals 2
    .param p1, "sm"    # Landroid/telephony/SubscriptionManager;
    .param p2, "simId"    # I

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/sim/MultiSimManager;->getSubscriptionId(Landroid/telephony/SubscriptionManager;I)[I

    move-result-object v0

    .line 35
    .local v0, "subId":[I
    const/4 v1, 0x0

    aget v1, v0, v1

    return v1
.end method

.method public TYPE_DATA()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x3

    return v0
.end method

.method public TYPE_DEFAULT()I
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public TYPE_SMS()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x2

    return v0
.end method

.method public TYPE_VOICE()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public getCallState(I)I
    .locals 1
    .param p1, "slot"    # I

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public getCallState(Landroid/telephony/TelephonyManager;I)I
    .locals 5
    .param p1, "tm"    # Landroid/telephony/TelephonyManager;
    .param p2, "slot"    # I

    .prologue
    .line 105
    const-string v1, "semGetCallState"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p1, v1, v2}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/ReflectUtil;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 106
    .local v0, "retObj":Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    .end local v0    # "retObj":Ljava/lang/Object;
    :goto_0
    return v1

    .restart local v0    # "retObj":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "retObj":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getCurrentPhoneType(I)I
    .locals 1
    .param p1, "slot"    # I

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPhoneType(Landroid/telephony/TelephonyManager;I)I
    .locals 1
    .param p1, "tm"    # Landroid/telephony/TelephonyManager;
    .param p2, "subId"    # I

    .prologue
    .line 75
    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public getDataState(Landroid/telephony/TelephonyManager;I)I
    .locals 5
    .param p1, "tm"    # Landroid/telephony/TelephonyManager;
    .param p2, "slotId"    # I

    .prologue
    .line 136
    const-string v1, "semGetDataState"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p1, v1, v2}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/ReflectUtil;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 137
    .local v0, "retObj":Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    .end local v0    # "retObj":Ljava/lang/Object;
    :goto_0
    return v1

    .restart local v0    # "retObj":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "retObj":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getDefaultSubscriptionId(I)I
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 142
    const-class v1, Landroid/telephony/SubscriptionManager;

    const-string v2, "semGetDefaultSubscriptionId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/ReflectUtil;->callMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 143
    .local v0, "retObj":Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    .end local v0    # "retObj":Ljava/lang/Object;
    :goto_0
    return v1

    .restart local v0    # "retObj":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "retObj":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getInsertedSimNum(Landroid/telephony/SubscriptionManager;)I
    .locals 4
    .param p1, "sm"    # Landroid/telephony/SubscriptionManager;

    .prologue
    .line 159
    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 162
    :goto_0
    return v1

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "GM/MultiSimManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " getInsertedSimNume : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLine1Number(I)Ljava/lang/String;
    .locals 1
    .param p1, "slot"    # I

    .prologue
    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLine1Number(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;
    .locals 1
    .param p1, "tm"    # Landroid/telephony/TelephonyManager;
    .param p2, "subId"    # I

    .prologue
    .line 85
    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperator(I)Ljava/lang/String;
    .locals 1
    .param p1, "slot"    # I

    .prologue
    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSimOperator(Landroid/telephony/SubscriptionManager;I)Ljava/lang/String;
    .locals 4
    .param p1, "sm"    # Landroid/telephony/SubscriptionManager;
    .param p2, "subId"    # I

    .prologue
    .line 122
    invoke-virtual {p1, p2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 123
    .local v0, "info":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "mcc":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "mnc":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getSimSlotCount(Landroid/telephony/TelephonyManager;)I
    .locals 1
    .param p1, "tm"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 153
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    return v0
.end method

.method public getSimState(Landroid/telephony/TelephonyManager;I)I
    .locals 5
    .param p1, "tm"    # Landroid/telephony/TelephonyManager;
    .param p2, "slot"    # I

    .prologue
    .line 111
    const-string v1, "semGetSimState"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p1, v1, v2}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/ReflectUtil;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 112
    .local v0, "retObj":Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    .end local v0    # "retObj":Ljava/lang/Object;
    :goto_0
    return v1

    .restart local v0    # "retObj":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "retObj":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getSlotId(I)I
    .locals 6
    .param p1, "subId"    # I

    .prologue
    .line 130
    const-class v1, Landroid/telephony/SubscriptionManager;

    const-string v2, "semGetSlotId"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/ReflectUtil;->callMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 131
    .local v0, "retObj":Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    .end local v0    # "retObj":Ljava/lang/Object;
    :goto_0
    return v1

    .restart local v0    # "retObj":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "retObj":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getSubscriberId(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;
    .locals 6
    .param p1, "tm"    # Landroid/telephony/TelephonyManager;
    .param p2, "slotId"    # I

    .prologue
    .line 174
    invoke-direct {p0, p2}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/sim/MultiSimManager;->getSubIdUsingProperty(I)I

    move-result v1

    .line 175
    .local v1, "subId":I
    const-string v2, "getSubscriberId"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p1, v2, v3}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/ReflectUtil;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 176
    .local v0, "retObj":Ljava/lang/Object;
    if-nez v0, :cond_0

    const-string v0, ""

    .end local v0    # "retObj":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "retObj":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getSubscriptionId(Landroid/telephony/SubscriptionManager;I)[I
    .locals 4
    .param p1, "sm"    # Landroid/telephony/SubscriptionManager;
    .param p2, "slotId"    # I

    .prologue
    .line 195
    const/4 v1, -0x1

    .line 196
    .local v1, "subId":I
    if-eqz p1, :cond_0

    .line 197
    invoke-virtual {p1, p2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 198
    .local v2, "subscriptionInfos":Landroid/telephony/SubscriptionInfo;
    if-eqz v2, :cond_0

    .line 199
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 202
    .end local v2    # "subscriptionInfos":Landroid/telephony/SubscriptionInfo;
    :cond_0
    const/4 v3, 0x1

    new-array v0, v3, [I

    const/4 v3, 0x0

    aput v1, v0, v3

    .line 203
    .local v0, "calcId":[I
    return-object v0
.end method

.method public getSubscriptionManager(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    return-object v0
.end method

.method public getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "slotId"    # I
    .param p3, "defaultVal"    # Ljava/lang/String;

    .prologue
    .line 181
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string v2, "semGetTelephonyProperty"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/ReflectUtil;->callMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 182
    .local v0, "retObj":Ljava/lang/Object;
    if-nez v0, :cond_0

    const-string v0, ""

    .end local v0    # "retObj":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "retObj":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public hasIccCard(Landroid/telephony/TelephonyManager;I)Z
    .locals 5
    .param p1, "tm"    # Landroid/telephony/TelephonyManager;
    .param p2, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    .line 168
    const-string v2, "semHasIccCard"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p1, v2, v3}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/ReflectUtil;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 169
    .local v0, "retObj":Ljava/lang/Object;
    if-nez v0, :cond_0

    .end local v0    # "retObj":Ljava/lang/Object;
    :goto_0
    return v1

    .restart local v0    # "retObj":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "retObj":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method public isMultiSimSlot(Landroid/telephony/TelephonyManager;)Z
    .locals 2
    .param p1, "tm"    # Landroid/telephony/TelephonyManager;

    .prologue
    const/4 v0, 0x1

    .line 148
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNetworkRoaming(I)Z
    .locals 1
    .param p1, "slot"    # I

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public isNetworkRoaming(Landroid/telephony/TelephonyManager;I)Z
    .locals 1
    .param p1, "tm"    # Landroid/telephony/TelephonyManager;
    .param p2, "subId"    # I

    .prologue
    .line 95
    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    return v0
.end method
