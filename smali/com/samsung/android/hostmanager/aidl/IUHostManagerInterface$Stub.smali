.class public abstract Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;
.super Landroid/os/Binder;
.source "IUHostManagerInterface.java"

# interfaces
.implements Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

.field static final TRANSACTION_backupWearable:I = 0x8

.field static final TRANSACTION_cancelFileonSending:I = 0x1b

.field static final TRANSACTION_cloudBackup:I = 0x18

.field static final TRANSACTION_cloudRestore:I = 0x19

.field static final TRANSACTION_connectWifiDirect:I = 0x5c

.field static final TRANSACTION_disconnectWifiDirect:I = 0x5d

.field static final TRANSACTION_forceConnectWifiDirect:I = 0x62

.field static final TRANSACTION_getAllBondedWearableDevices:I = 0x23

.field static final TRANSACTION_getAllWearableStatus:I = 0x4

.field static final TRANSACTION_getAppSettingString:I = 0x40

.field static final TRANSACTION_getAppsData:I = 0x4d

.field static final TRANSACTION_getAppsOrderSetup:I = 0x21

.field static final TRANSACTION_getBackupFolderPath:I = 0x6c

.field static final TRANSACTION_getBackupList:I = 0x16

.field static final TRANSACTION_getClocksSetup:I = 0x1e

.field static final TRANSACTION_getConnectedCMProxyState:I = 0x48

.field static final TRANSACTION_getConnectedType:I = 0x51

.field static final TRANSACTION_getConnectedWearableDevices:I = 0x22

.field static final TRANSACTION_getDefaultClockPkgName:I = 0x3a

.field static final TRANSACTION_getDefaultPDClassName:I = 0x39

.field static final TRANSACTION_getDeviceType:I = 0x52

.field static final TRANSACTION_getDevicesToSend:I = 0x2d

.field static final TRANSACTION_getFavoriteOrderSetup:I = 0x24

.field static final TRANSACTION_getFontsSetup:I = 0x55

.field static final TRANSACTION_getHomeBGImageNames:I = 0x44

.field static final TRANSACTION_getHomeBGImagePath:I = 0x45

.field static final TRANSACTION_getHostStatus:I = 0x6

.field static final TRANSACTION_getIMESetup:I = 0x65

.field static final TRANSACTION_getImageByteArray:I = 0x3e

.field static final TRANSACTION_getIsEulaPassed:I = 0x30

.field static final TRANSACTION_getIsRestoreEulaPassNeededDevice:I = 0x34

.field static final TRANSACTION_getIsfirstConnection:I = 0x4a

.field static final TRANSACTION_getLimitNotificationSetting:I = 0x2e

.field static final TRANSACTION_getMyAppsSetup:I = 0x1f

.field static final TRANSACTION_getNotificationInfo:I = 0x61

.field static final TRANSACTION_getNotificationMaxByte:I = 0x2b

.field static final TRANSACTION_getPreference:I = 0x38

.field static final TRANSACTION_getPreferenceWithFilename:I = 0x4e

.field static final TRANSACTION_getSHealthSupportInfo:I = 0x68

.field static final TRANSACTION_getSettingsSetup:I = 0x1c

.field static final TRANSACTION_getTTSSetup:I = 0x5f

.field static final TRANSACTION_getThreeGSettingValue:I = 0x50

.field static final TRANSACTION_getWappListPackageName:I = 0x35

.field static final TRANSACTION_getWearableInfo:I = 0x5b

.field static final TRANSACTION_getWearableInfoByDeviceId:I = 0x5e

.field static final TRANSACTION_getWearableList:I = 0x5a

.field static final TRANSACTION_getWearableStatus:I = 0x5

.field static final TRANSACTION_getinstalledAppType:I = 0x6a

.field static final TRANSACTION_initConnType:I = 0x4b

.field static final TRANSACTION_installApp:I = 0xd

.field static final TRANSACTION_installSpecialAppViaStub:I = 0x57

.field static final TRANSACTION_isConnected:I = 0x3f

.field static final TRANSACTION_isConnecting:I = 0x6b

.field static final TRANSACTION_isDownloadInProgress:I = 0x64

.field static final TRANSACTION_isNeedtoGetWallpaper:I = 0x43

.field static final TRANSACTION_manageConnectionInfo:I = 0x13

.field static final TRANSACTION_manageSetupInfo:I = 0x15

.field static final TRANSACTION_onSystemBackupRequest:I = 0x20

.field static final TRANSACTION_pushResultFileToHM:I = 0x41

.field static final TRANSACTION_registerEXAPPListener:I = 0x58

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_reinstallApp:I = 0x12

.field static final TRANSACTION_removeBackupData:I = 0xc

.field static final TRANSACTION_requestDBQuery:I = 0x17

