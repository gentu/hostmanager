.class public Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;
.super Landroid/app/Service;
.source "HMSamsungAppStoreService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$HMInstallStateHandler;,
        Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$CheckAppInstallResultObserver;,
        Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$CancelInstallResultObserver;,
        Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;
    }
.end annotation


# static fields
.field public static final CANCEL_INSTALL_FAILED:I = -0x1

.field public static final CANCEL_INSTALL_SUCCEEDED:I = 0x1

.field public static final DUMMY_VALUE_INT:I = -0x1e240

.field public static final INSTALL_FAIL_BLUETOOTH_CONNECTION:I = -0x3e9

.field public static final INSTALL_FAIL_NO_WATCHMANAGER:I = -0x3eb

.field public static final INSTALL_FAIL_SAP_CONNECTION:I = -0x3ea

.field public static final INSTALL_FAIL_UNKNOWN:I = -0x3e8

.field public static final INSTALL_INSTALLING:I = 0x2

.field public static final INSTALL_SUCCEEDED:I = 0x1

.field public static final MESSAGE_BAPP_CONNECTED_STATE:I = 0x7bf

.field public static final MESSAGE_BAPP_INSTALLING_STATE:I = 0x7be

.field public static final MESSAGE_BAPP_INSTALL_RESULT:I = 0x7bd

.field public static final MESSAGE_CREATE_INSTALL_STATE_OBJECT:I = 0x7c2

.field public static final MESSAGE_FILE_TRANSFER_COMPLETE:I = 0x7c1

.field public static final MESSAGE_FILE_TRANSFER_ID:I = 0x7c0

.field public static final MESSAGE_SET_FILE_PATH:I = 0x7c4

.field public static final MESSAGE_SET_PACKAGE_NAME_WGT_ONLY:I = 0x7c3

.field private static final SAMSUNG_APPS_PACKAGENAME:Ljava/lang/String; = "com.sec.android.app.samsungapps"

