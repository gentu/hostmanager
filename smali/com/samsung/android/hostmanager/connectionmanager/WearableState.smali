.class public Lcom/samsung/android/hostmanager/connectionmanager/WearableState;
.super Ljava/lang/Object;
.source "WearableState.java"


# static fields
.field public static final ADV_PURPOSE_ID:I = 0x1

.field private static final APPEARANCE_GEAR1:I = 0x40

.field private static final APPEARANCE_GEAR2:I = 0xc0

.field private static final APPEARANCE_WINGTIP:I = 0xc0

.field public static final B2_DEVICE_ID:I = 0x1

.field public static final BLUETOOTH_LINK_FEATUREE_LE:I = 0x2

.field public static final BLUETOOTH_LINK_FEATURE_DUAL:I = 0x3

.field public static final BLUETOOTH_LINK_FEATURE_EDR:I = 0x1

.field public static final BLUETOOTH_LINK_FEATURE_UNKNOWN:I = 0x0

.field private static final COD_GEAR1:I = 0x2c0

.field private static final COD_GEAR2:I = 0x2c0

.field private static final COD_WINGTIP:I = 0x2c0

.field public static final COMPANY_ID:I = 0x75

.field public static final DEVICE_ID_OFFSET:I = 0x4

.field public static final MANUFACTURER_FLAG:B = -0x1t

.field public static final MANUFACTURE_DATA_LEN:I = 0x9

.field private static final PREF_APP_INFO:Ljava/lang/String; = "PREF_APP_INFO"

.field private static final PREF_KEY_APP_VERSION_INFO:Ljava/lang/String; = "PREF_KEY_APP_VERSION_INFO"

.field private static final PREF_KEY_CONNECTED_WEARABLE:Ljava/lang/String; = "PREF_KEY_CONNECTED_WEARABLE"

.field private static final PREF_KEY_SCS_PREFERENCE_SET:Ljava/lang/String; = "PREF_KEY_SCS_PREFERENCE_SET"

.field private static final PREF_NAME_CONNECTED_WEARABLE:Ljava/lang/String; = "PREF_NAME_CONNECTED_WEARABLE"

.field private static final PREF_NAME_CONNECTED_WEARABLE_BLEACS:Ljava/lang/String; = "PREF_NAME_CONNECTED_WEARABLE_BLEACS"

.field private static final PREF_NAME_DEVICE_FEATURE:Ljava/lang/String; = "PREF_NAME_DEVICE_FEATURE"

.field private static final PREF_NAME_SCS_CONNECTED_WEARABLE:Ljava/lang/String; = "PREF_NAME_SCS_CONNECTED_WEARABLE"

.field private static final PREF_SAP_PROFILE_VERSION:Ljava/lang/String; = "PREF_SAP_PROFILE_VERSION"

.field private static final PREF_WEARABLE_ADVERTISE_MODE:Ljava/lang/String; = "PREF_WEARABLE_ADVERTISE_MODE"

.field public static final PURPOSE_TYPE_OFFSET:I = 0x6

.field private static final RECOVERY_FIRST_CONNECTION_RETRY:I

.field private static TAG:Ljava/lang/String;


# instance fields
.field private NUM_SERVICE_TYPE:I

.field private mAlreadyHFPConnectedDeviceList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBondedDeviceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBondedListMutex:Ljava/lang/Object;

.field private mBrEdrConnectionMutex:Ljava/lang/Object;

.field mBrEdrConnectionStateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mCODMappingTable:Landroid/util/SparseIntArray;

.field private mConnectedDeviceSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectedDeviceSet_SCS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectedDeviceSet_bleAcs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectedProfileSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mFindPeerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiACDeviceSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;",
            ">;"
        }
    .end annotation
.end field

.field private mMutex:Ljava/lang/Object;

.field private mRequestedDeviceList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScsPreferenceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mScsPreferenceSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportServiceListMutex:Ljava/lang/Object;

.field private mSupportableServicesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "WearableState"

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)V
    .locals 2
    .param p1, "manager"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .prologue
    const/4 v1, 0x0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mMutex:Ljava/lang/Object;

    .line 59
    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mConnectedProfileSet:Ljava/util/HashMap;

    .line 61
    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mDeviceMap:Ljava/util/HashMap;

    .line 64
    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mScsPreferenceMap:Ljava/util/HashMap;

    .line 66
    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mConnectedDeviceSet:Ljava/util/Set;

    .line 69
    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mConnectedDeviceSet_bleAcs:Ljava/util/Set;

    .line 72
    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mScsPreferenceSet:Ljava/util/Set;

    .line 76
    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mConnectedDeviceSet_SCS:Ljava/util/Set;

    .line 79
    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mMultiACDeviceSet:Ljava/util/HashMap;

    .line 82
    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mRequestedDeviceList:Ljava/util/Set;

    .line 85
    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mAlreadyHFPConnectedDeviceList:Ljava/util/Set;

    .line 88
    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mBondedDeviceList:Ljava/util/ArrayList;

    .line 90
    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mBondedListMutex:Ljava/lang/Object;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mBrEdrConnectionStateMap:Ljava/util/HashMap;

    .line 117
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mBrEdrConnectionMutex:Ljava/lang/Object;

    .line 119
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->NUM_SERVICE_TYPE:I

    .line 131
    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mSupportableServicesMap:Ljava/util/HashMap;

    .line 236
    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mCODMappingTable:Landroid/util/SparseIntArray;

    .line 1401
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mFindPeerMap:Ljava/util/HashMap;

    .line 1904
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mSupportServiceListMutex:Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v1, "Create WearableState"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mConnectedProfileSet:Ljava/util/HashMap;

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mDeviceMap:Ljava/util/HashMap;

    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mScsPreferenceMap:Ljava/util/HashMap;

    .line 143
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mConnectedDeviceSet:Ljava/util/Set;

    .line 144
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mConnectedDeviceSet_bleAcs:Ljava/util/Set;

    .line 145
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mConnectedDeviceSet_SCS:Ljava/util/Set;

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mBondedDeviceList:Ljava/util/ArrayList;

    .line 148
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mScsPreferenceSet:Ljava/util/Set;

    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mMultiACDeviceSet:Ljava/util/HashMap;

    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mSupportableServicesMap:Ljava/util/HashMap;

    .line 152
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mRequestedDeviceList:Ljava/util/Set;

    .line 153
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mAlreadyHFPConnectedDeviceList:Ljava/util/Set;

    .line 154
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mBondedListMutex:Ljava/lang/Object;

    .line 156
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->initialize()V

    .line 157
    return-void
.end method

.method private clearPrefData(Ljava/lang/String;)Z
    .locals 4
    .param p1, "PrefName"    # Ljava/lang/String;

    .prologue
    .line 1661
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1664
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1666
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 1667
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    return v2
.end method