.field static final TRANSACTION_requestTokenFromUI:I = 0x4f

.field static final TRANSACTION_requestWallpapertoWMS:I = 0x67

.field static final TRANSACTION_requestWearableToken:I = 0x54

.field static final TRANSACTION_reserved02:I = 0x27

.field static final TRANSACTION_reserved03:I = 0x3

.field static final TRANSACTION_reserved05:I = 0xf

.field static final TRANSACTION_reserved06:I = 0x1a

.field static final TRANSACTION_reserved07:I = 0xe

.field static final TRANSACTION_reserved08:I = 0x14

.field static final TRANSACTION_reserved09:I = 0x2f

.field static final TRANSACTION_reserved10:I = 0x3b

.field static final TRANSACTION_reserved11:I = 0x3c

.field static final TRANSACTION_reserved12:I = 0x3d

.field static final TRANSACTION_reservedBnR01:I = 0xa

.field static final TRANSACTION_reservedBnR02:I = 0xb

.field static final TRANSACTION_restoreWearable:I = 0x9

.field static final TRANSACTION_resumeConnect:I = 0x46

.field static final TRANSACTION_saveUnknownSourcesPermission:I = 0x36

.field static final TRANSACTION_sendEULAFinishMessage:I = 0x31

.field static final TRANSACTION_sendJSONDataFromApp:I = 0x28

.field static final TRANSACTION_sendSettingResultJSONDataFromApp:I = 0x29

.field static final TRANSACTION_setAddGalleryImage:I = 0x47

.field static final TRANSACTION_setClocksSetup:I = 0x25

.field static final TRANSACTION_setDeleteGalleryImage:I = 0x63

.field static final TRANSACTION_setFavoriteOrderSetup:I = 0x4c

.field static final TRANSACTION_setFontsSetup:I = 0x56

.field static final TRANSACTION_setHomeBGSettings:I = 0x42

.field static final TRANSACTION_setIMESetup:I = 0x66

.field static final TRANSACTION_setIsFirstConnection:I = 0x49

.field static final TRANSACTION_setMyAppsSetup:I = 0x26

.field static final TRANSACTION_setPreferenceWithFilename:I = 0x53

.field static final TRANSACTION_setSettingsSetup:I = 0x1d

.field static final TRANSACTION_setTTSSetup:I = 0x60

.field static final TRANSACTION_startReset:I = 0x33

.field static final TRANSACTION_startScan:I = 0x2a

.field static final TRANSACTION_startSytemRestore:I = 0x2c

.field static final TRANSACTION_stopRestore:I = 0x32

.field static final TRANSACTION_syncSHealthSupportInfo:I = 0x69

.field static final TRANSACTION_syncWearableStatus:I = 0x7

.field static final TRANSACTION_unRegisterEXAPPListener:I = 0x59

.field static final TRANSACTION_unRegisterListener:I = 0x2

.field static final TRANSACTION_uninstallApp:I = 0x10

.field static final TRANSACTION_updateApp:I = 0x11

