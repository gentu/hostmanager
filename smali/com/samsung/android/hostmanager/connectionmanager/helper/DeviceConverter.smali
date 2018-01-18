.class public Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;
.super Ljava/lang/Object;
.source "DeviceConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToBluetoothDevice(Landroid/os/Bundle;)Landroid/bluetooth/BluetoothDevice;
    .locals 3
    .param p0, "itemBundle"    # Landroid/os/Bundle;

    .prologue
    .line 106
    if-nez p0, :cond_1

    .line 107
    const/4 v1, 0x0

    .line 116
    :cond_0
    :goto_0
    return-object v1

    .line 109
    :cond_1
    const-string v2, "BUNDLE_PARCELABLE_BLUETOOTHDEVICE"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 111
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v1, :cond_0

    .line 114
    const-string v2, "BUNDLE_STRING_ADDRESS"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->getBluetoothDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    goto :goto_0
.end method

.method public static convertToBluetoothDevice(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 2
    .param p0, "wearableDevice"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .prologue
    .line 144
    if-nez p0, :cond_1

    .line 145
    const/4 v1, 0x0

    .line 154
    :cond_0
    :goto_0
    return-object v1

    .line 147
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 149
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v1, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->getBluetoothDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    goto :goto_0
.end method

.method public static convertToItemBundle(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;
    .locals 6
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 49
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 51
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v4, "BUNDLE_STRING_ADDRESS"

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const/4 v3, 0x0

    .line 55
    .local v3, "isEnabled":Z
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 57
    .local v1, "btAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    .line 60
    :cond_0
    const/4 v4, 0x1

    if-ne v4, v3, :cond_1

    .line 61
    const-string v4, "BUNDLE_STRING_NAME"

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    .line 65
    .local v0, "bondState":I
    packed-switch v0, :pswitch_data_0

    .line 85
    .end local v0    # "bondState":I
    :goto_0
    const-string v4, "BUNDLE_STRING_LINKFEATURE"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v4, "BUNDLE_PARCELABLE_BLUETOOTHDEVICE"

    invoke-virtual {v2, v4, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 90
    return-object v2

    .line 67
    .restart local v0    # "bondState":I
    :pswitch_0
    const-string v4, "BUNDLE_STRING_BONDSTATE"

    const-string v5, "NONE"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :pswitch_1
    const-string v4, "BUNDLE_STRING_BONDSTATE"

    const-string v5, "BONDING"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :pswitch_2
    const-string v4, "BUNDLE_STRING_BONDSTATE"

    const-string v5, "BONDED"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 80
    .end local v0    # "bondState":I
    :cond_1
    const-string v4, "BUNDLE_STRING_NAME"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v4, "BUNDLE_STRING_BONDSTATE"

    const-string v5, "NONE"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static convertToItemBundle(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Landroid/os/Bundle;
    .locals 4
    .param p0, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .prologue
    .line 27
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 29
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "address":Ljava/lang/String;
    const-string v2, "BUNDLE_STRING_ADDRESS"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v2, "BUNDLE_STRING_NAME"

    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v2, "BUNDLE_STRING_LINKFEATURE"

    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getLinkFeature()Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v2, "BUNDLE_STRING_BONDSTATE"

    const-string v3, "NONE"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v2, "BUNDLE_PARCELABLE_BLUETOOTHDEVICE"

    invoke-static {v0}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->getBluetoothDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 37
    return-object v1
.end method

.method public static convertToItemBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 94
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 96
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "BUNDLE_STRING_ADDRESS"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v1, "BUNDLE_STRING_NAME"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v1, "BUNDLE_STRING_LINKFEATURE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v1, "BUNDLE_STRING_BONDSTATE"

    const-string v2, "NONE"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v1, "BUNDLE_PARCELABLE_BLUETOOTHDEVICE"

    invoke-static {p0}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->getBluetoothDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 102
    return-object v0
.end method

.method public static convertToWearableDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    .locals 5
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v3, 0x0

    .line 159
    if-nez p0, :cond_0

    move-object v2, v3

    .line 182
    :goto_0
    return-object v2

    .line 162
    :cond_0
    new-instance v2, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    invoke-direct {v2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;-><init>()V

    .line 165
    .local v2, "wearableDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    const/4 v1, 0x0

    .line 166
    .local v1, "isEnabled":Z
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 168
    .local v0, "btAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_1

    .line 169
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    .line 171
    :cond_1
    const/4 v4, 0x1

    if-ne v4, v1, :cond_2

    .line 172
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->setName(Ljava/lang/String;)V

    .line 178
    :goto_1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->setAddress(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->setLinkFeature(Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;)V

    .line 180
    invoke-virtual {v2, p0}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->setBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 175
    :cond_2
    const-string v4, ""

    invoke-virtual {v2, v4}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->setName(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static convertToWearableDevice(Landroid/os/Bundle;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    .locals 5
    .param p0, "itemBundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 120
    if-nez p0, :cond_0

    move-object v2, v3

    .line 140
    :goto_0
    return-object v2

    .line 123
    :cond_0
    new-instance v2, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    invoke-direct {v2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;-><init>()V

    .line 125
    .local v2, "device":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    const-string v4, "BUNDLE_STRING_ADDRESS"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "address":Ljava/lang/String;
    invoke-virtual {v2, v0}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->setAddress(Ljava/lang/String;)V

    .line 128
    const-string v4, "BUNDLE_STRING_NAME"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->setName(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->setLinkFeature(Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;)V

    .line 131
    const-string v3, "BUNDLE_PARCELABLE_BLUETOOTHDEVICE"

    .line 132
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 134
    .local v1, "bDevice":Landroid/bluetooth/BluetoothDevice;
    if-nez v1, :cond_1

    .line 135
    invoke-static {v0}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->getBluetoothDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 138
    :cond_1
    invoke-virtual {v2, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->setBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0
.end method

.method public static convertToWearableDevice(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    .locals 6
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 187
    if-nez p0, :cond_0

    move-object v3, v4

    .line 211
    :goto_0
    return-object v3

    .line 190
    :cond_0
    new-instance v3, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    invoke-direct {v3}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;-><init>()V

    .line 191
    .local v3, "wearableDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    invoke-static {p0}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->getBluetoothDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 194
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    const/4 v2, 0x0

    .line 195
    .local v2, "isEnabled":Z
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 197
    .local v0, "btAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_1

    .line 198
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    .line 200
    :cond_1
    if-eqz v1, :cond_2

    const/4 v5, 0x1

    if-ne v5, v2, :cond_2

    .line 201
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->setName(Ljava/lang/String;)V

    .line 207
    :goto_1
    invoke-virtual {v3, p0}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->setAddress(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->setLinkFeature(Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;)V

    .line 209
    invoke-virtual {v3, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->setBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 204
    :cond_2
    const-string v5, ""

    invoke-virtual {v3, v5}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->setName(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static getBluetoothDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .locals 3
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 18
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 23
    :goto_0
    return-object v1

    .line 21
    :cond_1
    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 23
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    goto :goto_0
.end method
