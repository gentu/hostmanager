.class public abstract Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;
.super Ljava/lang/Object;
.source "RecoveryHandler.java"


# static fields
.field protected static REMOTE_USER_DISCONNECTION:I = 0x0

.field protected static SCS_MAX_RECOVERY_TRY_COUNT:I = 0x0

.field protected static SPP_MAX_RECOVERY_TRY_COUNT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RecoveryHandler"


# instance fields
.field protected AUTH_FAIL:I

.field protected BREDR_LINK_TYPE:I

.field protected CHIP_SET_ERROR:I

.field protected CONNECTION_ACCEPT_TIME_OUT_EXCEEDED:I

.field protected CONN_FAILED_TO_BE_EASTABLISHED:I

.field protected GATT_SUCCESS:I

.field protected LE_LINK_TYPE:I

.field protected LOCAL_USER_DISCONNECTION:I

.field protected REASON_LINK_LOSS:I

.field protected SCSdelay:I

.field protected USER_REMOVED_BOND:I

.field protected mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field protected mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

.field protected mContext:Landroid/content/Context;

.field protected scsRecoveryTryCnt:I

.field protected sppRecoveryTryCnt:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x2

    sput v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;->SPP_MAX_RECOVERY_TRY_COUNT:I

    .line 22
    const/16 v0, 0x4a

    sput v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;->SCS_MAX_RECOVERY_TRY_COUNT:I

    .line 30
    const/16 v0, 0x13

    sput v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;->REMOTE_USER_DISCONNECTION:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/16 v0, 0x10

    iput v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;->CONNECTION_ACCEPT_TIME_OUT_EXCEEDED:I

    .line 26
    const/16 v0, 0x8

    iput v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;->REASON_LINK_LOSS:I

    .line 28
    const/16 v0, 0x16

    iput v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;->LOCAL_USER_DISCONNECTION:I

    .line 32
    const/16 v0, 0x3e

    iput v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;->CONN_FAILED_TO_BE_EASTABLISHED:I

    .line 34
    const/16 v0, 0x44

    iput v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;->USER_REMOVED_BOND:I

    .line 36
    const/16 v0, 0x22

    iput v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;->CHIP_SET_ERROR:I

    .line 38
    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;->AUTH_FAIL:I

    .line 40
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;->LE_LINK_TYPE:I

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;->BREDR_LINK_TYPE:I

    .line 44
    iput v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;->GATT_SUCCESS:I

    .line 46
    iput v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;->sppRecoveryTryCnt:I

    .line 48
    iput v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;->scsRecoveryTryCnt:I

    .line 50
    iput v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;->SCSdelay:I

    .line 52
    iput-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .line 56
    iput-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getRemoteDisconnectReasonCode()I
    .locals 1

    .prologue
    .line 92
    sget v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;->REMOTE_USER_DISCONNECTION:I

    return v0
.end method


# virtual methods
.method public abstract close()V
.end method

.method protected connectAllProfile(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 205
    if-nez p1, :cond_0

    .line 206
    const-string v2, "RecoveryHandler"

    const-string v3, "connectAllProfile device is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :goto_0
    return-void

    .line 210
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 212
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v1

    .line 213
    .local v1, "itemBundle":Landroid/os/Bundle;
    const-string v2, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 214
    const-string v2, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ALL:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v2, "RecoveryHandler"

    const-string v3, "[CMAC] establish connection with BT Profile(SPP & HFP)"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    const/16 v3, 0x15

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected disconnectAllProfile(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 182
    if-nez p1, :cond_0

    .line 183
    const-string v2, "RecoveryHandler"

    const-string v3, "disconnectAllProfile device is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :goto_0
    return-void

    .line 187
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 189
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v1

    .line 190
    .local v1, "itemBundle":Landroid/os/Bundle;
    const-string v2, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 191
    const-string v2, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ALL:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v2, "RecoveryHandler"

    const-string v3, "[CMAC] request disconnect ALL profile"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    const/16 v3, 0x24

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    .locals 1
    .param p1, "macAddr"    # Ljava/lang/String;

    .prologue
    .line 70
    if-nez p1, :cond_0

    .line 71
    const/4 v0, 0x0

    .line 72
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getACDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v0

    goto :goto_0
.end method

.method protected getSCSdelay()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;->SCSdelay:I

    return v0
.end method

.method protected getScsRecoveryTryCnt()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;->scsRecoveryTryCnt:I

    return v0
.end method

.method protected getSppRecoveryTryCnt()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;->sppRecoveryTryCnt:I

    return v0
.end method

.method protected increaseSCSdelay()V
    .locals 2

    .prologue
    const/16 v1, 0x4b0

    .line 139
    iget v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;->SCSdelay:I

    if-nez v0, :cond_1

    .line 141
    const/16 v0, 0xf

    iput v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;->SCSdelay:I

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iget v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;->SCSdelay:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;->SCSdelay:I

    .line 146
    iget v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;->SCSdelay:I

    if-lt v0, v1, :cond_0

    .line 148
    iput v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;->SCSdelay:I

    goto :goto_0
.end method

.method protected increaseScsRecoveryTryCnt()V
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;->scsRecoveryTryCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;->scsRecoveryTryCnt:I

    .line 124
    return-void
.end method

.method protected increaseSppRecoveryTryCnt()V
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;->sppRecoveryTryCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;->sppRecoveryTryCnt:I

    .line 112
    return-void
.end method

.method protected initSCSdelay()V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;->SCSdelay:I

    .line 133
    return-void
.end method

.method protected initScsRecoveryTryCnt()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;->scsRecoveryTryCnt:I

    .line 120
    return-void
.end method

.method protected initSppRecoveryTryCnt()V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;->sppRecoveryTryCnt:I

    .line 108
    return-void
.end method

.method public isAutoConnectionRunning(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v0

    .line 98
    .local v0, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-nez v0, :cond_0

    .line 99
    const-string v1, "RecoveryHandler"

    const-string v2, "[CMAC] isAutoConnectionRunning : deviceSet is null"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const/4 v1, 0x0

    .line 103
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getAutoConnectionFlag()Z

    move-result v1

    goto :goto_0
.end method

.method protected isMaxRecovertTryCnt(Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z
    .locals 4
    .param p1, "service"    # Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 158
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {p1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 159
    iget v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;->sppRecoveryTryCnt:I

    sget v3, Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;->SPP_MAX_RECOVERY_TRY_COUNT:I

    if-lt v2, v3, :cond_1

    .line 163
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 159
    goto :goto_0

    .line 160
    :cond_2
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {p1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    iget v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;->scsRecoveryTryCnt:I

    sget v3, Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;->SCS_MAX_RECOVERY_TRY_COUNT:I

    if-ge v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isScsRetryRecoveried()Z
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;->scsRecoveryTryCnt:I

    if-nez v0, :cond_0

    .line 175
    const/4 v0, 0x0

    .line 177
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSppRetryRecoveried()Z
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;->sppRecoveryTryCnt:I

    if-nez v0, :cond_0

    .line 168
    const/4 v0, 0x0

    .line 170
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public abstract sendCommandMessage(Landroid/bluetooth/BluetoothDevice;Landroid/os/Bundle;)V
.end method

.method protected updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V
    .locals 3
    .param p1, "macAddr"    # Ljava/lang/String;
    .param p2, "set"    # Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    .prologue
    .line 84
    const-string v0, "RecoveryHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CMAC] updateDataSet : Address is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    if-nez p1, :cond_0

    .line 89
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->updateACdeviceSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    goto :goto_0
.end method
