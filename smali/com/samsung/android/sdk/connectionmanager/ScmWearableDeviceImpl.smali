.class final Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;
.super Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
.source "ScmWearableDeviceImpl.java"


# instance fields
.field private mBundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;->mBundle:Landroid/os/Bundle;

    .line 16
    iput-object p1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;->mBundle:Landroid/os/Bundle;

    .line 17
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 57
    if-ne p0, p1, :cond_1

    .line 58
    const/4 v0, 0x1

    .line 69
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 61
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;

    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;->getBTAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;->getBTAddress()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;->getBTAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getBTAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;->mBundle:Landroid/os/Bundle;

    const-string v1, "BUNDLE_STRING_ADDRESS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getBTBondState()I
    .locals 4

    .prologue
    .line 84
    iget-object v2, p0, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;->mBundle:Landroid/os/Bundle;

    if-nez v2, :cond_0

    .line 85
    sget-object v2, Lcom/samsung/android/sdk/connectionmanager/ScmController$BondState;->NONE:Lcom/samsung/android/sdk/connectionmanager/ScmController$BondState;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/connectionmanager/ScmController$BondState;->value()I

    move-result v2

    .line 97
    :goto_0
    return v2

    .line 88
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;->mBundle:Landroid/os/Bundle;

    const-string v3, "BUNDLE_STRING_BONDSTATE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "str":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Lcom/samsung/android/sdk/connectionmanager/ScmController$BondState;->valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/connectionmanager/ScmController$BondState;

    move-result-object v0

    .line 93
    .local v0, "state":Lcom/samsung/android/sdk/connectionmanager/ScmController$BondState;
    invoke-virtual {v0}, Lcom/samsung/android/sdk/connectionmanager/ScmController$BondState;->value()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 94
    .end local v0    # "state":Lcom/samsung/android/sdk/connectionmanager/ScmController$BondState;
    :catch_0
    move-exception v2

    .line 97
    sget-object v2, Lcom/samsung/android/sdk/connectionmanager/ScmController$BondState;->NONE:Lcom/samsung/android/sdk/connectionmanager/ScmController$BondState;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/connectionmanager/ScmController$BondState;->value()I

    move-result v2

    goto :goto_0
.end method

.method public getBTCOD()I
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;->mBundle:Landroid/os/Bundle;

    const-string v1, "BUNDLE_INT_COD"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getBTDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 75
    const/4 v0, 0x0

    .line 78
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;->mBundle:Landroid/os/Bundle;

    const-string v1, "BUNDLE_PARCELABLE_BLUETOOTHDEVICE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    goto :goto_0
.end method

.method public getBTLinkFeature()I
    .locals 4

    .prologue
    .line 38
    iget-object v2, p0, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;->mBundle:Landroid/os/Bundle;

    if-nez v2, :cond_0

    .line 39
    sget-object v2, Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;->LINK_EDR:Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;->value()I

    move-result v2

    .line 51
    :goto_0
    return v2

    .line 42
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;->mBundle:Landroid/os/Bundle;

    const-string v3, "BUNDLE_STRING_LINKFEATURE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "str":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;->valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;

    move-result-object v0

    .line 47
    .local v0, "feature":Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;
    invoke-virtual {v0}, Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;->value()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 48
    .end local v0    # "feature":Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;
    :catch_0
    move-exception v2

    .line 51
    sget-object v2, Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;->LINK_EDR:Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;->value()I

    move-result v2

    goto :goto_0
.end method

.method public getBTName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;->mBundle:Landroid/os/Bundle;

    const-string v1, "BUNDLE_STRING_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getBTRSSI()I
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;->mBundle:Landroid/os/Bundle;

    const-string v1, "BUNDLE_INT_RSSI"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getDeviceBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method
