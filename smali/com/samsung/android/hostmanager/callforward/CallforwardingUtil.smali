.class public Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil;
.super Ljava/lang/Object;
.source "CallforwardingUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil$ReadValues;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mReadValues:Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil$ReadValues;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HM:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil;->TAG:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil;->mReadValues:Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil$ReadValues;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static compareValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "v1"    # Ljava/lang/String;
    .param p1, "v2"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 214
    invoke-static {p0}, Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil;->isEmptyValue(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p1}, Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil;->isEmptyValue(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move v2, v3

    .line 222
    :cond_1
    :goto_0
    return v2

    .line 217
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 220
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 221
    .local v0, "int_v1":I
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 222
    .local v1, "int_v2":I
    if-eq v0, v1, :cond_1

    move v2, v3

    goto :goto_0
.end method

.method public static getIsCheckedMultiSim(Ljava/lang/String;)Z
    .locals 4
    .param p0, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 203
    invoke-static {}, Lcom/samsung/android/hostmanager/service/IUHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/IUHostManager;

    move-result-object v1

    const-string v2, "gear_number_pref"

    const-string v3, "multisim_select_pref"

    invoke-virtual {v1, p0, v2, v3}, Lcom/samsung/android/hostmanager/service/IUHostManager;->getPreferenceWithFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "checkedMultisim":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIsCheckedMultiSim() - checkedMultisim : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static getTestMCC()Ljava/lang/String;
    .locals 4

    .prologue
    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, "testMCC":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->DEBUGGABLE()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil;->getValueFromFile(I)Ljava/lang/String;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_1

    .line 132
    sget-object v1, Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "testMCC = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    :goto_0
    return-object v0

    .line 134
    :cond_1
    sget-object v1, Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil;->TAG:Ljava/lang/String;

    const-string v2, "testMCC is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getTestMNC()Ljava/lang/String;
    .locals 4

    .prologue
    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, "testMNC":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->DEBUGGABLE()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil;->getValueFromFile(I)Ljava/lang/String;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_1

    .line 146
    sget-object v1, Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "testMNC = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    :goto_0
    return-object v0

    .line 148
    :cond_1
    sget-object v1, Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil;->TAG:Ljava/lang/String;

    const-string v2, "testMNC is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getValueFromFile(I)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # I

    .prologue
    .line 107
    const/4 v0, 0x0

    .line 109
    .local v0, "values":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil;->mReadValues:Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil$ReadValues;

    if-nez v1, :cond_0

    .line 110
    new-instance v1, Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil$ReadValues;

    invoke-direct {v1}, Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil$ReadValues;-><init>()V

    sput-object v1, Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil;->mReadValues:Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil$ReadValues;

    .line 113
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 124
    :goto_0
    return-object v0

    .line 115
    :pswitch_0
    sget-object v1, Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil;->mReadValues:Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil$ReadValues;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil$ReadValues;->getMCC()Ljava/lang/String;

    move-result-object v0

    .line 116
    goto :goto_0

    .line 118
    :pswitch_1
    sget-object v1, Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil;->mReadValues:Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil$ReadValues;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil$ReadValues;->getMNC()Ljava/lang/String;

    move-result-object v0

    .line 119
    goto :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getWearableMCC(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 156
    sget-object v3, Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil;->TAG:Ljava/lang/String;

    const-string v4, "getWearableMCC()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-static {}, Lcom/samsung/android/hostmanager/service/IUHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/IUHostManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/samsung/android/hostmanager/service/IUHostManager;->getWearableStatus(Ljava/lang/String;)Lcom/samsung/android/hostmanager/aidl/DeviceInfo;

    move-result-object v0

    .line 158
    .local v0, "mDeviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    const/4 v2, 0x0

    .line 160
    .local v2, "wearableMCC":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getMCC()Ljava/lang/String;

    move-result-object v2

    .line 163
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->DEBUGGABLE()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 164
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil;->getTestMCC()Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "testMCC":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 166
    sget-object v3, Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "testMCC = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    move-object v2, v1

    .line 174
    .end local v1    # "testMCC":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 169
    .restart local v1    # "testMCC":Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil;->TAG:Ljava/lang/String;

    const-string v4, "testMCC is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getWearableMNC(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 178
    sget-object v3, Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil;->TAG:Ljava/lang/String;

    const-string v4, "getWearableMNC()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-static {}, Lcom/samsung/android/hostmanager/service/IUHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/IUHostManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/samsung/android/hostmanager/service/IUHostManager;->getWearableStatus(Ljava/lang/String;)Lcom/samsung/android/hostmanager/aidl/DeviceInfo;

    move-result-object v0

    .line 181
    .local v0, "mDeviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    const/4 v2, 0x0

    .line 183
    .local v2, "wearableMNC":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getMNC()Ljava/lang/String;

    move-result-object v2

    .line 186
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->DEBUGGABLE()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 187
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil;->getTestMNC()Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, "testMNC":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 189
    sget-object v3, Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "testMNC = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    move-object v2, v1

    .line 196
    .end local v1    # "testMNC":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 192
    .restart local v1    # "testMNC":Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil;->TAG:Ljava/lang/String;

    const-string v4, "testMNC is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isEmptyValue(Ljava/lang/String;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 210
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