.method private closeAutoConnectSet(Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V
    .locals 3
    .param p1, "acSet"    # Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 1676
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1678
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    .line 1679
    const/4 v1, 0x7

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 1680
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v2, "putDeviceMacForACDeviceSet, call closeProfileProxy for Gatt instance"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1682
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setBluetoothGatt(Landroid/bluetooth/BluetoothGatt;)V

    .line 1684
    :cond_0
    return-void
.end method

.method private convertArrayToInt([I)I
    .locals 8
    .param p1, "array"    # [I

    .prologue
    .line 793
    const/4 v1, 0x0

    .line 794
    .local v1, "res":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->NUM_SERVICE_TYPE:I

    if-ge v0, v2, :cond_0

    .line 795
    aget v2, p1, v0

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    iget v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->NUM_SERVICE_TYPE:I

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    int-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v3, v4

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 794
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 798
    :cond_0
    return v1
.end method

.method private convertIntToArray(I)[I
    .locals 3
    .param p1, "number"    # I

    .prologue
    .line 782
    iget v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->NUM_SERVICE_TYPE:I

    new-array v0, v2, [I

    .line 783
    .local v0, "array":[I
    iget v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->NUM_SERVICE_TYPE:I

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 784
    rem-int/lit8 v2, p1, 0xa

    aput v2, v0, v1

    .line 785
    div-int/lit8 p1, p1, 0xa

    .line 783
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 788
    :cond_0
    return-object v0
.end method

.method private getCode(Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)I
    .locals 10
    .param p1, "service"    # Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;
    .param p2, "state"    # Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    .prologue
    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    .line 742
    const/4 v0, 0x0

    .line 744
    .local v0, "res":I
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CMWS] getCode("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CMWS] getCode("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ALL:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    if-ne p1, v1, :cond_0

    .line 749
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ordinal()I

    move-result v1

    int-to-double v2, v1

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    invoke-virtual {p2}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->ordinal()I

    move-result v1

    int-to-double v4, v1

    mul-double/2addr v2, v4

    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->HFP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    .line 750
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ordinal()I

    move-result v1

    int-to-double v4, v1

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    invoke-virtual {p2}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->ordinal()I

    move-result v1

    int-to-double v6, v1

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->PAN:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    .line 751
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ordinal()I

    move-result v1

    int-to-double v4, v1

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    invoke-virtual {p2}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->ordinal()I

    move-result v1

    int-to-double v6, v1

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->GATT:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    .line 752
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ordinal()I

    move-result v1

    int-to-double v4, v1

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    invoke-virtual {p2}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->ordinal()I

    move-result v1

    int-to-double v6, v1

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-int v0, v2

    .line 759
    :goto_0
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CMWS] getCode("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    return v0

    .line 756
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ordinal()I

    move-result v1

    int-to-double v2, v1

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v1, v2

    invoke-virtual {p2}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->ordinal()I

    move-result v2

    mul-int v0, v1, v2

    goto :goto_0
.end method

.method private getPrefString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "PrefName"    # Ljava/lang/String;
    .param p2, "PrefKey"    # Ljava/lang/String;

    .prologue
    .line 1656
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1658
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "none"

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getPrefStringSet(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .param p1, "PrefName"    # Ljava/lang/String;
    .param p2, "PrefKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1628
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1631
    .local v0, "pref":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method private putPrefString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "PrefName"    # Ljava/lang/String;
    .param p2, "PrefKey"    # Ljava/lang/String;
    .param p3, "stringData"    # Ljava/lang/String;

    .prologue
    .line 1635
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1638
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1641
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1642
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    return v2
.end method

.method private putPrefStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z
    .locals 4
    .param p1, "PrefName"    # Ljava/lang/String;
    .param p2, "PrefKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1607
    .local p3, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1610
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1613
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 1614
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    return v2
.end method

.method private removePrefString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "PrefName"    # Ljava/lang/String;
    .param p2, "PrefKey"    # Ljava/lang/String;

    .prologue
    .line 1646
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1649
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1651
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1652
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    return v2
.end method

.method private removePrefStringSet(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "PrefName"    # Ljava/lang/String;
    .param p2, "PrefKey"    # Ljava/lang/String;

    .prologue
    .line 1618
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1621
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1623
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1624
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    return v2
.end method

.method private setCODMappingTable()V
    .locals 4

    .prologue
    const/16 v3, 0xc0

    const/16 v2, 0x2c0

    .line 239
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mCODMappingTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 240
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mCODMappingTable:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 241
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mCODMappingTable:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 242
    return-void
.end method

.method private showAutoConnectionLog(Ljava/lang/String;)V
    .locals 7
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 2376
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2377
    :cond_0
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v5, "[CMWS] address is null!!"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2409
    :cond_1
    :goto_0
    return-void

    .line 2381
    :cond_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getACDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v0

    .line 2383
    .local v0, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-eqz v0, :cond_1

    .line 2388
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getAutoConnectionFlag()Z

    move-result v1

    .line 2390
    .local v1, "flag":Z
    if-eqz v1, :cond_1

    .line 2397
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getWearableProfileVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2398
    .local v3, "profileVersion":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isGearNotifiedRandomLeTrueFlag(Ljava/lang/String;)Z

    move-result v2

    .line 2400
    .local v2, "isgearNotified":Z
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->isRandomLeUpdated()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 2402
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CMWS] first is RandomLE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->isRandomLe()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " HostSupportRandomLE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->isHostSupportRandomLE()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", GearSupportRandomLE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2403
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->isGearSupportRandomLE()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", HostBTVersion: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->gethostBluetoothVersion()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2402
    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2407
    :cond_3
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CMWS] profile version : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isGearNotified: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static stringSplit(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "onToken"    # Ljava/lang/String;

    .prologue
    .line 1393
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, p0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    .local v2, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v1, v3, [Ljava/lang/String;

    .line 1395
    .local v1, "result":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 1396
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 1395
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1398
    :cond_0
    return-object v1
.end method

.method private updatePrefStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z
    .locals 4
    .param p1, "PrefName"    # Ljava/lang/String;
    .param p2, "PrefKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1593
    .local p3, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1596
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1598
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1599
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1602
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 1603
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    return v2
.end method

.method private updateState(II)I
    .locals 6
    .param p1, "state"    # I
    .param p2, "code"    # I

    .prologue
    .line 766
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->convertIntToArray(I)[I

    move-result-object v1

    .line 767
    .local v1, "arrayState":[I
    invoke-direct {p0, p2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->convertIntToArray(I)[I

    move-result-object v0

    .line 769
    .local v0, "arrayCode":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->NUM_SERVICE_TYPE:I

    if-ge v2, v3, :cond_1

    .line 770
    aget v3, v0, v2

    if-eqz v3, :cond_0

    .line 771
    aget v3, v0, v2

    aput v3, v1, v2

    .line 769
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 775
    :cond_1
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CMWS] updateState("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->convertArrayToInt([I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    invoke-direct {p0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->convertArrayToInt([I)I

    move-result v3

    return v3
.end method


# virtual methods
.method public addAdapterBondedDevice(Ljava/lang/String;)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 589
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mBondedListMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 591
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mBondedDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 592
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CMWS] Add Adapter Bonded Device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mBondedDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    :cond_0
    monitor-exit v1

    .line 596
    return-void

    .line 595
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addSupportableServices(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1908
    .local p2, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mSupportServiceListMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 1910
    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1911
    :cond_0
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v3, "[SDP] no supportable services!! (WARNING: Not Updated)"

    invoke-static {v1, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1912
    monitor-exit v2

    .line 1922
    :goto_0
    return-void

    .line 1915
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1916
    .local v0, "service":Ljava/lang/String;
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SDP] add Supportable Service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1921
    .end local v0    # "service":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1919
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mSupportableServicesMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1921
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public checkAppearanceType([B)I
    .locals 8
    .param p1, "scanRecord"    # [B

    .prologue
    .line 297
    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v6, "checkAppearance_Type -- start"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const/4 v2, 0x0

    .line 300
    .local v2, "offset":I
    :cond_0
    :goto_0
    array-length v5, p1

    add-int/lit8 v5, v5, -0x2

    if-ge v2, v5, :cond_1

    .line 301
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .local v3, "offset":I
    aget-byte v1, p1, v2

    .line 303
    .local v1, "len":I
    if-nez v1, :cond_2

    move v2, v3

    .line 327
    .end local v1    # "len":I
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    :cond_1
    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v6, "checkAppearance_Type -- end"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const/4 v0, -0x1

    :goto_1
    return v0

    .line 306
    .end local v2    # "offset":I
    .restart local v1    # "len":I
    .restart local v3    # "offset":I
    :cond_2
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    aget-byte v4, p1, v3

    .line 308
    .local v4, "type":I
    packed-switch v4, :pswitch_data_0

    .line 322
    add-int/lit8 v5, v1, -0x1

    add-int/2addr v2, v5

    goto :goto_0

    .line 310
    :pswitch_0
    const/4 v5, 0x3

    if-ne v1, v5, :cond_0

    .line 312
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    aget-byte v5, p1, v2

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    aget-byte v6, p1, v3

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int v0, v5, v6

    .line 314
    .local v0, "appearanceInt":I
    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "appearance packet tpye is present  value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 308
    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_0
    .end packed-switch
.end method

.method public checkCompanyType([B)I
    .locals 10
    .param p1, "scanRecord"    # [B

    .prologue
    .line 360
    const/4 v4, 0x0

    .line 361
    .local v4, "offset":I
    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v8, " checkCompanyType -- start"

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :cond_0
    :goto_0
    array-length v7, p1

    add-int/lit8 v7, v7, -0x2

    if-ge v4, v7, :cond_1

    .line 364
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "offset":I
    .local v5, "offset":I
    aget-byte v3, p1, v4

    .line 366
    .local v3, "len":I
    if-nez v3, :cond_2

    move v4, v5

    .line 393
    .end local v3    # "len":I
    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    :cond_1
    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v8, "checkCompanyType -- end"

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const/4 v2, -0x1

    :goto_1
    return v2

    .line 369
    .end local v4    # "offset":I
    .restart local v3    # "len":I
    .restart local v5    # "offset":I
    :cond_2
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    aget-byte v6, p1, v5

    .line 371
    .local v6, "type":B
    packed-switch v6, :pswitch_data_0

    .line 388
    add-int/lit8 v7, v3, -0x1

    add-int/2addr v4, v7

    goto :goto_0

    .line 374
    :pswitch_0
    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " checkCompanyType manufacture Data Len: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const/16 v7, 0x9

    if-lt v3, v7, :cond_0

    .line 377
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    aget-byte v7, p1, v4

    and-int/lit16 v7, v7, 0xff

    int-to-byte v1, v7

    .line 378
    .local v1, "cmpMsb":B
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    aget-byte v7, p1, v5

    and-int/lit16 v7, v7, 0xff

    int-to-byte v0, v7

    .line 380
    .local v0, "cmpLsb":B
    shl-int/lit8 v7, v1, 0x8

    or-int v2, v7, v0

    .line 381
    .local v2, "companyID":I
    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Company packet tpye is present  value : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 371
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public checkDeviceId([B)I
    .locals 10
    .param p1, "scanRecord"    # [B

    .prologue
    .line 400
    const/4 v4, 0x0

    .line 401
    .local v4, "offset":I
    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v8, " checkDeviceId -- start"

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    :cond_0
    :goto_0
    array-length v7, p1

    add-int/lit8 v7, v7, -0x2

    if-ge v4, v7, :cond_1

    .line 404
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "offset":I
    .local v5, "offset":I
    aget-byte v3, p1, v4

    .line 406
    .local v3, "len":I
    if-nez v3, :cond_2

    move v4, v5

    .line 434
    .end local v3    # "len":I
    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    :cond_1
    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v8, "checkDeviceId -- end"

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const/4 v0, -0x1

    :goto_1
    return v0

    .line 409
    .end local v4    # "offset":I
    .restart local v3    # "len":I
    .restart local v5    # "offset":I
    :cond_2
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    aget-byte v6, p1, v5

    .line 411
    .local v6, "type":B
    packed-switch v6, :pswitch_data_0

    .line 429
    add-int/lit8 v7, v3, -0x1

    add-int/2addr v4, v7

    goto :goto_0

    .line 414
    :pswitch_0
    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " checkDeviceId manufacture Data Len: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const/16 v7, 0x9

    if-lt v3, v7, :cond_0

    .line 416
    add-int/lit8 v4, v4, 0x4

    .line 418
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    aget-byte v7, p1, v4

    and-int/lit16 v7, v7, 0xff

    int-to-byte v2, v7

    .line 419
    .local v2, "deviceMsb":B
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    aget-byte v7, p1, v5

    and-int/lit16 v7, v7, 0xff

    int-to-byte v1, v7

    .line 421
    .local v1, "deviceLsb":B
    shl-int/lit8 v7, v2, 0x8

    or-int v0, v7, v1

    .line 422
    .local v0, "deviceID":I
    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkDeviceId  value : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 411
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public checkPurposeType([B)I
    .locals 8
    .param p1, "scanRecord"    # [B

    .prologue
    .line 441
    const/4 v1, 0x0

    .line 442
    .local v1, "offset":I
    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v6, " checkPurposeType -- start"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    :cond_0
    :goto_0
    array-length v5, p1

    add-int/lit8 v5, v5, -0x2

    if-ge v1, v5, :cond_1

    .line 445
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .local v2, "offset":I
    aget-byte v0, p1, v1

    .line 447
    .local v0, "len":I
    if-nez v0, :cond_2

    move v1, v2

    .line 473
    .end local v0    # "len":I
    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    :cond_1
    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v6, "checkPurposeType -- end"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const/4 v3, -0x1

    :goto_1
    return v3

    .line 450
    .end local v1    # "offset":I
    .restart local v0    # "len":I
    .restart local v2    # "offset":I
    :cond_2
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    aget-byte v4, p1, v2

    .line 452
    .local v4, "type":B
    packed-switch v4, :pswitch_data_0

    .line 468
    add-int/lit8 v5, v0, -0x1

    add-int/2addr v1, v5

    goto :goto_0

    .line 455
    :pswitch_0
    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " checkPurposeType manufacture Data Len: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const/16 v5, 0x9

    if-lt v0, v5, :cond_0

    .line 457
    add-int/lit8 v1, v1, 0x6

    .line 460
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    aget-byte v3, p1, v1

    .line 461
    .local v3, "purposeID":I
    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkPurposeType  value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 463
    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    goto :goto_1

    .line 452
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public clearAlreadyHFPConnectedDeviceList()Z
    .locals 2

    .prologue
    .line 1891
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v1, "[CMWS] clearAlreadyHFPConnectedDeviceList... "

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1893
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mAlreadyHFPConnectedDeviceList:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 1894
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v1, "[CMWS] isAlreadyHFPConnectedDeviceList is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1895
    const/4 v0, 0x0

    .line 1899
    :goto_0
    return v0

    .line 1898
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mAlreadyHFPConnectedDeviceList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1899
    const/4 v0, 0x1

    goto :goto_0
.end method

.method filterScanRecordforSupportedDevice([B)Z
    .locals 8
    .param p1, "scanRecord"    # [B

    .prologue
    const/4 v4, 0x1

    const/4 v7, -0x1

    const/4 v3, 0x0

    .line 333
    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v6, "filterScanRecordforSupportedDevice -- start"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->checkCompanyType([B)I

    move-result v0

    .line 336
    .local v0, "companyID":I
    if-ne v0, v7, :cond_1

    .line 354
    :cond_0
    :goto_0
    return v3

    .line 339
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->checkDeviceId([B)I

    move-result v1

    .line 340
    .local v1, "deviceType":I
    if-eq v1, v7, :cond_0

    .line 343
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->checkPurposeType([B)I

    move-result v2

    .line 344
    .local v2, "purpose":I
    if-eq v2, v7, :cond_0

    .line 347
    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " filterScanRecordforSupportedDevice Company: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "purpose Val: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "deviceType Val: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const/16 v5, 0x75

    if-ne v0, v5, :cond_0

    if-ne v1, v4, :cond_0

    if-ne v2, v4, :cond_0

    move v3, v4

    .line 352
    goto :goto_0
.end method

.method public getACDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    .locals 1
    .param p1, "macAddr"    # Ljava/lang/String;

    .prologue
    .line 1739
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mMultiACDeviceSet:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1740
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mMultiACDeviceSet:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    .line 1742
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAlreadyHFPConnectedDeviceList()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1876
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mAlreadyHFPConnectedDeviceList:Ljava/util/Set;

    return-object v0
.end method

.method public getAutoLockService(Ljava/lang/String;)Z
    .locals 9
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 1453
    const/4 v4, 0x0

    .line 1455
    .local v4, "result":Z
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getFeatureExchangeItem(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 1456
    .local v2, "items":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1457
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1458
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1460
    .local v1, "item":Ljava/lang/String;
    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[jdub] getAutoLockService: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1463
    const-string v5, "AUTO_LOCK_SERVICE"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-ne v5, v8, :cond_0

    .line 1464
    const-string v5, "#"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v0, v5, v8

    .line 1466
    .local v0, "autoLockService":Ljava/lang/String;
    const-string v5, "TRUE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v8, :cond_1

    .line 1467
    const/4 v4, 0x1

    .line 1474
    .end local v0    # "autoLockService":Ljava/lang/String;
    .end local v1    # "item":Ljava/lang/String;
    :cond_1
    return v4
.end method

.method public getBluetoothVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 1423
    const-string v0, "DEVICE_TYPE_DUAL_SAMSUNG"

    .line 1425
    .local v0, "btVersion":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getFeatureExchangeItem(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    .line 1426
    .local v3, "items":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1427
    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1428
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1429
    .local v2, "item":Ljava/lang/String;
    const-string v5, "BLUETOOTH_VERSION"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 1430
    .local v1, "contains":Z
    if-ne v1, v6, :cond_0

    .line 1431
    const-string v5, "#"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v0, v5, v6

    .line 1437
    .end local v1    # "contains":Z
    .end local v2    # "item":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public getBondedDevices()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 621
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v4, "[CMWS] Get Bonded Devices..."

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 625
    .local v1, "deviceList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;>;"
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mMutex:Ljava/lang/Object;

    monitor-enter v4

    .line 627
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mBondedDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 628
    .local v0, "address":Ljava/lang/String;
    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[CMWS] Bonded device: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    invoke-static {v0}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v2

    .line 631
    .local v2, "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 635
    .end local v0    # "address":Ljava/lang/String;
    .end local v2    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 634
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1
.end method

.method public getCOD(I)I
    .locals 3
    .param p1, "appearance"    # I

    .prologue
    .line 246
    const/4 v0, 0x0

    .line 248
    .local v0, "res":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mCODMappingTable:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 249
    if-nez v0, :cond_0

    .line 250
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v2, "No matched COD!"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const/4 v1, 0x0

    .line 254
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getCellularNetworkType(Ljava/lang/String;)Z
    .locals 9
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 1538
    const/4 v4, 0x0

    .line 1540
    .local v4, "result":Z
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getFeatureExchangeItem(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 1541
    .local v2, "items":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1542
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1543
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1545
    .local v1, "item":Ljava/lang/String;
    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[jdub] getCellularNetworkType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1548
    const-string v5, "CELLULAR"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-ne v5, v8, :cond_0

    .line 1549
    const-string v5, "#"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v0, v5, v8

    .line 1551
    .local v0, "cellularNetworkType":Ljava/lang/String;
    const-string v5, "TRUE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v8, :cond_1

    .line 1552
    const/4 v4, 0x1

    .line 1559
    .end local v0    # "cellularNetworkType":Ljava/lang/String;
    .end local v1    # "item":Ljava/lang/String;
    :cond_1
    return v4
.end method

.method public getConnectedDevices()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 662
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->showState()V

    .line 664
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 666
    .local v2, "deviceList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;>;"
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mMutex:Ljava/lang/Object;

    monitor-enter v4

    .line 668
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mConnectedProfileSet:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 669
    .local v1, "addresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 670
    .local v0, "address":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ALL:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {p0, v3, v6}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnected(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_0

    .line 674
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[CMWS] Connected device(ALL): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 679
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "addresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 678
    .restart local v1    # "addresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2
.end method

.method public getConnectedDevices(Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 8
    .param p1, "service"    # Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;",
            ")",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 641
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->showState()V

    .line 643
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 645
    .local v2, "deviceList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;>;"
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mMutex:Ljava/lang/Object;

    monitor-enter v4

    .line 647
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mConnectedProfileSet:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 648
    .local v1, "addresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 650
    .local v0, "address":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    invoke-virtual {p0, v3, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnected(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_0

    .line 651
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 652
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[CMWS] Connected device("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 656
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "addresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 655
    .restart local v1    # "addresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2
.end method

.method public getFeatureExchangeItem(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1301
    const-string v0, "PREF_NAME_DEVICE_FEATURE"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getPrefStringSet(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getLastConnectedDeviceAddr()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1106
    const-string v0, "PREF_NAME_CONNECTED_WEARABLE"

    const-string v1, "PREF_KEY_CONNECTED_WEARABLE"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getPrefStringSet(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getLastConnectedDeviceAddr_SCS()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1034
    const-string v0, "PREF_NAME_SCS_CONNECTED_WEARABLE"

    const-string v1, "PREF_KEY_CONNECTED_WEARABLE"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getPrefStringSet(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getLastConnectedDeviceAddr_bleAcs()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1164
    const-string v0, "PREF_NAME_CONNECTED_WEARABLE_BLEACS"

    const-string v1, "PREF_KEY_CONNECTED_WEARABLE"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getPrefStringSet(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getLocalBluetoothVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1442
    const/4 v2, 0x0

    .line 1444
    .local v2, "version":Ljava/lang/String;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1445
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 1447
    .local v1, "address":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getBluetoothVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1449
    return-object v2
.end method

.method public getRandomLEAddressSupport(Ljava/lang/String;)Z
    .locals 9
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 1510
    const/4 v4, 0x0

    .line 1511
    .local v4, "result":Z
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getFeatureExchangeItem(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 1512
    .local v1, "items":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1513
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1514
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1515
    .local v0, "item":Ljava/lang/String;
    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[jdub] getRandomLEAddressSupport: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1516
    const-string v5, "RANDOM_LE_ADDRESS_SUPPORT"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-ne v5, v8, :cond_0

    .line 1517
    const-string v5, "#"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v3, v5, v8

    .line 1518
    .local v3, "randomLESupport":Ljava/lang/String;
    const-string v5, "TRUE"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v8, :cond_1

    .line 1519
    const/4 v4, 0x1

    .line 1524
    .end local v0    # "item":Ljava/lang/String;
    .end local v3    # "randomLESupport":Ljava/lang/String;
    :cond_1
    return v4
.end method

.method public getRequestedDeviceList()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1817
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mRequestedDeviceList:Ljava/util/Set;

    return-object v0
.end method

.method public getRssiOffset(Ljava/lang/String;)[I
    .locals 11
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1480
    const/4 v4, 0x0

    .line 1482
    .local v4, "offset":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getFeatureExchangeItem(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 1483
    .local v2, "items":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1484
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1485
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1486
    .local v1, "item":Ljava/lang/String;
    const-string v7, "RSSI_OFFSET"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 1487
    .local v0, "contains":Z
    if-ne v0, v8, :cond_0

    .line 1488
    const-string v7, "#"

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v4, v7, v8

    .line 1494
    .end local v0    # "contains":Z
    .end local v1    # "item":Ljava/lang/String;
    :cond_1
    if-eqz v4, :cond_2

    .line 1495
    const-string v7, "_"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1497
    .local v6, "str":[Ljava/lang/String;
    const/4 v7, 0x3

    new-array v5, v7, [I

    .line 1498
    .local v5, "rssi":[I
    aget-object v7, v6, v9

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v5, v9

    .line 1499
    aget-object v7, v6, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v5, v8

    .line 1500
    aget-object v7, v6, v10

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v5, v10

    .line 1505
    .end local v5    # "rssi":[I
    .end local v6    # "str":[Ljava/lang/String;
    :goto_0
    return-object v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public getScsPreferenceSet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2070
    const-string v0, "PREF_NAME_SCS_CONNECTED_WEARABLE"

    const-string v1, "PREF_KEY_SCS_PREFERENCE_SET"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getPrefStringSet(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getServiceState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;
    .locals 6
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    .param p2, "service"    # Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    .prologue
    .line 696
    if-nez p1, :cond_0

    .line 697
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v4, "[CMWS] Get Service State...: Device Null"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->UNKNOWN:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    .line 735
    :goto_0
    return-object v1

    .line 701
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 702
    .local v0, "address":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->UNKNOWN:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    .line 704
    .local v1, "res":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;
    if-nez v0, :cond_1

    .line 705
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v4, "[CMWS] getServiceState ERROR -> address is null"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 709
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mMutex:Ljava/lang/Object;

    monitor-enter v4

    .line 710
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mConnectedProfileSet:Ljava/util/HashMap;

    if-eqz v3, :cond_3

    .line 711
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mConnectedProfileSet:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 712
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->UNKNOWN:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    .line 713
    monitor-exit v4

    goto :goto_0

    .line 736
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 716
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mConnectedProfileSet:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->convertIntToArray(I)[I

    move-result-object v2

    .line 717
    .local v2, "temp":[I
    iget v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->NUM_SERVICE_TYPE:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p2}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ordinal()I

    move-result v5

    sub-int/2addr v3, v5

    aget v3, v2, v3

    packed-switch v3, :pswitch_data_0

    .line 731
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->UNKNOWN:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    .line 735
    .end local v2    # "temp":[I
    :cond_3
    :goto_1
    monitor-exit v4

    goto :goto_0

    .line 719
    .restart local v2    # "temp":[I
    :pswitch_0
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    .line 720
    goto :goto_1

    .line 722
    :pswitch_1
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTING:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    .line 723
    goto :goto_1

    .line 725
    :pswitch_2
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    .line 726
    goto :goto_1

    .line 728
    :pswitch_3
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTING:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 729
    goto :goto_1

    .line 717
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getSupportableServices(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1926
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mSupportServiceListMutex:Ljava/lang/Object;

    monitor-enter v5

    .line 1928
    const/4 v1, 0x0

    .line 1929
    .local v1, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mSupportableServicesMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/util/ArrayList;

    move-object v1, v0

    .line 1931
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1932
    :cond_0
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v6, "[SDP] No Supportable Service"

    invoke-static {v4, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1933
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .end local v1    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v2, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v1, v2

    .line 1936
    .end local v2    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v1    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1937
    .local v3, "service":Ljava/lang/String;
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[SDP] Supportable Service: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1941
    .end local v3    # "service":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1940
    :cond_2
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1
.end method

.method public getWearableProfileVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 2184
    const-string v4, "UNKNOWN"

    .line 2186
    .local v4, "profileVersion":Ljava/lang/String;
    const-string v5, "PREF_SAP_PROFILE_VERSION"

    invoke-direct {p0, v5, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getPrefStringSet(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 2187
    .local v2, "items":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2188
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2189
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2190
    .local v1, "item":Ljava/lang/String;
    const-string v5, "PROFILE_VERSION"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 2191
    .local v0, "contains":Z
    if-ne v0, v6, :cond_0

    .line 2193
    const-string v5, "#"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v4, v5, v6

    .line 2198
    .end local v0    # "contains":Z
    .end local v1    # "item":Ljava/lang/String;
    :cond_1
    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getWearableProfileVersion: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2199
    return-object v4
.end method

.method public getWifiNetworkType(Ljava/lang/String;)Z
    .locals 9
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 1563
    const/4 v3, 0x0

    .line 1565
    .local v3, "result":Z
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getFeatureExchangeItem(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 1566
    .local v1, "items":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1567
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1568
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1570
    .local v0, "item":Ljava/lang/String;
    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[jdub] getWifiNetworkType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1573
    const-string v5, "WIFI_SERVICE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-ne v5, v8, :cond_0

    .line 1574
    const-string v5, "#"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v4, v5, v8

    .line 1576
    .local v4, "wifiNetworkType":Ljava/lang/String;
    const-string v5, "TRUE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v8, :cond_1

    .line 1577
    const/4 v3, 0x1

    .line 1584
    .end local v0    # "item":Ljava/lang/String;
    .end local v4    # "wifiNetworkType":Ljava/lang/String;
    :cond_1
    return v3
.end method

.method public getWifiP2pMacAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 2142
    const/4 v4, 0x0

    .line 2144
    .local v4, "wifiP2pMac":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getFeatureExchangeItem(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 2145
    .local v2, "items":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2146
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2147
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2148
    .local v1, "item":Ljava/lang/String;
    const-string v5, "WIFIP2P_MAC"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 2149
    .local v0, "contains":Z
    if-ne v0, v6, :cond_0

    .line 2150
    const-string v5, "#"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v4, v5, v6

    .line 2156
    .end local v0    # "contains":Z
    .end local v1    # "item":Ljava/lang/String;
    :cond_1
    return-object v4
.end method

.method public initDeviceSetForAC(Ljava/lang/String;)V
    .locals 4
    .param p1, "macAddr"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1724
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getACDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v0

    .line 1726
    .local v0, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-eqz v0, :cond_0

    .line 1727
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v2, "[CMAC] initDeviceSetForAC : Resetting the AC flags for multiAC"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1729
    invoke-virtual {v0, v3}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setGattObjectTryCnt(I)V

    .line 1730
    invoke-virtual {v0, v3}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRSSIVFlag(Z)V

    .line 1731
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setIsFirstAttempt(Z)V

    .line 1732
    invoke-virtual {v0, v3}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRSSICheckerState(I)V

    .line 1733
    invoke-virtual {v0, v3}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRecoveryFlag(Z)V

    .line 1734
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->updateACdeviceSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    .line 1736
    :cond_0
    return-void
.end method

.method public initFeatureExchangeItem(Ljava/lang/String;)V
    .locals 9
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 1311
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "PREF_NAME_DEVICE_FEATURE"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1313
    .local v5, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1314
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 1315
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1318
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1319
    .local v1, "array":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v6, "BLUETOOTH_VERSION#DEVICE_TYPE_UNKOWN"

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1320
    const-string v6, "AUTO_LOCK_SERVICE#UNKOWN"

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1321
    const-string v6, "RANDOM_LE_ADDRESS_SUPPORT#UNKOWN"

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1322
    invoke-interface {v2, p1, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 1323
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1325
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1326
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 1328
    .local v3, "localAddress":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->getLocalBluetoothVersionStringSet()Ljava/util/Set;

    move-result-object v4

    .line 1329
    .local v4, "localBluetoothVersionStringSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 1330
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1331
    return-void
.end method

.method public initialiseScsPreferenceMap()V
    .locals 5

    .prologue
    .line 2101
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getScsPreferenceSet()Ljava/util/Set;

    move-result-object v1

    .line 2103
    .local v1, "savedSCSPreferenceSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v1, :cond_1

    .line 2105
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v3, "no saved prefernces..."

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2113
    :cond_0
    return-void

    .line 2109
    :cond_1
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2111
    .local v0, "address":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mScsPreferenceMap:Ljava/util/HashMap;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public initialize()V
    .locals 5

    .prologue
    .line 161
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v2, "[CMWS] Init WearableState"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->values()[Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->NUM_SERVICE_TYPE:I

    .line 165
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CMWS] NUM_SERVICE_TYPE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->NUM_SERVICE_TYPE:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 168
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mConnectedProfileSet:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 169
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 170
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mConnectedDeviceSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 171
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mConnectedDeviceSet_bleAcs:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 172
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mConnectedDeviceSet_SCS:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 173
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mScsPreferenceSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 174
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mMultiACDeviceSet:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 175
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mSupportableServicesMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 176
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mRequestedDeviceList:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 177
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mAlreadyHFPConnectedDeviceList:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 178
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mScsPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 179
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setCODMappingTable()V

    .line 183
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isVersionUpdate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v2, "[CMWS] clear pref data for device info"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v1, "PREF_NAME_CONNECTED_WEARABLE"

    invoke-direct {p0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->clearPrefData(Ljava/lang/String;)Z

    .line 186
    const-string v1, "PREF_NAME_CONNECTED_WEARABLE_BLEACS"

    invoke-direct {p0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->clearPrefData(Ljava/lang/String;)Z

    .line 187
    const-string v1, "PREF_NAME_SCS_CONNECTED_WEARABLE"

    invoke-direct {p0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->clearPrefData(Ljava/lang/String;)Z

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getLastConnectedDeviceAddr()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mConnectedDeviceSet:Ljava/util/Set;

    .line 191
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getLastConnectedDeviceAddr_bleAcs()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mConnectedDeviceSet_bleAcs:Ljava/util/Set;

    .line 192
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getLastConnectedDeviceAddr_SCS()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mConnectedDeviceSet_SCS:Ljava/util/Set;

    .line 193
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getScsPreferenceSet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mScsPreferenceSet:Ljava/util/Set;

    .line 195
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->initialiseScsPreferenceMap()V

    .line 198
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mConnectedDeviceSet:Ljava/util/Set;

    if-nez v1, :cond_2

    .line 199
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v2, "[CMWS] Nothing to be saved"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_1
    return-void

    .line 179
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 202
    :cond_2
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CMWS] Number of Saved address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mConnectedDeviceSet:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mConnectedDeviceSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 206
    .local v0, "address":Ljava/lang/String;
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CMWS] set saved address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0, v0}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->putRequestedDeviceList(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public isAlreadyHFPConnectedDeviceList(Ljava/lang/String;)Z
    .locals 2
    .param p1, "macAddr"    # Ljava/lang/String;

    .prologue
    .line 1880
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v1, "[CMWS] isAlreadyHFPConnectedDeviceList... "

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1882
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mAlreadyHFPConnectedDeviceList:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 1883
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v1, "[CMWS] isAlreadyHFPConnectedDeviceList is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1884
    const/4 v0, 0x0

    .line 1887
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mAlreadyHFPConnectedDeviceList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isBREDRConnecting(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v0, 0x0

    .line 1945
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mBrEdrConnectionMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1947
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mBrEdrConnectionStateMap:Ljava/util/HashMap;

    if-nez v2, :cond_0

    .line 1948
    monitor-exit v1

    .line 1955
    :goto_0
    return v0

    .line 1951
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mBrEdrConnectionStateMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1952
    monitor-exit v1

    goto :goto_0

    .line 1956
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1955
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mBrEdrConnectionStateMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public isBonded(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z
    .locals 3
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .prologue
    .line 612
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mBondedListMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 614
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mBondedDeviceList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 615
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isConnected(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z
    .locals 12
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    .param p2, "service"    # Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    .prologue
    .line 803
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 804
    .local v0, "address":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 805
    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v8, "[CMWS] isConnected ERROR -> address is null"

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    const/4 v7, 0x0

    .line 887
    :goto_0
    return v7

    .line 809
    :cond_0
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mMutex:Ljava/lang/Object;

    monitor-enter v8

    .line 810
    :try_start_0
    iget-object v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mConnectedProfileSet:Ljava/util/HashMap;

    if-eqz v7, :cond_b

    .line 811
    iget-object v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mConnectedProfileSet:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_1

    .line 812
    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v9, "[CMWS] the device is not paired"

    invoke-static {v7, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    const/4 v7, 0x0

    monitor-exit v8

    goto :goto_0

    .line 888
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 816
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mConnectedProfileSet:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->convertIntToArray(I)[I

    move-result-object v6

    .line 818
    .local v6, "temp":[I
    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ALL:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    if-ne p2, v7, :cond_a

    .line 824
    invoke-virtual {p0, v0}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getSupportableServices(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 826
    .local v5, "servicelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_3

    .line 827
    :cond_2
    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v9, "[CMWS] isConnected : False(no service)"

    invoke-static {v7, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    const/4 v7, 0x0

    monitor-exit v8

    goto :goto_0

    .line 835
    :cond_3
    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 836
    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v9, "[CMWS] isConnected : False(SPP service not suported)"

    invoke-static {v7, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    const/4 v7, 0x0

    monitor-exit v8

    goto :goto_0

    .line 844
    :cond_4
    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->HFP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 845
    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v9, "[CMWS] isConnected : False(HFP service not suported)"

    invoke-static {v7, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    const/4 v7, 0x0

    monitor-exit v8

    goto :goto_0

    .line 849
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 851
    .local v3, "s":Ljava/lang/String;
    const/4 v2, 0x1

    .line 853
    .local v2, "isConnected":Z
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ALL:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 856
    .local v4, "serviceType":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;
    :try_start_2
    invoke-static {v3}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->valueOf(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 861
    :goto_1
    :try_start_3
    sget-object v9, Lcom/samsung/android/hostmanager/connectionmanager/WearableState$1;->$SwitchMap$com$samsung$android$hostmanager$connectionmanager$Event$ServiceType:[I

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 875
    :goto_2
    if-nez v2, :cond_6

    .line 876
    const/4 v7, 0x0

    monitor-exit v8

    goto/16 :goto_0

    .line 857
    :catch_0
    move-exception v1

    .line 858
    .local v1, "e":Ljava/lang/Exception;
    sget-object v9, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Catched *"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 864
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_0
    iget v9, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->NUM_SERVICE_TYPE:I

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ordinal()I

    move-result v10

    sub-int/2addr v9, v10

    aget v9, v6, v9

    sget-object v10, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    .line 865
    invoke-virtual {v10}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->ordinal()I

    move-result v10

    if-ne v9, v10, :cond_7

    const/4 v2, 0x1

    .line 866
    :goto_3
    goto :goto_2

    .line 865
    :cond_7
    const/4 v2, 0x0

    goto :goto_3

    .line 868
    :pswitch_1
    iget v9, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->NUM_SERVICE_TYPE:I

    add-int/lit8 v9, v9, -0x1

    sget-object v10, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v10}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ordinal()I

    move-result v10

    sub-int/2addr v9, v10

    aget v9, v6, v9

    sget-object v10, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    .line 869
    invoke-virtual {v10}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->ordinal()I

    move-result v10

    if-ne v9, v10, :cond_8

    iget v9, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->NUM_SERVICE_TYPE:I

    add-int/lit8 v9, v9, -0x1

    sget-object v10, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->HFP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v10}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ordinal()I

    move-result v10

    sub-int/2addr v9, v10

    aget v9, v6, v9

    sget-object v10, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    .line 870
    invoke-virtual {v10}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->ordinal()I

    move-result v10

    if-ne v9, v10, :cond_8

    const/4 v2, 0x1

    :goto_4
    goto :goto_2

    :cond_8
    const/4 v2, 0x0

    goto :goto_4

    .line 880
    .end local v2    # "isConnected":Z
    .end local v3    # "s":Ljava/lang/String;
    .end local v4    # "serviceType":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;
    :cond_9
    const/4 v7, 0x1

    monitor-exit v8

    goto/16 :goto_0

    .line 882
    .end local v5    # "servicelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_a
    iget v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->NUM_SERVICE_TYPE:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p2}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ordinal()I

    move-result v9

    sub-int/2addr v7, v9

    aget v7, v6, v7

    sget-object v9, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v9}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->ordinal()I

    move-result v9

    if-ne v7, v9, :cond_b

    .line 884
    const/4 v7, 0x1

    monitor-exit v8

    goto/16 :goto_0

    .line 887
    .end local v6    # "temp":[I
    :cond_b
    const/4 v7, 0x0

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 861
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isConnectedDeviceAddr(Ljava/lang/String;)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 1132
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CMWS] isConnectedDeviceAddr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    if-nez p1, :cond_0

    .line 1135
    const/4 v0, 0x0

    .line 1137
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mConnectedDeviceSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isConnectedDeviceAddr_SCS(Ljava/lang/String;)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 1038
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CMWS] isConnectedDeviceAddr_SCS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    if-nez p1, :cond_0

    .line 1041
    const/4 v0, 0x0

    .line 1043
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mConnectedDeviceSet_SCS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isConnectedDevices(Ljava/lang/String;)Z
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 685
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->HFP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {p0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getConnectedDevices(Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    .line 686
    .local v1, "devices":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;>;"
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .line 687
    .local v0, "device":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 688
    const/4 v2, 0x1

    .line 691
    .end local v0    # "device":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isContainDeviceSet(Ljava/lang/String;)Z
    .locals 1
    .param p1, "macAddr"    # Ljava/lang/String;

    .prologue
    .line 1770
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mMultiACDeviceSet:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1771
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mMultiACDeviceSet:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 1773
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isDisconnected(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z
    .locals 12
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    .param p2, "service"    # Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    .prologue
    .line 894
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 895
    .local v0, "address":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 896
    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v8, "[CMWS] isDisconnected ERROR -> address is null"

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    const/4 v7, 0x0

    .line 958
    :goto_0
    return v7

    .line 900
    :cond_0
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mMutex:Ljava/lang/Object;

    monitor-enter v8

    .line 901
    :try_start_0
    iget-object v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mConnectedProfileSet:Ljava/util/HashMap;

    if-eqz v7, :cond_a

    .line 902
    iget-object v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mConnectedProfileSet:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_1

    .line 903
    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v9, "[CMWS] the device is not paired"

    invoke-static {v7, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    const/4 v7, 0x0

    monitor-exit v8

    goto :goto_0

    .line 959
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 907
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mConnectedProfileSet:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->convertIntToArray(I)[I

    move-result-object v6

    .line 909
    .local v6, "temp":[I
    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ALL:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    if-ne p2, v7, :cond_9

    .line 911
    invoke-virtual {p0, v0}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getSupportableServices(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 913
    .local v5, "servicelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_3

    .line 914
    :cond_2
    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v9, "[CMWS] isDisconnected() - service list is empty"

    invoke-static {v7, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    const/4 v7, 0x0

    monitor-exit v8

    goto :goto_0

    .line 918
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 920
    .local v3, "s":Ljava/lang/String;
    const/4 v2, 0x1

    .line 922
    .local v2, "isDisconnected":Z
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ALL:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 925
    .local v4, "serviceType":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;
    :try_start_2
    invoke-static {v3}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->valueOf(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 930
    :goto_1
    :try_start_3
    sget-object v9, Lcom/samsung/android/hostmanager/connectionmanager/WearableState$1;->$SwitchMap$com$samsung$android$hostmanager$connectionmanager$Event$ServiceType:[I

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 945
    :goto_2
    if-nez v2, :cond_4

    .line 946
    const/4 v7, 0x0

    monitor-exit v8

    goto :goto_0

    .line 926
    :catch_0
    move-exception v1

    .line 927
    .local v1, "e":Ljava/lang/Exception;
    sget-object v9, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Catched *"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 933
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_0
    iget v9, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->NUM_SERVICE_TYPE:I

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ordinal()I

    move-result v10

    sub-int/2addr v9, v10

    aget v9, v6, v9

    sget-object v10, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    .line 934
    invoke-virtual {v10}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->ordinal()I

    move-result v10

    if-eq v9, v10, :cond_5

    iget v9, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->NUM_SERVICE_TYPE:I

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ordinal()I

    move-result v10

    sub-int/2addr v9, v10

    aget v9, v6, v9

    sget-object v10, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->UNKNOWN:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    .line 935
    invoke-virtual {v10}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->ordinal()I

    move-result v10

    if-ne v9, v10, :cond_6

    :cond_5
    const/4 v2, 0x1

    .line 936
    :goto_3
    goto :goto_2

    .line 935
    :cond_6
    const/4 v2, 0x0

    goto :goto_3

    .line 938
    :pswitch_1
    iget v9, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->NUM_SERVICE_TYPE:I

    add-int/lit8 v9, v9, -0x1

    sget-object v10, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v10}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ordinal()I

    move-result v10

    sub-int/2addr v9, v10

    aget v9, v6, v9

    sget-object v10, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    .line 939
    invoke-virtual {v10}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->ordinal()I

    move-result v10

    if-ne v9, v10, :cond_7

    iget v9, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->NUM_SERVICE_TYPE:I

    add-int/lit8 v9, v9, -0x1

    sget-object v10, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->HFP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v10}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ordinal()I

    move-result v10

    sub-int/2addr v9, v10

    aget v9, v6, v9

    sget-object v10, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    .line 940
    invoke-virtual {v10}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->ordinal()I

    move-result v10

    if-ne v9, v10, :cond_7

    const/4 v2, 0x1

    :goto_4
    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    goto :goto_4

    .line 950
    .end local v2    # "isDisconnected":Z
    .end local v3    # "s":Ljava/lang/String;
    .end local v4    # "serviceType":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;
    :cond_8
    const/4 v7, 0x1

    monitor-exit v8

    goto/16 :goto_0

    .line 952
    .end local v5    # "servicelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9
    iget v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->NUM_SERVICE_TYPE:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p2}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ordinal()I

    move-result v9

    sub-int/2addr v7, v9

    aget v7, v6, v7

    sget-object v9, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v9}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->ordinal()I

    move-result v9

    if-ne v7, v9, :cond_a

    .line 954
    const/4 v7, 0x1

    monitor-exit v8

    goto/16 :goto_0

    .line 958
    .end local v6    # "temp":[I
    :cond_a
    const/4 v7, 0x0

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 930
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isFeatureExchangeItemValid(Ljava/lang/String;)Z
    .locals 14
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    .line 1334
    const/4 v7, 0x0

    .line 1336
    .local v7, "result":Z
    const/4 v3, 0x0

    .line 1337
    .local v3, "isBluetoothVersionValid":Z
    const/4 v2, 0x0

    .line 1339
    .local v2, "isAutoLockServiceValid":Z
    const-string v9, "PREF_NAME_DEVICE_FEATURE"

    invoke-direct {p0, v9, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getPrefStringSet(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    .line 1340
    .local v5, "items":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1341
    .local v6, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1342
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1344
    .local v4, "item":Ljava/lang/String;
    if-nez v4, :cond_1

    const/4 v9, 0x0

    .line 1389
    .end local v4    # "item":Ljava/lang/String;
    :goto_1
    return v9

    .line 1347
    .restart local v4    # "item":Ljava/lang/String;
    :cond_1
    const-string v9, "BLUETOOTH_VERSION"

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-ne v9, v12, :cond_2

    .line 1348
    sget-object v9, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[jdub] isFeatureExchangeItemValid, BLUETOOTH_VERSION: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    const-string v9, "#"

    invoke-static {v4, v9}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->stringSplit(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1351
    .local v8, "splitStrAry":[Ljava/lang/String;
    array-length v9, v8

    if-ne v9, v13, :cond_0

    .line 1352
    aget-object v1, v8, v12

    .line 1353
    .local v1, "btVersion":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1354
    const-string v9, "DEVICE_TYPE_UNKOWN"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eq v9, v12, :cond_0

    .line 1355
    const/4 v3, 0x1

    goto :goto_0

    .line 1366
    .end local v1    # "btVersion":Ljava/lang/String;
    .end local v8    # "splitStrAry":[Ljava/lang/String;
    :cond_2
    const-string v9, "AUTO_LOCK_SERVICE"

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-ne v9, v12, :cond_0

    .line 1367
    sget-object v9, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[jdub] isFeatureExchangeItemValid, AUTO_LOCK_SERVICE: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    const-string v9, "#"

    invoke-static {v4, v9}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->stringSplit(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1370
    .restart local v8    # "splitStrAry":[Ljava/lang/String;
    array-length v9, v8

    if-ne v9, v13, :cond_0

    .line 1371
    aget-object v0, v8, v12

    .line 1372
    .local v0, "autoLock":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1373
    const-string v9, "UNKOWN"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eq v9, v12, :cond_0

    .line 1374
    const/4 v2, 0x1

    goto :goto_0

    .line 1385
    .end local v0    # "autoLock":Ljava/lang/String;
    .end local v4    # "item":Ljava/lang/String;
    .end local v8    # "splitStrAry":[Ljava/lang/String;
    :cond_3
    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    .line 1386
    const/4 v7, 0x1

    :cond_4
    move v9, v7

    .line 1389
    goto :goto_1
.end method

.method public isFindPeerComplete(Ljava/lang/String;)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1405
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mFindPeerMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1413
    :goto_0
    return v0

    .line 1408
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mFindPeerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1409
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v2, "[CMWS] mFindPeerMap.get is null "

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1413
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mFindPeerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public isGearNotifiedRandomLeTrueFlag(Ljava/lang/String;)Z
    .locals 8
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 2241
    const/4 v4, 0x0

    .line 2243
    .local v4, "result":Z
    const-string v5, "PREF_WEARABLE_ADVERTISE_MODE"

    invoke-direct {p0, v5, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getPrefStringSet(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 2244
    .local v2, "items":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2245
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2246
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2247
    .local v1, "item":Ljava/lang/String;
    const-string v5, "IS_GEAR_NOTIFIED_RANDOM_LE_SUPPORT#TRUE"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 2248
    .local v0, "contains":Z
    const/4 v5, 0x1

    if-ne v0, v5, :cond_0

    .line 2250
    const/4 v4, 0x1

    .line 2255
    .end local v0    # "contains":Z
    .end local v1    # "item":Ljava/lang/String;
    :cond_1
    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isGearNotifiedRandomLeTrueFlag: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2256
    return v4
.end method

.method public isLastConnectedDevice_bleAcs(Ljava/lang/String;)Z
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 1169
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getLastConnectedDeviceAddr_bleAcs()Ljava/util/Set;

    move-result-object v0

    .line 1170
    .local v0, "addrSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 1171
    const/4 v1, 0x0

    .line 1173
    :goto_0
    return v1

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public isRequestedDeviceList(Ljava/lang/String;)Z
    .locals 2
    .param p1, "macAddr"    # Ljava/lang/String;

    .prologue
    .line 1821
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v1, "[CMWS] isRequestedDeviceList... "

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1823
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mRequestedDeviceList:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 1824
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v1, "[CMWS] RequestedDeviceList is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1825
    const/4 v0, 0x0

    .line 1828
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mRequestedDeviceList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isScsPreference(Ljava/lang/String;)Z
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 2117
    const/4 v0, 0x0

    .line 2119
    .local v0, "ret":Ljava/lang/Boolean;
    if-nez p1, :cond_0

    .line 2120
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v3, "device is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2133
    :goto_0
    return v1

    .line 2124
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mScsPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ret":Ljava/lang/Boolean;
    check-cast v0, Ljava/lang/Boolean;

    .line 2126
    .restart local v0    # "ret":Ljava/lang/Boolean;
    if-nez v0, :cond_1

    .line 2127
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v3, "SCS prefrence is not set"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2131
    :cond_1
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SCS Preference ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2133
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method public isScsSupported(Ljava/lang/String;)Z
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 1528
    const/4 v0, 0x0

    .line 1530
    .local v0, "result":Z
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getCellularNetworkType(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getWifiNetworkType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1532
    :goto_0
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[jdub] isScsSupported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1534
    return v0

    .line 1530
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVersionUpdate()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1111
    const-string v3, "PREF_APP_INFO"

    const-string v4, "PREF_KEY_APP_VERSION_INFO"

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getPrefString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1112
    .local v1, "savedVersion":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->getHMVersion()Ljava/lang/String;

    move-result-object v0

    .line 1114
    .local v0, "currentVersion":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 1115
    :cond_0
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v4, "[CMWS] version is null"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    :goto_0
    return v2

    .line 1118
    :cond_1
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CMWS] Saved Version - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CMWS] Current Version - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    const-string v3, "none"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1122
    :cond_2
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v3, "[CMWS] Version Update!!"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    const-string v2, "PREF_APP_INFO"

    const-string v3, "PREF_KEY_APP_VERSION_INFO"

    invoke-direct {p0, v2, v3, v0}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->putPrefString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1124
    const/4 v2, 0x1

    goto :goto_0

    .line 1126
    :cond_3
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v4, "[CMWS] Same Version"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isWearable(Landroid/bluetooth/BluetoothClass;)Z
    .locals 7
    .param p1, "cod"    # Landroid/bluetooth/BluetoothClass;

    .prologue
    .line 259
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v5, "[WEARABLE] isWearable(COD)"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const/4 v3, 0x0

    .line 263
    .local v3, "result":Z
    if-eqz p1, :cond_1

    .line 264
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v2

    .line 265
    .local v2, "majorDeviceClass":I
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    .line 266
    .local v0, "deviceClass":I
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothClass;->hashCode()I

    move-result v1

    .line 268
    .local v1, "hashCode":I
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[WEARABLE] isWearable() - majorDeviceClass: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[WEARABLE] isWearable() - deviceClass: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[WEARABLE] isWearable() - cod hashcode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const/16 v4, 0x700

    if-ne v2, v4, :cond_0

    const/16 v4, 0x704

    if-ne v0, v4, :cond_0

    .line 274
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[WEARABLE] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": isWearable() - WEARABLE && WEARABLE_WRIST_WATCH"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const/4 v3, 0x1

    .line 285
    .end local v0    # "deviceClass":I
    .end local v1    # "hashCode":I
    .end local v2    # "majorDeviceClass":I
    :goto_0
    return v3

    .line 278
    .restart local v0    # "deviceClass":I
    .restart local v1    # "hashCode":I
    .restart local v2    # "majorDeviceClass":I
    :cond_0
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[WEARABLE] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": This is NOT an wearable device"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const/4 v3, 0x0

    goto :goto_0

    .line 282
    .end local v0    # "deviceClass":I
    .end local v1    # "hashCode":I
    .end local v2    # "majorDeviceClass":I
    :cond_1
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v5, "[WEARABLE] cod is null"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isWearableDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 290
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WEARABLE] isWearableDevice("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .line 292
    .local v0, "cod":Landroid/bluetooth/BluetoothClass;
    invoke-virtual {p0, v0}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isWearable(Landroid/bluetooth/BluetoothClass;)Z

    move-result v1

    return v1
.end method

.method public putAlreadyHFPConnectedDeviceList(Ljava/lang/String;)Z
    .locals 5
    .param p1, "macAddr"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1833
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CMWS] putAlreadyHFPConnectedDeviceList : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1835
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mAlreadyHFPConnectedDeviceList:Ljava/util/Set;

    if-nez v2, :cond_0

    .line 1836
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v2, "[CMWS] putAlreadyHFPConnectedDeviceList is null"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1850
    :goto_0
    return v0

    .line 1840
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mAlreadyHFPConnectedDeviceList:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v1, :cond_1

    .line 1841
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v2, "[CMWS] address already exist in putAlreadyHFPConnectedDeviceList"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1846
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mAlreadyHFPConnectedDeviceList:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1847
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v2, "[CMWS] error: putAlreadyHFPConnectedDeviceList.add"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1850
    goto :goto_0
.end method

.method public putDeviceMacForACDeviceSet(Ljava/lang/String;)V
    .locals 4
    .param p1, "macAddr"    # Ljava/lang/String;

    .prologue
    .line 1709
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mMultiACDeviceSet:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 1711
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    invoke-direct {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;-><init>()V

    .line 1712
    .local v0, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mMultiACDeviceSet:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    .line 1715
    .local v1, "prevSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-eqz v1, :cond_0

    .line 1716
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v3, "putDeviceMacForACDeviceSet, AutoConnectSet is alread exist"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1718
    invoke-direct {p0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->closeAutoConnectSet(Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    .line 1721
    .end local v0    # "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    .end local v1    # "prevSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    :cond_0
    return-void
.end method

.method public putLastConnectedDeviceAddr(Ljava/lang/String;)Z
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 1062
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CMWS] putLastConnectedDeviceAddr: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mConnectedDeviceSet:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 1065
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v1, "[CMWS] mPrefSet is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    const/4 v0, 0x0

    .line 1079
    :goto_0
    return v0

    .line 1069
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mConnectedDeviceSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v0, :cond_1

    .line 1070
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v2, "[CMWS] address already exist in mPrefSet"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1075
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mConnectedDeviceSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1076
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v1, "[CMWS] error: mPrefSet.add"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    :cond_2
    const-string v0, "PREF_NAME_CONNECTED_WEARABLE"

    const-string v1, "PREF_KEY_CONNECTED_WEARABLE"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mConnectedDeviceSet:Ljava/util/Set;

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->updatePrefStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v0

    goto :goto_0
.end method

.method public putLastConnectedDeviceAddr_SCS(Ljava/lang/String;)Z
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 990
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CMWS] putLastConnectedDeviceAddr_SCS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mConnectedDeviceSet_SCS:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 993
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v1, "[CMWS] mPrefSet is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    const/4 v0, 0x0

    .line 1007
    :goto_0
    return v0

    .line 997
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mConnectedDeviceSet_SCS:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v0, :cond_1

    .line 998
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v2, "[CMWS] address already exist in mPrefSet"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1003
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mConnectedDeviceSet_SCS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1004
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v1, "[CMWS] error: mPrefSet.add"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    :cond_2
    const-string v0, "PREF_NAME_SCS_CONNECTED_WEARABLE"

    const-string v1, "PREF_KEY_CONNECTED_WEARABLE"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mConnectedDeviceSet_SCS:Ljava/util/Set;

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->updatePrefStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v0

    goto :goto_0
.end method

.method public putLastConnectedDeviceAddr_bleAcs(Ljava/lang/String;)Z
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 1142
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CMWS] putLastConnectedDeviceAddr_bleAcs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mConnectedDeviceSet_bleAcs:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 1145
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v1, "[CMWS] mPrefSet is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    const/4 v0, 0x0

    .line 1159
    :goto_0
    return v0

    .line 1149
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mConnectedDeviceSet_bleAcs:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v0, :cond_1

    .line 1150
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v2, "[CMWS] address already exist in mPrefSet"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1155
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mConnectedDeviceSet_bleAcs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1156
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v1, "[CMWS] error: mPrefSet.add"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    :cond_2
    const-string v0, "PREF_NAME_CONNECTED_WEARABLE_BLEACS"

    const-string v1, "PREF_KEY_CONNECTED_WEARABLE"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mConnectedDeviceSet_bleAcs:Ljava/util/Set;

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->updatePrefStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v0

    goto :goto_0
.end method

.method public putRequestedDeviceList(Ljava/lang/String;)Z
    .locals 6
    .param p1, "macAddr"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1791
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CMWS] putRequestedDeviceList : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1793
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mRequestedDeviceList:Ljava/util/Set;

    if-nez v3, :cond_0

    .line 1794
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v3, "[CMWS] RequestedDeviceList is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1813
    :goto_0
    return v1

    .line 1798
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mRequestedDeviceList:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v2, :cond_1

    .line 1799
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v3, "[CMWS] address already exist in RequestedDeviceList"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1804
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mRequestedDeviceList:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1805
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v3, "[CMWS] error: RequestedDeviceList.add"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1810
    :cond_2
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v0

    .line 1811
    .local v0, "device":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ALL:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {p0, v0, v1, v3}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectedState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V

    move v1, v2

    .line 1813
    goto :goto_0
.end method

.method public putScsPreferenceSet(Ljava/lang/String;)Z
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 2026
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CMWS] putSCSPreferenceSet: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2028
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mScsPreferenceSet:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 2029
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v1, "[CMWS] mScsPreferenceSet is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2030
    const/4 v0, 0x0

    .line 2043
    :goto_0
    return v0

    .line 2033
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mScsPreferenceSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v0, :cond_1

    .line 2034
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v2, "[CMWS] address already exist in mScsPreferenceSet"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2039
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mScsPreferenceSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2040
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v1, "[CMWS] error: mScsPreferenceSet.add"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2043
    :cond_2
    const-string v0, "PREF_NAME_SCS_CONNECTED_WEARABLE"

    const-string v1, "PREF_KEY_SCS_PREFERENCE_SET"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mScsPreferenceSet:Ljava/util/Set;

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->updatePrefStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v0

    goto :goto_0
.end method

.method public removeACDeviceSet(Ljava/lang/String;)V
    .locals 3
    .param p1, "macAddr"    # Ljava/lang/String;

    .prologue
    .line 1777
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mMultiACDeviceSet:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 1778
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mMultiACDeviceSet:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    .line 1781
    .local v0, "removeSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-eqz v0, :cond_0

    .line 1782
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v2, "removeACDeviceSet, removed AutoConnectSet is exist"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1784
    invoke-direct {p0, v0}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->closeAutoConnectSet(Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    .line 1787
    .end local v0    # "removeSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    :cond_0
    return-void
.end method

.method public removeAdapterBondedDevice(Ljava/lang/String;)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 600
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mBondedListMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 602
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mBondedDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 603
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CMWS] remove Adapter Bonded Device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mBondedDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 606
    :cond_0
    monitor-exit v1

    .line 608
    return-void

    .line 606
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeAlreadyHFPConnectedDeviceList(Ljava/lang/String;)Z
    .locals 4
    .param p1, "macAddr"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1855
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CMWS] removeAlreadyHFPConnectedDeviceList : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1857
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mAlreadyHFPConnectedDeviceList:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 1858
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v2, "[CMWS] removeAlreadyHFPConnectedDeviceList is null"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1872
    :goto_0
    return v0

    .line 1862
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mAlreadyHFPConnectedDeviceList:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1863
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v2, "[CMWS] address not exist in removeAlreadyHFPConnectedDeviceList"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1868
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mAlreadyHFPConnectedDeviceList:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1869
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v2, "[CMWS] error: removeAlreadyHFPConnectedDeviceList.remove"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1872
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public removeFeatureExchangeItem(Ljava/lang/String;)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 1306
    const-string v0, "PREF_NAME_DEVICE_FEATURE"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->removePrefStringSet(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeIsGearNotifiedRandomLeTrueFlag(Ljava/lang/String;)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 2292
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeIsGearNotifiedRandomLeTrueFlag: address"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2293
    const-string v0, "PREF_WEARABLE_ADVERTISE_MODE"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->removePrefStringSet(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeLastConnectedDeviceAddr(Ljava/lang/String;)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 1084
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CMWS] removeLastConnectedDeviceAddr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mConnectedDeviceSet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 1087
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v1, "[CMWS] mPrefSet is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    const/4 v0, 0x0

    .line 1101
    :goto_0
    return v0

    .line 1091
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mConnectedDeviceSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1092
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v1, "[CMWS] address does not already exist in mPrefSet"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    const/4 v0, 0x1

    goto :goto_0

    .line 1097
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mConnectedDeviceSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1098
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v1, "[CMWS] error: mPrefSet.remove"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    :cond_2
    const-string v0, "PREF_NAME_CONNECTED_WEARABLE"

    const-string v1, "PREF_KEY_CONNECTED_WEARABLE"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mConnectedDeviceSet:Ljava/util/Set;

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->updatePrefStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v0

    goto :goto_0
.end method

.method public removeLastConnectedDeviceAddr_SCS(Ljava/lang/String;)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 1012
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CMWS] removeLastConnectedDeviceAddr_SCS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mConnectedDeviceSet_SCS:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 1015
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v1, "[CMWS] mPrefSet is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    const/4 v0, 0x0

    .line 1029
    :goto_0
    return v0

    .line 1019
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mConnectedDeviceSet_SCS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1020
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v1, "[CMWS] address does not already exist in mPrefSet"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    const/4 v0, 0x1

    goto :goto_0

    .line 1025
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mConnectedDeviceSet_SCS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1026
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v1, "[CMWS] error: mPrefSet.remove"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    :cond_2
    const-string v0, "PREF_NAME_SCS_CONNECTED_WEARABLE"

    const-string v1, "PREF_KEY_CONNECTED_WEARABLE"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mConnectedDeviceSet_SCS:Ljava/util/Set;

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->updatePrefStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v0

    goto :goto_0
.end method

.method public removeScsPreferenceSet(Ljava/lang/String;)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 2048
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CMWS] removeSCSPreferenceSet: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2050
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mScsPreferenceSet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 2051
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v1, "[CMWS] mPrefSet is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2052
    const/4 v0, 0x0

    .line 2065
    :goto_0
    return v0

    .line 2055
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mScsPreferenceSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2056
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v1, "[CMWS] address does not already exist in mScsPreferenceSet"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2057
    const/4 v0, 0x1

    goto :goto_0

    .line 2061
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mScsPreferenceSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2062
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v1, "[CMWS] error: mPrefSet.remove"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2065
    :cond_2
    const-string v0, "PREF_NAME_SCS_CONNECTED_WEARABLE"

    const-string v1, "PREF_KEY_SCS_PREFERENCE_SET"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mScsPreferenceSet:Ljava/util/Set;

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->updatePrefStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v0

    goto :goto_0
.end method

.method public removeState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V
    .locals 5
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .prologue
    .line 562
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v2, "[CMWS] remove Connection State (unpairing)"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    if-nez p1, :cond_0

    .line 565
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v2, "[CMWS] Device is null"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    :goto_0
    return-void

    .line 569
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 571
    .local v0, "address":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 572
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v2, "[CMWS] Device address is null"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 576
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 578
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mConnectedProfileSet:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 579
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mConnectedProfileSet:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CMWS][UNPARING] removed device address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeWearableProfileVersion(Ljava/lang/String;)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 2235
    const-string v0, "PREF_SAP_PROFILE_VERSION"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->removePrefStringSet(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public resetDeviceMacForACDeviceSet(Ljava/lang/String;)V
    .locals 6
    .param p1, "macAddr"    # Ljava/lang/String;

    .prologue
    .line 1687
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getLastConnectedDeviceAddr()Ljava/util/Set;

    move-result-object v2

    .line 1688
    .local v2, "addrSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1690
    .local v0, "AddrIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1691
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v5, "[CMAC] resetDeviceMacForACDeviceSet - addrSet is Empty"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1705
    :cond_0
    return-void

    .line 1695
    :cond_1
    if-eqz v0, :cond_0

    .line 1696
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1697
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 1698
    .local v1, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 1699
    .local v3, "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v3, :cond_2

    .line 1700
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v5, "[CMAC] resetDeviceMacForACDeviceSet - put address"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1701
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->putDeviceMacForACDeviceSet(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAutoLockService(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "feature"    # Ljava/lang/String;

    .prologue
    .line 1198
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1200
    .local v0, "array":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v4, "PREF_NAME_DEVICE_FEATURE"

    invoke-direct {p0, v4, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getPrefStringSet(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 1202
    .local v2, "items":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1203
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1204
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1206
    .local v1, "item":Ljava/lang/String;
    const-string v4, "AUTO_LOCK_SERVICE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 1210
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1213
    .end local v1    # "item":Ljava/lang/String;
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1215
    const-string v4, "PREF_NAME_DEVICE_FEATURE"

    invoke-direct {p0, v4, p1, v0}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->putPrefStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v4

    return v4
.end method

.method public setBREDRConnectingFlag(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "flag"    # Z

    .prologue
    .line 1962
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 1963
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v1, "set BR/EDR Connecting Flag"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1968
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mBrEdrConnectionMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1970
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mBrEdrConnectionStateMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 1971
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mBrEdrConnectionStateMap:Ljava/util/HashMap;

    .line 1974
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mBrEdrConnectionStateMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1975
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1976
    return-void

    .line 1965
    :cond_1
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v1, "unset BR/EDR Connecting Flag"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1975
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setBREDRConnectingFlagForAll(Z)V
    .locals 9
    .param p1, "flag"    # Z

    .prologue
    .line 1980
    const/4 v5, 0x1

    if-ne p1, v5, :cond_2

    .line 1981
    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v6, "set BR/EDR Connecting Flag for all devices"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1986
    :goto_0
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mBrEdrConnectionMutex:Ljava/lang/Object;

    monitor-enter v6

    .line 1988
    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mBrEdrConnectionStateMap:Ljava/util/HashMap;

    if-nez v5, :cond_0

    .line 1989
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mBrEdrConnectionStateMap:Ljava/util/HashMap;

    .line 1992
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getLastConnectedDeviceAddr()Ljava/util/Set;

    move-result-object v2

    .line 1993
    .local v2, "addrSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1995
    .local v0, "AddrIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v0, :cond_4

    .line 1996
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1997
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 1998
    .local v1, "adapter":Landroid/bluetooth/BluetoothAdapter;
    const/4 v3, 0x0

    .line 1999
    .local v3, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2000
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 2009
    :goto_2
    if-eqz v3, :cond_1

    .line 2010
    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "set BR/EDR Connecting Flag to mBrEdrConnectionStateMap : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to device:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2011
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mBrEdrConnectionStateMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2015
    .end local v0    # "AddrIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v2    # "addrSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1983
    :cond_2
    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v6, "unset BR/EDR Connecting Flag for all devices"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2005
    .restart local v0    # "AddrIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v1    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .restart local v2    # "addrSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_3
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v4

    .line 2006
    .local v4, "wearableDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    invoke-static {v4}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToBluetoothDevice(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    goto :goto_2

    .line 2015
    .end local v1    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "wearableDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_4
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2016
    return-void
.end method

.method public setBluetoothVersion(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "feature"    # Ljava/lang/String;

    .prologue
    .line 1177
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1179
    .local v0, "array":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v4, "PREF_NAME_DEVICE_FEATURE"

    invoke-direct {p0, v4, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getPrefStringSet(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 1181
    .local v2, "items":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1182
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1183
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1185
    .local v1, "item":Ljava/lang/String;
    const-string v4, "BLUETOOTH_VERSION"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 1189
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1192
    .end local v1    # "item":Ljava/lang/String;
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1194
    const-string v4, "PREF_NAME_DEVICE_FEATURE"

    invoke-direct {p0, v4, p1, v0}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->putPrefStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v4

    return v4
.end method

.method public setCellularNetworkType(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "feature"    # Ljava/lang/String;

    .prologue
    .line 1258
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1260
    .local v0, "array":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v4, "PREF_NAME_DEVICE_FEATURE"

    invoke-direct {p0, v4, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getPrefStringSet(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 1262
    .local v2, "items":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1263
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1264
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1266
    .local v1, "item":Ljava/lang/String;
    const-string v4, "CELLULAR"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 1270
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1273
    .end local v1    # "item":Ljava/lang/String;
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1275
    const-string v4, "PREF_NAME_DEVICE_FEATURE"

    invoke-direct {p0, v4, p1, v0}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->putPrefStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v4

    return v4
.end method

.method public setConnectedState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V
    .locals 8
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    .param p2, "service"    # Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;
    .param p3, "state"    # Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    .prologue
    .line 494
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v5, "[CMWS] Updating Connection State..."

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    if-nez p1, :cond_0

    .line 497
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v5, "[CMWS] unkwon device.."

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    :goto_0
    return-void

    .line 502
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getRequestedDeviceList()Ljava/util/Set;

    move-result-object v0

    .line 503
    .local v0, "HmDeviceList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 504
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CMWS] Not Requested By HM - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 507
    :cond_1
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CMWS] Requested By HM - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 513
    .local v1, "address":Ljava/lang/String;
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getCode(Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)I

    move-result v2

    .line 515
    .local v2, "code":I
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mMutex:Ljava/lang/Object;

    monitor-enter v5

    .line 516
    :try_start_0
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->UNKNOWN:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    if-ne p3, v4, :cond_2

    .line 518
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[CMWS][UNKNWON] device address: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    monitor-exit v5

    goto :goto_0

    .line 555
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 523
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mConnectedProfileSet:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 528
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ALL:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    if-eq p2, v4, :cond_6

    .line 529
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTING:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    if-eq p3, v4, :cond_3

    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    if-ne p3, v4, :cond_4

    .line 531
    :cond_3
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[CMWS][UNBONDED] ignore CHANGED SERVICE STATE("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    monitor-exit v5

    goto/16 :goto_0

    .line 535
    :cond_4
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[CMWS][BONDED] update BONDED and CHANGED SERVICE STATE("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mConnectedProfileSet:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    :cond_5
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mConnectedProfileSet:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4, v2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->updateState(II)I

    move-result v3

    .line 550
    .local v3, "updatedstate":I
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mConnectedProfileSet:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[CMWS]["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p3}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] device address: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / code: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 557
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->showState()V

    goto/16 :goto_0

    .line 540
    .end local v3    # "updatedstate":I
    :cond_6
    :try_start_2
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[CMWS] set BONDED("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "33330"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ALL:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-direct {p0, v4, v6}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getCode(Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    goto/16 :goto_1
.end method

.method public setConnectionScanParameter(II)Z
    .locals 6
    .param p1, "scan_interval"    # I
    .param p2, "scan_window"    # I

    .prologue
    const/4 v3, 0x0

    .line 2343
    const/4 v2, 0x0

    .line 2345
    .local v2, "result":Z
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 2347
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2348
    :cond_0
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v5, " setConnectionScanParameter: adapter is null or not enalbed"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2371
    :goto_0
    return v3

    .line 2352
    :cond_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-le v4, v5, :cond_2

    .line 2355
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothAdapterFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothAdapterInterface;

    move-result-object v4

    invoke-interface {v4, v0, p1, p2}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothAdapterInterface;->setConnectionScanParameter(Landroid/bluetooth/BluetoothAdapter;II)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 2364
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CMWS] setConnectionScanParameter : android version is more than  kitkat. result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move v3, v2

    .line 2371
    goto :goto_0

    .line 2356
    :catch_0
    move-exception v1

    .line 2357
    .local v1, "e":Ljava/lang/NoSuchMethodError;
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v5, "No Such method Error"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2359
    .end local v1    # "e":Ljava/lang/NoSuchMethodError;
    :catch_1
    move-exception v1

    .line 2360
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v5, "No Such method Exception"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2368
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :cond_2
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CMWS] setConnectionScanParameter : android version is not more than kitkat.  result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setDeviceType(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v3, 0x0

    .line 2303
    const/4 v2, 0x0

    .line 2305
    .local v2, "result":Z
    if-nez p1, :cond_0

    .line 2306
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v5, "[CMWS] setDeviceType : device is null"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2336
    :goto_0
    return v3

    .line 2310
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 2312
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2313
    :cond_1
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v5, " : adapter is null or not enalbed"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2317
    :cond_2
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-le v4, v5, :cond_3

    .line 2321
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothDeviceFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x1

    invoke-interface {v4, p1, v5, v6}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;->setDeviceTypeAndDmtSupport(Landroid/bluetooth/BluetoothDevice;IZ)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 2330
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CMWS] setDeviceType : android version is more than  kitkat. result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move v3, v2

    .line 2336
    goto :goto_0

    .line 2322
    :catch_0
    move-exception v1

    .line 2323
    .local v1, "e":Ljava/lang/NoSuchMethodError;
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v5, "No Such method Error"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2325
    .end local v1    # "e":Ljava/lang/NoSuchMethodError;
    :catch_1
    move-exception v1

    .line 2326
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v5, "No Such method Exception"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2334
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :cond_3
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CMWS] setDeviceType : android version is not more than kitkat.  result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setFindPeerComplete(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "b"    # Z

    .prologue
    .line 1418
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mFindPeerMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1419
    return-void
.end method

.method public setIsGearNotifiedRandomLeTrueFlag(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "Value"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 2261
    if-nez p1, :cond_0

    .line 2263
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v5, "setIsGearNotifiedRandomLeTrueFlag: address is null"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2264
    const/4 v4, 0x0

    .line 2286
    :goto_0
    return v4

    .line 2267
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2269
    .local v0, "array":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v5, "PREF_WEARABLE_ADVERTISE_MODE"

    invoke-direct {p0, v5, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getPrefStringSet(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 2271
    .local v2, "items":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setIsGearReceivedRandomLeTrueFlag:  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2272
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2273
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2274
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2276
    .local v1, "item":Ljava/lang/String;
    const-string v5, "IS_GEAR_NOTIFIED_RANDOM_LE_SUPPORT#TRUE"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-ne v5, v4, :cond_1

    .line 2277
    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v6, "setIsGearNotifiedRandomLeTrueFlag: PREF_WEARABLE_ADVERTISE_MODE is already set"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2282
    .end local v1    # "item":Ljava/lang/String;
    :cond_2
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2284
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v5, "setIsGearNotifiedRandomLeTrueFlag: setting PREF_WEARABLE_ADVERTISE_MODE first time to shared preferences"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2286
    const-string v4, "PREF_WEARABLE_ADVERTISE_MODE"

    invoke-direct {p0, v4, p1, v0}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->putPrefStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v4

    goto :goto_0
.end method

.method public setRandomLEAddressSupport(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "feature"    # Ljava/lang/String;

    .prologue
    .line 1243
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1244
    .local v0, "array":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v4, "PREF_NAME_DEVICE_FEATURE"

    invoke-direct {p0, v4, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getPrefStringSet(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 1245
    .local v2, "items":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1246
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1247
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1248
    .local v1, "item":Ljava/lang/String;
    const-string v4, "RANDOM_LE_ADDRESS_SUPPORT"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 1251
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1253
    .end local v1    # "item":Ljava/lang/String;
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1254
    const-string v4, "PREF_NAME_DEVICE_FEATURE"

    invoke-direct {p0, v4, p1, v0}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->putPrefStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v4

    return v4
.end method

.method public setRssiOffset(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "feature"    # Ljava/lang/String;

    .prologue
    .line 1221
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1223
    .local v0, "array":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v4, "PREF_NAME_DEVICE_FEATURE"

    invoke-direct {p0, v4, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getPrefStringSet(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 1225
    .local v2, "items":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1226
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1227
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1229
    .local v1, "item":Ljava/lang/String;
    const-string v4, "RSSI_OFFSET"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 1233
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1236
    .end local v1    # "item":Ljava/lang/String;
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1238
    const-string v4, "PREF_NAME_DEVICE_FEATURE"

    invoke-direct {p0, v4, p1, v0}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->putPrefStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v4

    return v4
.end method

.method public setScsPreference(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Z)Z
    .locals 5
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    .param p2, "value"    # Z

    .prologue
    const/4 v1, 0x1

    .line 2075
    const/4 v0, 0x0

    .line 2077
    .local v0, "deviceAddr":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2078
    :cond_0
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v2, "device is null"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2079
    const/4 v1, 0x0

    .line 2096
    :goto_0
    return v1

    .line 2082
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 2084
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set SCS Preference ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2085
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mScsPreferenceMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2088
    if-ne p2, v1, :cond_2

    .line 2089
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adding address to SCS Preference Set : ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2090
    invoke-virtual {p0, v0}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->putScsPreferenceSet(Ljava/lang/String;)Z

    goto :goto_0

    .line 2092
    :cond_2
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removing address from SCS Preference Set :("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2093
    invoke-virtual {p0, v0}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->removeScsPreferenceSet(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public setWearableProfileVersion(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "feature"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 2204
    if-nez p1, :cond_0

    .line 2206
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v5, "setWearableProfileVersion: address is null"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2207
    const/4 v4, 0x0

    .line 2229
    :goto_0
    return v4

    .line 2210
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2212
    .local v0, "array":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v5, "PREF_SAP_PROFILE_VERSION"

    invoke-direct {p0, v5, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getPrefStringSet(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 2214
    .local v2, "items":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setWearableProfileVersion:  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2215
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2216
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2217
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2219
    .local v1, "item":Ljava/lang/String;
    const-string v5, "PROFILE_VERSION"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-ne v5, v4, :cond_1

    .line 2220
    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v6, "setWearableProfileVersion: profile version is already set"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2225
    .end local v1    # "item":Ljava/lang/String;
    :cond_2
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2227
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v5, "setWearableProfileVersion: set the SAP profile version first time to shared preferences"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2229
    const-string v4, "PREF_SAP_PROFILE_VERSION"

    invoke-direct {p0, v4, p1, v0}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->putPrefStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v4

    goto :goto_0
.end method

.method public setWifiNetworkType(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "feature"    # Ljava/lang/String;

    .prologue
    .line 1279
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1281
    .local v0, "array":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v4, "PREF_NAME_DEVICE_FEATURE"

    invoke-direct {p0, v4, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getPrefStringSet(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 1283
    .local v2, "items":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1284
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1285
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1287
    .local v1, "item":Ljava/lang/String;
    const-string v4, "WIFI_SERVICE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 1291
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1294
    .end local v1    # "item":Ljava/lang/String;
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1296
    const-string v4, "PREF_NAME_DEVICE_FEATURE"

    invoke-direct {p0, v4, p1, v0}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->putPrefStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v4

    return v4
.end method

.method public setWifiP2pMacAddress(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "feature"    # Ljava/lang/String;

    .prologue
    .line 2160
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2162
    .local v0, "array":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v4, "PREF_NAME_DEVICE_FEATURE"

    invoke-direct {p0, v4, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getPrefStringSet(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 2164
    .local v2, "items":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2165
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2166
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2168
    .local v1, "item":Ljava/lang/String;
    const-string v4, "WIFIP2P_MAC"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 2172
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2175
    .end local v1    # "item":Ljava/lang/String;
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2177
    const-string v4, "PREF_NAME_DEVICE_FEATURE"

    invoke-direct {p0, v4, p1, v0}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->putPrefStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v4

    return v4
.end method

.method public showState()V
    .locals 7

    .prologue
    .line 964
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mConnectedProfileSet:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 966
    .local v2, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v4, "[CMWS] Address / code"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v4, "[CMWS] ============================="

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 969
    .local v0, "address":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mConnectedProfileSet:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 970
    .local v1, "code":I
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CMWS] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 973
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "code":I
    :cond_0
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v4, "[CMWS] ============================="

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 977
    .restart local v0    # "address":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->showAutoConnectionLog(Ljava/lang/String;)V

    goto :goto_1

    .line 980
    .end local v0    # "address":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public updateACdeviceSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V
    .locals 4
    .param p1, "macAddr"    # Ljava/lang/String;
    .param p2, "deviceSet"    # Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    .prologue
    .line 1746
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mMultiACDeviceSet:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 1747
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CMAC] UpdateACdeviceSet : mMultiACDeviceSet.put() - deviceSet\'s Gatt is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1749
    invoke-virtual {p2}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1747
    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1750
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->mMultiACDeviceSet:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    .line 1753
    .local v0, "temp":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-eqz v0, :cond_1

    .line 1755
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CMAC] UpdateACdeviceSet : mMultiACDeviceSet.put() - gatt instance is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1758
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1755
    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1767
    .end local v0    # "temp":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    :cond_0
    :goto_0
    return-void

    .line 1761
    .restart local v0    # "temp":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    :cond_1
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->TAG:Ljava/lang/String;

    const-string v2, "[CMAC] UpdateACdeviceSet : mMultiACDeviceSet.put() - prev gatt instance is not exist"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