.field private static final SIGNATURES:[Landroid/content/pm/Signature;

.field private static final TAG:Ljava/lang/String;

.field public static final WEARABLE_INFO_CSC_VERSION:I = 0x7d1

.field public static final WEARABLE_INFO_FAKE_MODEL:I = 0x7d6

.field public static final WEARABLE_INFO_GEARNAME:I = 0x7d7

.field public static final WEARABLE_INFO_GEAROSVERSION:I = 0x7d5

.field public static final WEARABLE_INFO_ISVOLTDEVICE:I = 0xbb9

.field public static final WEARABLE_INFO_MODEL_NAME:I = 0x7d2

.field public static final WEARABLE_INFO_SERIAL:I = 0x7d4

.field public static final WEARABLE_INFO_SWVERSION:I = 0x7d3

.field private static final isSupportedToNonSamsungDevice:Z


# instance fields
.field private installObserver:Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;

.field private final mBinder:Lcom/samsung/android/aidl/ICheckAppInstallState$Stub;

.field private final mHandler:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$HMInstallStateHandler;

.field private mICHostManager:Lcom/samsung/android/hostmanager/service/ICHostManager;

.field private mInstallPackageState:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 36
    const-class v0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->TAG:Ljava/lang/String;

    .line 70
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/pm/Signature;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/pm/Signature;

    const-string v3, "30820247308201b0a003020102020451068735300d06092a864886f70d01010505003068310b3009060355040613024b52310e300c060355040813055375776f6e310e300c060355040713055375776f6e31143012060355040a130b53616d73756e6741707073310d300b060355040b13045445414d311430120603550403130b53616d73756e6741707073301e170d3133303132383134313230355a170d3433303132313134313230355a3068310b3009060355040613024b52310e300c060355040813055375776f6e310e300c060355040713055375776f6e31143012060355040a130b53616d73756e6741707073310d300b060355040b13045445414d311430120603550403130b53616d73756e674170707330819f300d06092a864886f70d010101050003818d003081890281810087968cead7b144a9d31a2209c8c4e9b481bbad5f89160c661d4b9bd4fca61ac131994dea46c2142f0fb294147dd2980091bf2dd15d367e7d15175db67d8d3531f0fb49baf7a1bff7fdb35e15fe64939b6d7daa3e0e0c2ea6d6321190328c2461e74a1767d927705b80abe1061864c3bba510f1bd555554a72b75c2eec5810daf0203010001300d06092a864886f70d010105050003818100115191e525981813f758b9921c0ab0ae28ed71b95aacb5692bf551dc6196dfae1583fa55eeba90f242dec3674404056a960d92442a851a9101be437bb67bd561c5db6274fd7dabb103f460ea53f23c6d00cbafce5954ae9e5ae067a81e77843bdf53ed65634c35678030c0c77b1a02ab3323ddc190b50f886715280b0f50a5d7"

    invoke-direct {v2, v3}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->SIGNATURES:[Landroid/content/pm/Signature;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 78
    new-instance v0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$HMInstallStateHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$HMInstallStateHandler;-><init>(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->mHandler:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$HMInstallStateHandler;

    .line 388
    new-instance v0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;-><init>(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->mBinder:Lcom/samsung/android/aidl/ICheckAppInstallState$Stub;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->mInstallPackageState:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;)Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->installObserver:Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;)Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;
    .param p1, "x1"    # Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->installObserver:Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;)Lcom/samsung/android/hostmanager/manager/IPackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->getPMInstance()Lcom/samsung/android/hostmanager/manager/IPackageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;)Lcom/samsung/android/hostmanager/service/ICHostManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->mICHostManager:Lcom/samsung/android/hostmanager/service/ICHostManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;)Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$HMInstallStateHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->mHandler:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$HMInstallStateHandler;

    return-object v0
.end method

.method private checkExpectedSignature()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 982
    :try_start_0
    const-string v5, "com.sec.android.app.samsungapps"

    invoke-direct {p0, v5}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->getSignatures(Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v3

    .line 984
    .local v3, "signatures":[Landroid/content/pm/Signature;
    if-eqz v3, :cond_0

    .line 985
    array-length v6, v3

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v2, v3, v5

    .line 986
    .local v2, "signature":Landroid/content/pm/Signature;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v7, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->SIGNATURES:[Landroid/content/pm/Signature;

    array-length v7, v7

    if-ge v1, v7, :cond_2

    .line 987
    sget-object v7, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->SIGNATURES:[Landroid/content/pm/Signature;

    aget-object v7, v7, v1

    invoke-virtual {v7, v2}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 988
    sget-object v5, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Signature matched! .:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 989
    const/4 v4, 0x1

    .line 997
    .end local v1    # "i":I
    .end local v2    # "signature":Landroid/content/pm/Signature;
    .end local v3    # "signatures":[Landroid/content/pm/Signature;
    :cond_0
    :goto_2
    return v4

    .line 986
    .restart local v1    # "i":I
    .restart local v2    # "signature":Landroid/content/pm/Signature;
    .restart local v3    # "signatures":[Landroid/content/pm/Signature;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 985
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 994
    .end local v1    # "i":I
    .end local v2    # "signature":Landroid/content/pm/Signature;
    .end local v3    # "signatures":[Landroid/content/pm/Signature;
    :catch_0
    move-exception v0

    .line 995
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v5, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->TAG:Ljava/lang/String;

    const-string v6, "samsung apps is not existed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private getPMInstance()Lcom/samsung/android/hostmanager/manager/IPackageManager;
    .locals 7

    .prologue
    .line 933
    const/4 v3, 0x0

    .line 934
    .local v3, "pmInstance":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    invoke-static {}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getInstance()Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;

    move-result-object v4

    const-string v5, "Gear"

    invoke-virtual {v4, v5}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getConnectedDeviceIdByType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 935
    .local v0, "deviceID":Ljava/lang/String;
    sget-object v4, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Device id instance for getPMInstance()-->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    :try_start_0
    invoke-static {}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getInstance()Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getDeviceManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/DeviceManager;

    move-result-object v2

    .line 938
    .local v2, "manager":Lcom/samsung/android/hostmanager/manager/DeviceManager;
    if-eqz v2, :cond_0

    .line 939
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/manager/DeviceManager;->getPackageManager()Lcom/samsung/android/hostmanager/manager/IPackageManager;

    move-result-object v3

    .line 947
    .end local v2    # "manager":Lcom/samsung/android/hostmanager/manager/DeviceManager;
    :goto_0
    return-object v3

    .line 942
    .restart local v2    # "manager":Lcom/samsung/android/hostmanager/manager/DeviceManager;
    :cond_0
    sget-object v4, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->TAG:Ljava/lang/String;

    const-string v5, "DeviceManager is null in getPMInstance()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 944
    .end local v2    # "manager":Lcom/samsung/android/hostmanager/manager/DeviceManager;
    :catch_0
    move-exception v1

    .line 945
    .local v1, "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method private getSignatures(Ljava/lang/String;)[Landroid/content/pm/Signature;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1002
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 1005
    .local v0, "sigs":[Landroid/content/pm/Signature;
    return-object v0
.end method

.method private hasPermission()Z
    .locals 3

    .prologue
    .line 952
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 953
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "android.permission.INSTALL_PACKAGES"

    const-string v2, "com.sec.android.app.samsungapps"

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 954
    sget-object v1, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->TAG:Ljava/lang/String;

    const-string v2, "Samsung Apps is System App"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    const/4 v1, 0x1

    .line 958
    :goto_0
    return v1

    .line 957
    :cond_0
    sget-object v1, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->TAG:Ljava/lang/String;

    const-string v2, "Samsung Apps is not System App"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isExistPackage(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1010
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1012
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1019
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 1014
    :catch_0
    move-exception v0

    .line 1015
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 1016
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 1017
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method


# virtual methods
.method public checkSignatureForBind()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 964
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->isSamsungDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 965
    const-string v1, "com.sec.android.app.samsungapps"

    invoke-direct {p0, v1}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->isExistPackage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 966
    sget-object v1, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->TAG:Ljava/lang/String;

    const-string v2, "Access to API is denied. There is no Samsung Apps."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    :cond_0
    :goto_0
    return v0

    .line 973
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->hasPermission()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 974
    const/4 v0, 0x1

    goto :goto_0

    .line 976
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->checkExpectedSignature()Z

    move-result v0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 182
    sget-object v1, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->TAG:Ljava/lang/String;

    const-string v2, "onBind() called "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->getPMInstance()Lcom/samsung/android/hostmanager/manager/IPackageManager;

    move-result-object v0

    .line 185
    .local v0, "pm":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    if-eqz v0, :cond_0

    .line 186
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->mHandler:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$HMInstallStateHandler;

    invoke-interface {v0, v1}, Lcom/samsung/android/hostmanager/manager/IPackageManager;->setCheckInstallStatusHandler(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$HMInstallStateHandler;)V

    .line 192
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->mBinder:Lcom/samsung/android/aidl/ICheckAppInstallState$Stub;

    return-object v1

    .line 189
    :cond_0
    sget-object v1, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->TAG:Ljava/lang/String;

    const-string v2, "IPackageManager instance is null in onBind"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 171
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 172
    sget-object v0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->TAG:Ljava/lang/String;

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->mICHostManager:Lcom/samsung/android/hostmanager/service/ICHostManager;

    .line 174
    new-instance v0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$CheckAppInstallResultObserver;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$CheckAppInstallResultObserver;-><init>(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->installObserver:Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->mInstallPackageState:Ljava/util/ArrayList;

    .line 177
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 204
    sget-object v1, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->TAG:Ljava/lang/String;

    const-string v2, "onDestroy() called "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->getPMInstance()Lcom/samsung/android/hostmanager/manager/IPackageManager;

    move-result-object v0

    .line 206
    .local v0, "pm":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    if-eqz v0, :cond_0

    .line 207
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/hostmanager/manager/IPackageManager;->setCheckInstallStatusHandler(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$HMInstallStateHandler;)V

    .line 212
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 214
    return-void

    .line 210
    :cond_0
    sget-object v1, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->TAG:Ljava/lang/String;

    const-string v2, "IPackageManager instance is null in onDestroy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 197
    sget-object v0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->TAG:Ljava/lang/String;

    const-string v1, "onUnbind(intent) called "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