.field static final TRANSACTION_updatePreference:I = 0x37


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 30
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 1210
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 42
    :sswitch_0
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v2, 0x1

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/hostmanager/aidl/IHostManagerListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;

    move-result-object v4

    .line 52
    .local v4, "_arg1":Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->registerListener(Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;)Z

    move-result v15

    .line 53
    .local v15, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    if-eqz v15, :cond_0

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    const/4 v2, 0x1

    goto :goto_0

    .line 54
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 59
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;
    .end local v15    # "_result":Z
    :sswitch_2
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 62
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->unRegisterListener(Ljava/lang/String;)Z

    move-result v15

    .line 63
    .restart local v15    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    if-eqz v15, :cond_1

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    const/4 v2, 0x1

    goto :goto_0

    .line 64
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 69
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v15    # "_result":Z
    :sswitch_3
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->reserved03()V

    .line 71
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    const/4 v2, 0x1

    goto :goto_0

    .line 76
    :sswitch_4
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->getAllWearableStatus()Ljava/util/List;

    move-result-object v20

    .line 78
    .local v20, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/DeviceInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 80
    const/4 v2, 0x1

    goto :goto_0

    .line 84
    .end local v20    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/DeviceInfo;>;"
    :sswitch_5
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 87
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->getWearableStatus(Ljava/lang/String;)Lcom/samsung/android/hostmanager/aidl/DeviceInfo;

    move-result-object v15

    .line 88
    .local v15, "_result":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v15, :cond_2

    .line 90
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v15, v0, v2}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 96
    :goto_3
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 94
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 100
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v15    # "_result":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    :sswitch_6
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->getHostStatus()Lcom/samsung/android/hostmanager/aidl/DeviceInfo;

    move-result-object v15

    .line 102
    .restart local v15    # "_result":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    if-eqz v15, :cond_3

    .line 104
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v15, v0, v2}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 110
    :goto_4
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 108
    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 114
    .end local v15    # "_result":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    :sswitch_7
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 117
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->syncWearableStatus(Ljava/lang/String;)Z

    move-result v15

    .line 118
    .local v15, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    if-eqz v15, :cond_4

    const/4 v2, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 119
    :cond_4
    const/4 v2, 0x0

    goto :goto_5

    .line 124
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v15    # "_result":Z
    :sswitch_8
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 128
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 130
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 131
    .local v5, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->backupWearable(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v15

    .line 132
    .restart local v15    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    if-eqz v15, :cond_5

    const/4 v2, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 133
    :cond_5
    const/4 v2, 0x0

    goto :goto_6

    .line 138
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v15    # "_result":Z
    :sswitch_9
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    .line 141
    sget-object v2, Lcom/samsung/android/hostmanager/aidl/BackupInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/hostmanager/aidl/BackupInfo;

    .line 147
    .local v3, "_arg0":Lcom/samsung/android/hostmanager/aidl/BackupInfo;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 149
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 151
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 152
    .local v6, "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->restoreWearable(Lcom/samsung/android/hostmanager/aidl/BackupInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    .line 153
    .restart local v15    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    if-eqz v15, :cond_7

    const/4 v2, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    if-eqz v3, :cond_8

    .line 156
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v3, v0, v2}, Lcom/samsung/android/hostmanager/aidl/BackupInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 162
    :goto_9
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 144
    .end local v3    # "_arg0":Lcom/samsung/android/hostmanager/aidl/BackupInfo;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v15    # "_result":Z
    :cond_6
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Lcom/samsung/android/hostmanager/aidl/BackupInfo;
    goto :goto_7

    .line 154
    .restart local v4    # "_arg1":Ljava/lang/String;
    .restart local v5    # "_arg2":Ljava/lang/String;
    .restart local v6    # "_arg3":Ljava/lang/String;
    .restart local v15    # "_result":Z
    :cond_7
    const/4 v2, 0x0

    goto :goto_8

    .line 160
    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 166
    .end local v3    # "_arg0":Lcom/samsung/android/hostmanager/aidl/BackupInfo;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v15    # "_result":Z
    :sswitch_a
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->reservedBnR01()V

    .line 168
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 173
    :sswitch_b
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->reservedBnR02()V

    .line 175
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 180
    :sswitch_c
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9

    .line 185
    sget-object v2, Lcom/samsung/android/hostmanager/aidl/BackupInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/hostmanager/aidl/BackupInfo;

    .line 190
    .local v4, "_arg1":Lcom/samsung/android/hostmanager/aidl/BackupInfo;
    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->removeBackupData(Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/BackupInfo;)Z

    move-result v15

    .line 191
    .restart local v15    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    if-eqz v15, :cond_a

    const/4 v2, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    if-eqz v4, :cond_b

    .line 194
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v2}, Lcom/samsung/android/hostmanager/aidl/BackupInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 200
    :goto_c
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 188
    .end local v4    # "_arg1":Lcom/samsung/android/hostmanager/aidl/BackupInfo;
    .end local v15    # "_result":Z
    :cond_9
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Lcom/samsung/android/hostmanager/aidl/BackupInfo;
    goto :goto_a

    .line 192
    .restart local v15    # "_result":Z
    :cond_a
    const/4 v2, 0x0

    goto :goto_b

    .line 198
    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c

    .line 204
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Lcom/samsung/android/hostmanager/aidl/BackupInfo;
    .end local v15    # "_result":Z
    :sswitch_d
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 208
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 210
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 211
    .local v5, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->installApp(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v15

    .line 212
    .restart local v15    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    if-eqz v15, :cond_c

    const/4 v2, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 213
    :cond_c
    const/4 v2, 0x0

    goto :goto_d

    .line 218
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v15    # "_result":Z
    :sswitch_e
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->reserved07()V

    .line 220
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 225
    :sswitch_f
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->reserved05()V

    .line 227
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 232
    :sswitch_10
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 236
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 238
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 239
    .restart local v5    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->uninstallApp(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v15

    .line 240
    .restart local v15    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    if-eqz v15, :cond_d

    const/4 v2, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 241
    :cond_d
    const/4 v2, 0x0

    goto :goto_e

    .line 246
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v15    # "_result":Z
    :sswitch_11
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 250
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 251
    .local v4, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->updateApp(II)Z

    move-result v15

    .line 252
    .restart local v15    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    if-eqz v15, :cond_e

    const/4 v2, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 253
    :cond_e
    const/4 v2, 0x0

    goto :goto_f

    .line 258
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v15    # "_result":Z
    :sswitch_12
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 262
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 263
    .local v4, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->reinstallApp(ILjava/lang/String;)Z

    move-result v15

    .line 264
    .restart local v15    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    if-eqz v15, :cond_f

    const/4 v2, 0x1

    :goto_10
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 265
    :cond_f
    const/4 v2, 0x0

    goto :goto_10

    .line 270
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v15    # "_result":Z
    :sswitch_13
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 274
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 275
    .local v4, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->manageConnectionInfo(Ljava/lang/String;I)I

    move-result v15

    .line 276
    .local v15, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 282
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v15    # "_result":I
    :sswitch_14
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->reserved08()V

    .line 284
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 289
    :sswitch_15
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 293
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 294
    .local v4, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->manageSetupInfo(ILjava/lang/String;)Z

    move-result v15

    .line 295
    .local v15, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    if-eqz v15, :cond_10

    const/4 v2, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 296
    :cond_10
    const/4 v2, 0x0

    goto :goto_11

    .line 301
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v15    # "_result":Z
    :sswitch_16
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 304
    .local v3, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->getBackupList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v17

    .line 305
    .local v17, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/BackupInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 307
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 311
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v17    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/BackupInfo;>;"
    :sswitch_17
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 315
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 316
    .local v4, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->requestDBQuery(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v23

    .line 317
    .local v23, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/HistoryInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 319
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 323
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v23    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/HistoryInfo;>;"
    :sswitch_18
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 327
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 329
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 331
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 332
    .restart local v6    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->cloudBackup(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 338
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    :sswitch_19
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 342
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 344
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 346
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 348
    .restart local v6    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, "_arg4":Ljava/lang/String;
    move-object/from16 v2, p0

    .line 349
    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->cloudRestore(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 355
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v7    # "_arg4":Ljava/lang/String;
    :sswitch_1a
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->reserved06()V

    .line 357
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 362
    :sswitch_1b
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 366
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 367
    .local v4, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->cancelFileonSending(ILjava/lang/String;)V

    .line 368
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 373
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_1c
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 376
    .local v3, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->getSettingsSetup(Ljava/lang/String;)Lcom/samsung/android/hostmanager/aidl/SettingsSetup;

    move-result-object v15

    .line 377
    .local v15, "_result":Lcom/samsung/android/hostmanager/aidl/SettingsSetup;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    if-eqz v15, :cond_11

    .line 379
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v15, v0, v2}, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->writeToParcel(Landroid/os/Parcel;I)V

    .line 385
    :goto_12
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 383
    :cond_11
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_12

    .line 389
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v15    # "_result":Lcom/samsung/android/hostmanager/aidl/SettingsSetup;
    :sswitch_1d
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 393
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 395
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 396
    .restart local v5    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->setSettingsSetup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 402
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    :sswitch_1e
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 405
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->getClocksSetup(Ljava/lang/String;)Ljava/util/List;

    move-result-object v18

    .line 406
    .local v18, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/ClocksSetup;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 408
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 412
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v18    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/ClocksSetup;>;"
    :sswitch_1f
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 414
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 415
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->getMyAppsSetup(Ljava/lang/String;)Ljava/util/List;

    move-result-object v25

    .line 416
    .local v25, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 418
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 422
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v25    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;>;"
    :sswitch_20
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 426
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 427
    .local v4, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->onSystemBackupRequest(Ljava/lang/String;I)V

    .line 428
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 433
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    :sswitch_21
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 435
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 436
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->getAppsOrderSetup(Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    .line 437
    .local v16, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/AppsOrderSetup;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 439
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 443
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v16    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/AppsOrderSetup;>;"
    :sswitch_22
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->getConnectedWearableDevices()Ljava/util/List;

    move-result-object v19

    .line 445
    .local v19, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 447
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 451
    .end local v19    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;>;"
    :sswitch_23
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 452
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->getAllBondedWearableDevices()Ljava/util/List;

    move-result-object v19

    .line 453
    .restart local v19    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 455
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 459
    .end local v19    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;>;"
    :sswitch_24
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 461
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 462
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->getFavoriteOrderSetup(Ljava/lang/String;)Ljava/util/List;

    move-result-object v21

    .line 463
    .local v21, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 465
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 469
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v21    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;>;"
    :sswitch_25
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 471
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 473
    .restart local v3    # "_arg0":Ljava/lang/String;
    sget-object v2, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v9

    .line 475
    .local v9, "_arg1":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/ClocksSetup;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 476
    .restart local v5    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v9, v5}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->setClocksSetup(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 477
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 479
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 483
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v9    # "_arg1":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/ClocksSetup;>;"
    :sswitch_26
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 485
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 487
    .restart local v3    # "_arg0":Ljava/lang/String;
    sget-object v2, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v13

    .line 488
    .local v13, "_arg1":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v13}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->setMyAppsSetup(Ljava/lang/String;Ljava/util/List;)V

    .line 489
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 490
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 491
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 495
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;>;"
    :sswitch_27
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 496
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->reserved02()V

    .line 497
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 498
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 502
    :sswitch_28
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 504
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 506
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 508
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 509
    .restart local v5    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->sendJSONDataFromApp(Ljava/lang/String;ILjava/lang/String;)V

    .line 510
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 515
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Ljava/lang/String;
    :sswitch_29
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 517
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 519
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 521
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 523
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 524
    .restart local v6    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->sendSettingResultJSONDataFromApp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 525
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 530
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    :sswitch_2a
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 532
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 533
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->startScan(Ljava/lang/String;)V

    .line 534
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 535
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 539
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_2b
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 541
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 542
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->getNotificationMaxByte(Ljava/lang/String;)I

    move-result v15

    .line 543
    .local v15, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 545
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 549
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v15    # "_result":I
    :sswitch_2c
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 551
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 553
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 554
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->startSytemRestore(Ljava/lang/String;I)V

    .line 555
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 560
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    :sswitch_2d
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 562
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 563
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->getDevicesToSend(Ljava/lang/String;)Ljava/util/List;

    move-result-object v29

    .line 564
    .local v29, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 565
    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 566
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 570
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v29    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_2e
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 572
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 573
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->getLimitNotificationSetting(Ljava/lang/String;)Z

    move-result v15

    .line 574
    .local v15, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 575
    if-eqz v15, :cond_12

    const/4 v2, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 576
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 575
    :cond_12
    const/4 v2, 0x0

    goto :goto_13

    .line 580
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v15    # "_result":Z
    :sswitch_2f
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 581
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->reserved09()V

    .line 582
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 583
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 587
    :sswitch_30
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 588
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->getIsEulaPassed()Z

    move-result v15

    .line 589
    .restart local v15    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 590
    if-eqz v15, :cond_13

    const/4 v2, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 591
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 590
    :cond_13
    const/4 v2, 0x0

    goto :goto_14

    .line 595
    .end local v15    # "_result":Z
    :sswitch_31
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 597
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 598
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->sendEULAFinishMessage(Ljava/lang/String;)V

    .line 599
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 600
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 604
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_32
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 605
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->stopRestore()V

    .line 606
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 607
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 611
    :sswitch_33
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 613
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 614
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->startReset(Ljava/lang/String;)V

    .line 615
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 616
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 620
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_34
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 622
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 623
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->getIsRestoreEulaPassNeededDevice(Ljava/lang/String;)Z

    move-result v15

    .line 624
    .restart local v15    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 625
    if-eqz v15, :cond_14

    const/4 v2, 0x1

    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 626
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 625
    :cond_14
    const/4 v2, 0x0

    goto :goto_15

    .line 630
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v15    # "_result":Z
    :sswitch_35
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 632
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 634
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 635
    .local v4, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->getWappListPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 636
    .local v15, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 637
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 638
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 642
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v15    # "_result":Ljava/lang/String;
    :sswitch_36
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 644
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_15

    const/4 v3, 0x1

    .line 645
    .local v3, "_arg0":Z
    :goto_16
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->saveUnknownSourcesPermission(Z)V

    .line 646
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 647
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 644
    .end local v3    # "_arg0":Z
    :cond_15
    const/4 v3, 0x0

    goto :goto_16

    .line 651
    :sswitch_37
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 653
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 655
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 657
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 658
    .restart local v5    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->updatePreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 660
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 664
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    :sswitch_38
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 666
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 668
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 669
    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 670
    .restart local v15    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 672
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 676
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v15    # "_result":Ljava/lang/String;
    :sswitch_39
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 677
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->getDefaultPDClassName()Ljava/lang/String;

    move-result-object v15

    .line 678
    .restart local v15    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 679
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 680
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 684
    .end local v15    # "_result":Ljava/lang/String;
    :sswitch_3a
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 686
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 687
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->getDefaultClockPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 688
    .restart local v15    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 689
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 690
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 694
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v15    # "_result":Ljava/lang/String;
    :sswitch_3b
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 695
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->reserved10()V

    .line 696
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 697
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 701
    :sswitch_3c
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 702
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->reserved11()V

    .line 703
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 704
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 708
    :sswitch_3d
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 709
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->reserved12()V

    .line 710
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 711
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 715
    :sswitch_3e
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 717
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 719
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 720
    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->getImageByteArray(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v15

    .line 721
    .local v15, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 722
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 723
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 727
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v15    # "_result":[B
    :sswitch_3f
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 729
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 730
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->isConnected(Ljava/lang/String;)Z

    move-result v15

    .line 731
    .local v15, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 732
    if-eqz v15, :cond_16

    const/4 v2, 0x1

    :goto_17
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 733
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 732
    :cond_16
    const/4 v2, 0x0

    goto :goto_17

    .line 737
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v15    # "_result":Z
    :sswitch_40
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 739
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 741
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 742
    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->getAppSettingString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 743
    .local v15, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 744
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 745
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 749
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v15    # "_result":Ljava/lang/String;
    :sswitch_41
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 751
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 753
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 755
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 756
    .restart local v5    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->pushResultFileToHM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 758
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 762
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    :sswitch_42
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 764
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 766
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 768
    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 769
    .restart local v5    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->setHomeBGSettings(Ljava/lang/String;ILjava/lang/String;)V

    .line 770
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 771
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 775
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Ljava/lang/String;
    :sswitch_43
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 776
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->isNeedtoGetWallpaper()Z

    move-result v15

    .line 777
    .local v15, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 778
    if-eqz v15, :cond_17

    const/4 v2, 0x1

    :goto_18
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 779
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 778
    :cond_17
    const/4 v2, 0x0

    goto :goto_18

    .line 783
    .end local v15    # "_result":Z
    :sswitch_44
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 785
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 786
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->getHomeBGImageNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 787
    .local v15, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 788
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 789
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 793
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v15    # "_result":[Ljava/lang/String;
    :sswitch_45
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 795
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 796
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->getHomeBGImagePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 797
    .local v15, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 798
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 799
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 803
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v15    # "_result":Ljava/lang/String;
    :sswitch_46
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 805
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 806
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->resumeConnect(Ljava/lang/String;)V

    .line 807
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 808
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 812
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_47
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 814
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 816
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 818
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 819
    .restart local v5    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->setAddGalleryImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 821
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 825
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    :sswitch_48
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 826
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->getConnectedCMProxyState()Z

    move-result v15

    .line 827
    .local v15, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 828
    if-eqz v15, :cond_18

    const/4 v2, 0x1

    :goto_19
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 829
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 828
    :cond_18
    const/4 v2, 0x0

    goto :goto_19

    .line 833
    .end local v15    # "_result":Z
    :sswitch_49
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 835
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_19

    const/4 v3, 0x1

    .line 836
    .local v3, "_arg0":Z
    :goto_1a
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->setIsFirstConnection(Z)V

    .line 837
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 838
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 835
    .end local v3    # "_arg0":Z
    :cond_19
    const/4 v3, 0x0

    goto :goto_1a

    .line 842
    :sswitch_4a
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 843
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->getIsfirstConnection()Z

    move-result v15

    .line 844
    .restart local v15    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 845
    if-eqz v15, :cond_1a

    const/4 v2, 0x1

    :goto_1b
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 846
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 845
    :cond_1a
    const/4 v2, 0x0

    goto :goto_1b

    .line 850
    .end local v15    # "_result":Z
    :sswitch_4b
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 851
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->initConnType()V

    .line 852
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 853
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 857
    :sswitch_4c
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 859
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 861
    .local v3, "_arg0":Ljava/lang/String;
    sget-object v2, Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v10

    .line 862
    .local v10, "_arg1":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->setFavoriteOrderSetup(Ljava/lang/String;Ljava/util/List;)V

    .line 863
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 864
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 865
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 869
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;>;"
    :sswitch_4d
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 871
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 872
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->getAppsData(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 873
    .local v15, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 874
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 875
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 879
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v15    # "_result":[Ljava/lang/String;
    :sswitch_4e
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 881
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 883
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 885
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 886
    .restart local v5    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->getPreferenceWithFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 887
    .local v15, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 888
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 889
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 893
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v15    # "_result":Ljava/lang/String;
    :sswitch_4f
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 895
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 897
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v4, 0x1

    .line 898
    .local v4, "_arg1":Z
    :goto_1c
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->requestTokenFromUI(Ljava/lang/String;Z)V

    .line 899
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 900
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 897
    .end local v4    # "_arg1":Z
    :cond_1b
    const/4 v4, 0x0

    goto :goto_1c

    .line 904
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_50
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 906
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 907
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->getThreeGSettingValue(Ljava/lang/String;)Z

    move-result v15

    .line 908
    .local v15, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 909
    if-eqz v15, :cond_1c

    const/4 v2, 0x1

    :goto_1d
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 910
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 909
    :cond_1c
    const/4 v2, 0x0

    goto :goto_1d

    .line 914
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v15    # "_result":Z
    :sswitch_51
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 916
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 917
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->getConnectedType(Ljava/lang/String;)I

    move-result v15

    .line 918
    .local v15, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 919
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 920
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 924
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v15    # "_result":I
    :sswitch_52
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 926
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 927
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->getDeviceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 928
    .local v15, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 929
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 930
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 934
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v15    # "_result":Ljava/lang/String;
    :sswitch_53
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 936
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 938
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 940
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 942
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 943
    .restart local v6    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->setPreferenceWithFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 945
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 949
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    :sswitch_54
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 951
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 952
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->requestWearableToken(Ljava/lang/String;)V

    .line 953
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 954
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 958
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_55
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 960
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 961
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->getFontsSetup(Ljava/lang/String;)Ljava/util/List;

    move-result-object v22

    .line 962
    .local v22, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/FontsSetup;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 963
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 964
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 968
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v22    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/FontsSetup;>;"
    :sswitch_56
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 970
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 972
    .restart local v3    # "_arg0":Ljava/lang/String;
    sget-object v2, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v11

    .line 973
    .local v11, "_arg1":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/FontsSetup;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->setFontsSetup(Ljava/lang/String;Ljava/util/List;)V

    .line 974
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 975
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 976
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 980
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v11    # "_arg1":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/FontsSetup;>;"
    :sswitch_57
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 982
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 984
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 986
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v5, 0x1

    .line 988
    .local v5, "_arg2":Z
    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 989
    .restart local v6    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->installSpecialAppViaStub(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v15

    .line 990
    .local v15, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 991
    if-eqz v15, :cond_1e

    const/4 v2, 0x1

    :goto_1f
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 992
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 986
    .end local v5    # "_arg2":Z
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v15    # "_result":Z
    :cond_1d
    const/4 v5, 0x0

    goto :goto_1e

    .line 991
    .restart local v5    # "_arg2":Z
    .restart local v6    # "_arg3":Ljava/lang/String;
    .restart local v15    # "_result":Z
    :cond_1e
    const/4 v2, 0x0

    goto :goto_1f

    .line 996
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Z
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v15    # "_result":Z
    :sswitch_58
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 998
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1000
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/hostmanager/aidl/IAPPHostManagerListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/hostmanager/aidl/IAPPHostManagerListener;

    move-result-object v4

    .line 1001
    .local v4, "_arg1":Lcom/samsung/android/hostmanager/aidl/IAPPHostManagerListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->registerEXAPPListener(Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IAPPHostManagerListener;)Z

    move-result v15

    .line 1002
    .restart local v15    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1003
    if-eqz v15, :cond_1f

    const/4 v2, 0x1

    :goto_20
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1004
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1003
    :cond_1f
    const/4 v2, 0x0

    goto :goto_20

    .line 1008
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Lcom/samsung/android/hostmanager/aidl/IAPPHostManagerListener;
    .end local v15    # "_result":Z
    :sswitch_59
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1010
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1011
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->unRegisterEXAPPListener(Ljava/lang/String;)Z

    move-result v15

    .line 1012
    .restart local v15    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1013
    if-eqz v15, :cond_20

    const/4 v2, 0x1

    :goto_21
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1014
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1013
    :cond_20
    const/4 v2, 0x0

    goto :goto_21

    .line 1018
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v15    # "_result":Z
    :sswitch_5a
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1019
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->getWearableList()Ljava/util/List;

    move-result-object v28

    .line 1020
    .local v28, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/WearableConnectInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1021
    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1022
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1026
    .end local v28    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/WearableConnectInfo;>;"
    :sswitch_5b
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1027
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->getWearableInfo()Z

    move-result v15

    .line 1028
    .restart local v15    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1029
    if-eqz v15, :cond_21

    const/4 v2, 0x1

    :goto_22
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1030
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1029
    :cond_21
    const/4 v2, 0x0

    goto :goto_22

    .line 1034
    .end local v15    # "_result":Z
    :sswitch_5c
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1036
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1038
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/hostmanager/aidl/ConnectListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/hostmanager/aidl/ConnectListener;

    move-result-object v4

    .line 1039
    .local v4, "_arg1":Lcom/samsung/android/hostmanager/aidl/ConnectListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->connectWifiDirect(Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/ConnectListener;)Z

    move-result v15

    .line 1040
    .restart local v15    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1041
    if-eqz v15, :cond_22

    const/4 v2, 0x1

    :goto_23
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1042
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1041
    :cond_22
    const/4 v2, 0x0

    goto :goto_23

    .line 1046
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Lcom/samsung/android/hostmanager/aidl/ConnectListener;
    .end local v15    # "_result":Z
    :sswitch_5d
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1048
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1049
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->disconnectWifiDirect(Ljava/lang/String;)Z

    move-result v15

    .line 1050
    .restart local v15    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1051
    if-eqz v15, :cond_23

    const/4 v2, 0x1

    :goto_24
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1052
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1051
    :cond_23
    const/4 v2, 0x0

    goto :goto_24

    .line 1056
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v15    # "_result":Z
    :sswitch_5e
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1058
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1059
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->getWearableInfoByDeviceId(Ljava/lang/String;)Z

    move-result v15

    .line 1060
    .restart local v15    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1061
    if-eqz v15, :cond_24

    const/4 v2, 0x1

    :goto_25
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1062
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1061
    :cond_24
    const/4 v2, 0x0

    goto :goto_25

    .line 1066
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v15    # "_result":Z
    :sswitch_5f
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1068
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1069
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->getTTSSetup(Ljava/lang/String;)Ljava/util/List;

    move-result-object v27

    .line 1070
    .local v27, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/TTSSetup;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1071
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1072
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1076
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/TTSSetup;>;"
    :sswitch_60
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1078
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1080
    .restart local v3    # "_arg0":Ljava/lang/String;
    sget-object v2, Lcom/samsung/android/hostmanager/aidl/TTSSetup;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v14

    .line 1081
    .local v14, "_arg1":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/TTSSetup;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v14}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->setTTSSetup(Ljava/lang/String;Ljava/util/List;)V

    .line 1082
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1083
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1084
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1088
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/TTSSetup;>;"
    :sswitch_61
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1090
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1091
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->getNotificationInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v26

    .line 1092
    .local v26, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/NotificationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1093
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1094
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1098
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v26    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/NotificationInfo;>;"
    :sswitch_62
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1102
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/hostmanager/aidl/ConnectListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/hostmanager/aidl/ConnectListener;

    move-result-object v4

    .line 1103
    .restart local v4    # "_arg1":Lcom/samsung/android/hostmanager/aidl/ConnectListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->forceConnectWifiDirect(Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/ConnectListener;)V

    .line 1104
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1105
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1109
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Lcom/samsung/android/hostmanager/aidl/ConnectListener;
    :sswitch_63
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .line 1113
    .local v8, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1114
    .local v4, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v4}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->setDeleteGalleryImage(Ljava/util/List;Ljava/lang/String;)V

    .line 1115
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1116
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1120
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_64
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1123
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->isDownloadInProgress(Ljava/lang/String;)Z

    move-result v15

    .line 1124
    .restart local v15    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1125
    if-eqz v15, :cond_25

    const/4 v2, 0x1

    :goto_26
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1126
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1125
    :cond_25
    const/4 v2, 0x0

    goto :goto_26

    .line 1130
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v15    # "_result":Z
    :sswitch_65
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1132
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1133
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->getIMESetup(Ljava/lang/String;)Ljava/util/List;

    move-result-object v24

    .line 1134
    .local v24, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/IMESetup;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1135
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1136
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1140
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v24    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/IMESetup;>;"
    :sswitch_66
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1144
    .restart local v3    # "_arg0":Ljava/lang/String;
    sget-object v2, Lcom/samsung/android/hostmanager/aidl/IMESetup;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v12

    .line 1145
    .local v12, "_arg1":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/IMESetup;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->setIMESetup(Ljava/lang/String;Ljava/util/List;)V

    .line 1146
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1147
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1148
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1152
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/IMESetup;>;"
    :sswitch_67
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1154
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1155
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->requestWallpapertoWMS(Ljava/lang/String;)V

    .line 1156
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1157
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1161
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_68
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1162
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->getSHealthSupportInfo()Landroid/os/Bundle;

    move-result-object v15

    .line 1163
    .local v15, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1164
    if-eqz v15, :cond_26

    .line 1165
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1166
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v15, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1171
    :goto_27
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1169
    :cond_26
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_27

    .line 1175
    .end local v15    # "_result":Landroid/os/Bundle;
    :sswitch_69
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1176
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->syncSHealthSupportInfo()V

    .line 1177
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1181
    :sswitch_6a
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1185
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1186
    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->getinstalledAppType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 1187
    .local v15, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1188
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 1189
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1193
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v15    # "_result":I
    :sswitch_6b
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1194
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->isConnecting()Z

    move-result v15

    .line 1195
    .local v15, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1196
    if-eqz v15, :cond_27

    const/4 v2, 0x1

    :goto_28
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1197
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1196
    :cond_27
    const/4 v2, 0x0

    goto :goto_28

    .line 1201
    .end local v15    # "_result":Z
    :sswitch_6c
    const-string v2, "com.samsung.android.hostmanager.aidl.IUHostManagerInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1204
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->getBackupFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1205
    .local v15, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1206
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1207
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x63 -> :sswitch_63
        0x64 -> :sswitch_64
        0x65 -> :sswitch_65
        0x66 -> :sswitch_66
        0x67 -> :sswitch_67
        0x68 -> :sswitch_68
        0x69 -> :sswitch_69
        0x6a -> :sswitch_6a
        0x6b -> :sswitch_6b
        0x6c -> :sswitch_6c
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
