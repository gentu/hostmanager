.class public Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
.super Ljava/lang/Object;
.source "AutoConnectSet.java"


# static fields
.field private static final BLUETOOTH_VER_UNKOWN:I

.field private static final RECOVERY_FIRST_CONNECTION_RETRY:I


# instance fields
.field private hostBluetoothVersion:I

.field private isDeviceSetDone:Z

.field private isRandomLe:Z

.field private isRandomLeUpdated:Z

.field private mAutoConnector:Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;

.field private mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

.field private mGattObjectTry:I

.field private mIsAutoConnection:Z

.field private mIsAutoConnectionEnable:Z

.field private mIsFirstAttempt:Z

.field private mIsGearSupportRandomLE:Z

.field private mIsHostSuppportRandomLE:Z

.field private mIsReceivedRSSIValue:Z

.field private mIsRemoteFlag:Z

.field private mMutex:Ljava/lang/Object;

.field private mRSSICheckerState:I

.field private mRecoveryFlag:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->mMutex:Ljava/lang/Object;

    .line 48
    iput-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 49
    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->mIsAutoConnection:Z

    .line 50
    iput v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->mGattObjectTry:I

    .line 51
    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->mIsReceivedRSSIValue:Z

    .line 52
    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->mIsRemoteFlag:Z

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->mIsFirstAttempt:Z

    .line 54
    iput v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->mRSSICheckerState:I

    .line 55
    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->mRecoveryFlag:Z

    .line 58
    iput-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->mAutoConnector:Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;

    .line 59
    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->mIsAutoConnectionEnable:Z

    .line 61
    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->isRandomLeUpdated:Z

    .line 62
    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->isRandomLe:Z

    .line 64
    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->isDeviceSetDone:Z

    .line 66
    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->mIsGearSupportRandomLE:Z

    .line 67
    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->mIsHostSuppportRandomLE:Z

    .line 68
    iput v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->hostBluetoothVersion:I

    .line 69
    return-void
.end method


# virtual methods
.method public getAutoConnectionFlag()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->mIsAutoConnection:Z

    return v0
.end method

.method public getAutoConnector()Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->mAutoConnector:Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;

    return-object v0
.end method

.method public getAutoConnectorEnabled()Z
    .locals 2

    .prologue
    .line 159
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 160
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->mIsAutoConnectionEnable:Z

    monitor-exit v1

    return v0

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method public getGattObjectTryCnt()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->mGattObjectTry:I

    return v0
.end method

.method public getIsFirstAttempt()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->mIsFirstAttempt:Z

    return v0
.end method

.method public getRSSICheckerState()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->mRSSICheckerState:I

    return v0
.end method

.method public getRSSIVFlag()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->mIsReceivedRSSIValue:Z

    return v0
.end method

.method public getRecoveryFlag()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->mRecoveryFlag:Z

    return v0
.end method

.method public getRemoteFlag()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->mIsRemoteFlag:Z

    return v0
.end method

.method public gethostBluetoothVersion()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->hostBluetoothVersion:I

    return v0
.end method

.method public isDeviceSetDone()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->isDeviceSetDone:Z

    return v0
.end method

.method public isGearSupportRandomLE()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->mIsGearSupportRandomLE:Z

    return v0
.end method

.method public isHostSupportRandomLE()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->mIsHostSuppportRandomLE:Z

    return v0
.end method

.method public isRandomLe()Z
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->isRandomLe:Z

    return v0
.end method

.method public isRandomLeUpdated()Z
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->isRandomLeUpdated:Z

    return v0
.end method

.method public setAutoConnectionFlag(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->mIsAutoConnection:Z

    .line 85
    return-void
.end method

.method public setAutoConnector(Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;)V
    .locals 0
    .param p1, "AutoConnector"    # Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->mAutoConnector:Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;

    .line 114
    return-void
.end method

.method public setAutoConnectorEnabled(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 117
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 118
    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->mIsAutoConnectionEnable:Z

    .line 119
    monitor-exit v1

    .line 120
    return-void

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBluetoothGatt(Landroid/bluetooth/BluetoothGatt;)V
    .locals 0
    .param p1, "bluetoothGatt"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 81
    return-void
.end method

.method public setDeviceSetDone(Z)V
    .locals 0
    .param p1, "isDeviceSetDone"    # Z

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->isDeviceSetDone:Z

    .line 201
    return-void
.end method

.method public setGattObjectTryCnt(I)V
    .locals 0
    .param p1, "cnt"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->mGattObjectTry:I

    .line 89
    return-void
.end method

.method public setIsFirstAttempt(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->mIsFirstAttempt:Z

    .line 101
    return-void
.end method

.method public setRSSICheckerState(I)V
    .locals 0
    .param p1, "flag"    # I

    .prologue
    .line 104
    iput p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->mRSSICheckerState:I

    .line 105
    return-void
.end method

.method public setRSSIVFlag(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->mIsReceivedRSSIValue:Z

    .line 93
    return-void
.end method

.method public setRandomLeUpdated(Z)V
    .locals 0
    .param p1, "isRandomLeUpdated"    # Z

    .prologue
    .line 181
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->isRandomLeUpdated:Z

    .line 182
    return-void
.end method

.method public setRandomLeValues(ZZZI)V
    .locals 0
    .param p1, "isRandomLe"    # Z
    .param p2, "isGearSupportRandomLE"    # Z
    .param p3, "isHostSupportRandomLE"    # Z
    .param p4, "hostBluetoothVersion"    # I

    .prologue
    .line 189
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->isRandomLe:Z

    .line 190
    iput-boolean p2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->mIsGearSupportRandomLE:Z

    .line 191
    iput-boolean p3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->mIsHostSuppportRandomLE:Z

    .line 192
    iput p4, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->hostBluetoothVersion:I

    .line 193
    return-void
.end method

.method public setRecoveryFlag(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->mRecoveryFlag:Z

    .line 109
    return-void
.end method

.method public setRemoteFlag(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->mIsRemoteFlag:Z

    .line 97
    return-void
.end method
