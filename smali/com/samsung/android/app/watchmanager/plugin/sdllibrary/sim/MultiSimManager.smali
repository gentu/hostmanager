.class public Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/sim/MultiSimManager;
.super Ljava/lang/Object;
.source "MultiSimManager.java"

# interfaces
.implements Lcom/samsung/android/app/watchmanager/plugin/libinterface/sim/MultiSimManagerInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public SIMSLOT1()I
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    return v0
.end method

.method public SIMSLOT1(Landroid/telephony/SubscriptionManager;I)I
    .locals 1
    .param p1, "sm"    # Landroid/telephony/SubscriptionManager;
    .param p2, "simId"    # I

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/sim/MultiSimManager;->SIMSLOT1()I

    move-result v0

    return v0
.end method

.method public SIMSLOT2()I
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x1

    return v0
.end method

.method public SIMSLOT2(Landroid/telephony/SubscriptionManager;I)I
    .locals 1
    .param p1, "sm"    # Landroid/telephony/SubscriptionManager;
    .param p2, "simId"    # I

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/sim/MultiSimManager;->SIMSLOT2()I

    move-result v0

    return v0
.end method

.method public TYPE_DATA()I
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x3

    return v0
.end method

.method public TYPE_DEFAULT()I
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public TYPE_SMS()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x2

    return v0
.end method

.method public TYPE_VOICE()I
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public getCallState(I)I
    .locals 1
    .param p1, "slot"    # I

    .prologue
    .line 95
    invoke-static {p1}, Lcom/samsung/android/telephony/MultiSimManager;->getCallState(I)I

    move-result v0

    return v0
.end method

.method public getCallState(Landroid/telephony/TelephonyManager;I)I
    .locals 1
    .param p1, "tm"    # Landroid/telephony/TelephonyManager;
    .param p2, "slot"    # I

    .prologue
    .line 100
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/sim/MultiSimManager;->getCallState(I)I

    move-result v0

    return v0
.end method

.method public getCurrentPhoneType(I)I
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 65
    invoke-static {p1}, Lcom/samsung/android/telephony/MultiSimManager;->getCurrentPhoneType(I)I

    move-result v0

    return v0
.end method

.method public getCurrentPhoneType(Landroid/telephony/TelephonyManager;I)I
    .locals 1
    .param p1, "tm"    # Landroid/telephony/TelephonyManager;
    .param p2, "slot"    # I

    .prologue
    .line 70
    invoke-static {p2}, Lcom/samsung/android/telephony/MultiSimManager;->getCurrentPhoneType(I)I

    move-result v0

    return v0
.end method

.method public getDataState(Landroid/telephony/TelephonyManager;I)I
    .locals 1
    .param p1, "tm"    # Landroid/telephony/TelephonyManager;
    .param p2, "slotId"    # I

    .prologue
    .line 125
    invoke-static {p2}, Lcom/samsung/android/telephony/MultiSimManager;->getDataState(I)I

    move-result v0

    return v0
.end method

.method public getDefaultSubscriptionId(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 130
    invoke-static {p1}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultSubscriptionId(I)I

    move-result v0

    return v0
.end method

.method public getInsertedSimNum(Landroid/telephony/SubscriptionManager;)I
    .locals 1
    .param p1, "sm"    # Landroid/telephony/SubscriptionManager;

    .prologue
    .line 145
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getInsertedSimCount()I

    move-result v0

    return v0
.end method

.method public getLine1Number(I)Ljava/lang/String;
    .locals 1
    .param p1, "slot"    # I

    .prologue
    .line 75
    invoke-static {p1}, Lcom/samsung/android/telephony/MultiSimManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1Number(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;
    .locals 1
    .param p1, "tm"    # Landroid/telephony/TelephonyManager;
    .param p2, "subId"    # I

    .prologue
    .line 80
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/sim/MultiSimManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperator(I)Ljava/lang/String;
    .locals 1
    .param p1, "slot"    # I

    .prologue
    .line 110
    invoke-static {p1}, Lcom/samsung/android/telephony/MultiSimManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperator(Landroid/telephony/SubscriptionManager;I)Ljava/lang/String;
    .locals 1
    .param p1, "sm"    # Landroid/telephony/SubscriptionManager;
    .param p2, "slot"    # I

    .prologue
    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSimSlotCount(Landroid/telephony/TelephonyManager;)I
    .locals 1
    .param p1, "tm"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 140
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v0

    return v0
.end method

.method public getSimState(Landroid/telephony/TelephonyManager;I)I
    .locals 1
    .param p1, "tm"    # Landroid/telephony/TelephonyManager;
    .param p2, "slot"    # I

    .prologue
    .line 105
    invoke-static {p2}, Lcom/samsung/android/telephony/MultiSimManager;->getSimState(I)I

    move-result v0

    return v0
.end method

.method public getSlotId(I)I
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 120
    invoke-static {p1}, Lcom/samsung/android/telephony/MultiSimManager;->getSlotId(I)I

    move-result v0

    return v0
.end method

.method public getSubscriberId(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;
    .locals 1
    .param p1, "tm"    # Landroid/telephony/TelephonyManager;
    .param p2, "slotId"    # I

    .prologue
    .line 155
    invoke-static {p2}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriptionId(Landroid/telephony/SubscriptionManager;I)[I
    .locals 1
    .param p1, "sm"    # Landroid/telephony/SubscriptionManager;
    .param p2, "slotId"    # I

    .prologue
    .line 165
    invoke-static {p2}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriptionId(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getSubscriptionManager(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    .line 58
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 60
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "slotId"    # I
    .param p3, "defaultVal"    # Ljava/lang/String;

    .prologue
    .line 160
    invoke-static {p1, p2, p3}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasIccCard(Landroid/telephony/TelephonyManager;I)Z
    .locals 1
    .param p1, "tm"    # Landroid/telephony/TelephonyManager;
    .param p2, "slotId"    # I

    .prologue
    .line 150
    invoke-static {p2}, Lcom/samsung/android/telephony/MultiSimManager;->hasIccCard(I)Z

    move-result v0

    return v0
.end method

.method public isMultiSimSlot(Landroid/telephony/TelephonyManager;)Z
    .locals 2
    .param p1, "tm"    # Landroid/telephony/TelephonyManager;

    .prologue
    const/4 v0, 0x1

    .line 135
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSimSlotCount()I

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
    .line 85
    invoke-static {p1}, Lcom/samsung/android/telephony/MultiSimManager;->isNetworkRoaming(I)Z

    move-result v0

    return v0
.end method

.method public isNetworkRoaming(Landroid/telephony/TelephonyManager;I)Z
    .locals 1
    .param p1, "tm"    # Landroid/telephony/TelephonyManager;
    .param p2, "subId"    # I

    .prologue
    .line 90
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/sim/MultiSimManager;->isNetworkRoaming(I)Z

    move-result v0

    return v0
.end method
