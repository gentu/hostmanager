.class public Lcom/samsung/android/hostmanager/service/HostManager;
.super Landroid/app/Service;
.source "HostManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hostmanager/service/HostManager$DemoSyncHandler;,
        Lcom/samsung/android/hostmanager/service/HostManager$HMSetupHandler;
    }
.end annotation


# static fields
.field private static final ACCESS_UNIFIED_HOST_MANAGER_PERM:Ljava/lang/String; = "com.samsung.android.hostmanager.permission.ACCESS_UNIFIED_HOST_MANAGER"

.field public static final ACTION_PLUGIN_CHANGE_NOTI:Ljava/lang/String; = "com.samsung.android.plugin.ACTION_PLUGIN_CHANGE_NOTI"

.field private static final CONTROL_WEARABLE_STATUS_PERMISSION:Ljava/lang/String; = "com.samsung.android.hostmanager.permission.CONTROL_WEARABLE_STATUS"

.field private static final GEAR1_PLUGIN_NAME:Ljava/lang/String; = "Gear1"

.field private static final GEAR2_PLUGIN_NAME:Ljava/lang/String; = "Gear2"

.field public static final MESSAGE_BAPP_CONNECTED_STATE:I = 0x7bf

.field public static final MESSAGE_BAPP_INSTALLING_STATE:I = 0x7be

.field public static final MESSAGE_BAPP_INSTALL_RESULT:I = 0x7bd

.field public static final MESSAGE_CREATE_INSTALL_STATE_OBJECT:I = 0x7c2

.field public static final MESSAGE_FILE_TRANSFER_COMPLETE:I = 0x7c1

.field public static final MESSAGE_FILE_TRANSFER_ID:I = 0x7c0

.field private static final PM_TAG:Ljava/lang/String;

.field private static final SAMSUNG_APPS_PACKAGENAME:Ljava/lang/String; = "com.sec.android.app.samsungapps"

.field private static final SAMSUNG_LINK_SIGN_HASH:I = 0x433169f6

.field private static final SIGNATURES:[Landroid/content/pm/Signature;

.field private static final TAG:Ljava/lang/String;

.field private static mConnectingHandler:Landroid/os/Handler;

.field private static mConnectingRunnable:Ljava/lang/Runnable;

.field private static mContext:Landroid/content/Context;

.field private static mIUHostManager:Lcom/samsung/android/hostmanager/service/IUHostManager;


# instance fields
.field final CONNECTION_RESULT_SUCESS:I

.field private final TShareLoginContentObserver:Landroid/database/ContentObserver;

.field callForwardListener:Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

.field private final connectedWearableContentObserver:Landroid/database/ContentObserver;

.field private isRestoreGallery:Z

.field mCFHandler:Lcom/samsung/android/hostmanager/service/HostManager$HMSetupHandler;

.field private mConnType:I

.field public mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

.field private mHMSetupHandler:Lcom/samsung/android/hostmanager/service/HostManager$HMSetupHandler;

.field private final mICHostManager:Lcom/samsung/android/hostmanager/service/ICHostManager;

.field private mInstallManager:Lcom/samsung/android/hostmanager/pm/InstallManager;

.field private final mPackageReceiver:Lcom/samsung/android/hostmanager/notification/NotificationPackageReceiver;

.field private final mProviderSvcConn:Landroid/content/ServiceConnection;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSoundPool:Landroid/media/SoundPool;

.field private final mTimeDateLocaleBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mWearableConnectionManager:Lcom/samsung/android/hostmanager/connection/IWConnectionManager;

.field private provider:Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;

.field private tempAddress:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 108
    const-class v0, Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    .line 109
    const-class v0, Lcom/samsung/android/hostmanager/pm/GearPackageManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hostmanager/service/HostManager;->PM_TAG:Ljava/lang/String;

    .line 141
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/pm/Signature;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/pm/Signature;

    const-string v3, "30820247308201b0a003020102020451068735300d06092a864886f70d01010505003068310b3009060355040613024b52310e300c060355040813055375776f6e310e300c060355040713055375776f6e31143012060355040a130b53616d73756e6741707073310d300b060355040b13045445414d311430120603550403130b53616d73756e6741707073301e170d3133303132383134313230355a170d3433303132313134313230355a3068310b3009060355040613024b52310e300c060355040813055375776f6e310e300c060355040713055375776f6e31143012060355040a130b53616d73756e6741707073310d300b060355040b13045445414d311430120603550403130b53616d73756e674170707330819f300d06092a864886f70d010101050003818d003081890281810087968cead7b144a9d31a2209c8c4e9b481bbad5f89160c661d4b9bd4fca61ac131994dea46c2142f0fb294147dd2980091bf2dd15d367e7d15175db67d8d3531f0fb49baf7a1bff7fdb35e15fe64939b6d7daa3e0e0c2ea6d6321190328c2461e74a1767d927705b80abe1061864c3bba510f1bd555554a72b75c2eec5810daf0203010001300d06092a864886f70d010105050003818100115191e525981813f758b9921c0ab0ae28ed71b95aacb5692bf551dc6196dfae1583fa55eeba90f242dec3674404056a960d92442a851a9101be437bb67bd561c5db6274fd7dabb103f460ea53f23c6d00cbafce5954ae9e5ae067a81e77843bdf53ed65634c35678030c0c77b1a02ab3323ddc190b50f886715280b0f50a5d7"

    invoke-direct {v2, v3}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/hostmanager/service/HostManager;->SIGNATURES:[Landroid/content/pm/Signature;

    .line 2413
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/samsung/android/hostmanager/service/HostManager;->mConnectingHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 126
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mICHostManager:Lcom/samsung/android/hostmanager/service/ICHostManager;

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/service/HostManager;->isRestoreGallery:Z

    .line 134
    iput-object v1, p0, Lcom/samsung/android/hostmanager/service/HostManager;->provider:Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;

    .line 137
    new-instance v0, Lcom/samsung/android/hostmanager/notification/NotificationPackageReceiver;

    invoke-direct {v0}, Lcom/samsung/android/hostmanager/notification/NotificationPackageReceiver;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mPackageReceiver:Lcom/samsung/android/hostmanager/notification/NotificationPackageReceiver;

    .line 316
    new-instance v0, Lcom/samsung/android/hostmanager/service/HostManager$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/service/HostManager$3;-><init>(Lcom/samsung/android/hostmanager/service/HostManager;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 589
    new-instance v0, Lcom/samsung/android/hostmanager/service/HostManager$4;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/hostmanager/service/HostManager$4;-><init>(Lcom/samsung/android/hostmanager/service/HostManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/service/HostManager;->connectedWearableContentObserver:Landroid/database/ContentObserver;

    .line 641
    new-instance v0, Lcom/samsung/android/hostmanager/service/HostManager$5;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/hostmanager/service/HostManager$5;-><init>(Lcom/samsung/android/hostmanager/service/HostManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/service/HostManager;->TShareLoginContentObserver:Landroid/database/ContentObserver;

    .line 681
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mConnType:I

    .line 683
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hostmanager/service/HostManager;->CONNECTION_RESULT_SUCESS:I

    .line 1989
    new-instance v0, Lcom/samsung/android/hostmanager/service/HostManager$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/service/HostManager$6;-><init>(Lcom/samsung/android/hostmanager/service/HostManager;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mProviderSvcConn:Landroid/content/ServiceConnection;

    .line 2055
    new-instance v0, Lcom/samsung/android/hostmanager/service/HostManager$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/service/HostManager$7;-><init>(Lcom/samsung/android/hostmanager/service/HostManager;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mTimeDateLocaleBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 2417
    iput-object v1, p0, Lcom/samsung/android/hostmanager/service/HostManager;->tempAddress:Ljava/lang/String;

    .line 3481
    new-instance v0, Lcom/samsung/android/hostmanager/service/HostManager$10;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/service/HostManager$10;-><init>(Lcom/samsung/android/hostmanager/service/HostManager;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/service/HostManager;->callForwardListener:Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    .line 3525
    new-instance v0, Lcom/samsung/android/hostmanager/service/HostManager$HMSetupHandler;

    invoke-direct {v0}, Lcom/samsung/android/hostmanager/service/HostManager$HMSetupHandler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mCFHandler:Lcom/samsung/android/hostmanager/service/HostManager$HMSetupHandler;

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/samsung/android/hostmanager/service/HostManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/hostmanager/service/HostManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/service/HostManager;

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/service/HostManager;->logfileDump()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/hostmanager/service/HostManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/service/HostManager;

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/service/HostManager;->sendFinishMessageToApp()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/samsung/android/hostmanager/service/HostManager;->PM_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/hostmanager/service/HostManager;)Lcom/samsung/android/hostmanager/connection/IWConnectionManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/service/HostManager;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mWearableConnectionManager:Lcom/samsung/android/hostmanager/connection/IWConnectionManager;

    return-object v0
.end method

.method static synthetic access$400()Lcom/samsung/android/hostmanager/service/IUHostManager;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/samsung/android/hostmanager/service/HostManager;->mIUHostManager:Lcom/samsung/android/hostmanager/service/IUHostManager;

    return-object v0
.end method

.method static synthetic access$500()V
    .locals 0

    .prologue
    .line 107
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->onSystemRestoreReady()V

    return-void
.end method

.method static synthetic access$600()V
    .locals 0

    .prologue
    .line 107
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->onSystemRestoreComplete()V

    return-void
.end method

.method static synthetic access$700(Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # I

    .prologue
    .line 107
    invoke-static {p0, p1}, Lcom/samsung/android/hostmanager/service/HostManager;->onRestoreProgressUpdate(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/hostmanager/service/HostManager;)Lcom/samsung/android/hostmanager/service/HostManager$HMSetupHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/service/HostManager;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMSetupHandler:Lcom/samsung/android/hostmanager/service/HostManager$HMSetupHandler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/hostmanager/service/HostManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/service/HostManager;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HostManager;->tempAddress:Ljava/lang/String;

    return-object v0
.end method

.method public static changeFilePermission(Ljava/lang/String;I)I
    .locals 10
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 1048
    const-string v2, "android.os.FileUtils"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1049
    .local v0, "fileUtils":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "setPermissions"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v7

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v8

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v9

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1051
    .local v1, "setPermissions":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2
.end method

.method private checkSignatures([Ljava/lang/String;)Z
    .locals 11
    .param p1, "callerPackages"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 3555
    sget-object v6, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v7, "checkSignatures"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3556
    array-length v8, p1

    move v7, v5

    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v2, p1, v7

    .line 3557
    .local v2, "packageName":Ljava/lang/String;
    sget-object v6, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "------- "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3558
    const/4 v4, 0x0

    .line 3560
    .local v4, "sigs":[Landroid/content/pm/Signature;
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/service/HostManager;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/16 v9, 0x40

    invoke-virtual {v6, v2, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-object v4, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 3564
    if-eqz v4, :cond_3

    .line 3565
    array-length v9, v4

    move v6, v5

    :goto_1
    if-ge v6, v9, :cond_3

    aget-object v3, v4, v6

    .line 3566
    .local v3, "signature":Landroid/content/pm/Signature;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    sget-object v10, Lcom/samsung/android/hostmanager/service/HostManager;->SIGNATURES:[Landroid/content/pm/Signature;

    array-length v10, v10

    if-ge v1, v10, :cond_2

    .line 3567
    sget-object v10, Lcom/samsung/android/hostmanager/service/HostManager;->SIGNATURES:[Landroid/content/pm/Signature;

    aget-object v10, v10, v1

    invoke-virtual {v10, v3}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 3568
    sget-object v6, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Signature matched! .:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3569
    const/4 v5, 0x1

    .line 3578
    .end local v1    # "i":I
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "signature":Landroid/content/pm/Signature;
    .end local v4    # "sigs":[Landroid/content/pm/Signature;
    :cond_0
    return v5

    .line 3566
    .restart local v1    # "i":I
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v3    # "signature":Landroid/content/pm/Signature;
    .restart local v4    # "sigs":[Landroid/content/pm/Signature;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3565
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 3574
    .end local v1    # "i":I
    .end local v3    # "signature":Landroid/content/pm/Signature;
    :catch_0
    move-exception v0

    .line 3575
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v6, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NameNotFoundException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3556
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto/16 :goto_0
.end method

.method private static deletePreviousFiles()V
    .locals 7

    .prologue
    .line 162
    const-string v3, "MLogger"

    const-string v4, "deletePreviousFiles()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->getListOfFiles()[Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "fileListstr":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 166
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v1, v3

    .line 167
    .local v2, "logFiles":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/Android/HMLog/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 170
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 171
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 172
    const-string v5, "MLogger"

    const-string v6, "file.delete()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 178
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "logFiles":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private doCallForwarding(Ljava/lang/String;I)V
    .locals 5
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "data"    # I

    .prologue
    .line 3431
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->isDualModel()Z

    move-result v0

    .line 3432
    .local v0, "isDualSim":Z
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doCallForwarding, deviceID["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], isDualSim ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], data ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3433
    invoke-static {p1}, Lcom/samsung/android/hostmanager/status/StatusUtils;->getWearableDevicePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3434
    .local v1, "wearablephonenumber":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 3435
    packed-switch p2, :pswitch_data_0

    .line 3473
    .end local v1    # "wearablephonenumber":Ljava/lang/String;
    :goto_0
    return-void

    .line 3438
    .restart local v1    # "wearablephonenumber":Ljava/lang/String;
    :pswitch_0
    new-instance v2, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;

    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HostManager;->callForwardListener:Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    sget-object v4, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;->SLOT1:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    invoke-direct {v2, p0, p1, v3, v4}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;)V

    .line 3439
    invoke-virtual {v2, v1}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->startsetCallForwarding(Ljava/lang/String;)V

    goto :goto_0

    .line 3443
    :pswitch_1
    new-instance v2, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;

    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HostManager;->callForwardListener:Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    sget-object v4, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;->SLOT1:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    invoke-direct {v2, p0, p1, v3, v4}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;)V

    const-string v3, ""

    .line 3444
    invoke-virtual {v2, v3}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->startsetCallForwarding(Ljava/lang/String;)V

    goto :goto_0

    .line 3448
    :pswitch_2
    new-instance v2, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;

    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HostManager;->callForwardListener:Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    sget-object v4, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;->SLOT2:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    invoke-direct {v2, p0, p1, v3, v4}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;)V

    .line 3449
    invoke-virtual {v2, v1}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->startsetCallForwarding(Ljava/lang/String;)V

    goto :goto_0

    .line 3453
    :pswitch_3
    new-instance v2, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;

    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HostManager;->callForwardListener:Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    sget-object v4, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;->SLOT2:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    invoke-direct {v2, p0, p1, v3, v4}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;)V

    const-string v3, ""

    .line 3454
    invoke-virtual {v2, v3}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->startsetCallForwarding(Ljava/lang/String;)V

    goto :goto_0

    .line 3458
    :pswitch_4
    new-instance v2, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;

    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HostManager;->callForwardListener:Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    invoke-direct {v2, p0, p1, v3}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;)V

    invoke-virtual {v2, v1}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->startsetCallForwarding(Ljava/lang/String;)V

    goto :goto_0

    .line 3462
    :pswitch_5
    new-instance v2, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;

    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HostManager;->callForwardListener:Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    invoke-direct {v2, p0, p1, v3}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;)V

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->startsetCallForwarding(Ljava/lang/String;)V

    goto :goto_0

    .line 3466
    :pswitch_6
    new-instance v2, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;

    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HostManager;->callForwardListener:Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    invoke-direct {v2, p0, p1, v3}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;)V

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->startsetCallForwarding(Ljava/lang/String;)V

    goto :goto_0

    .line 3471
    :cond_0
    new-instance v2, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;

    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HostManager;->callForwardListener:Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    invoke-direct {v2, p0, p1, v3}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;)V

    if-nez p2, :cond_1

    .end local v1    # "wearablephonenumber":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, v1}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->startsetCallForwarding(Ljava/lang/String;)V

    goto :goto_0

    .restart local v1    # "wearablephonenumber":Ljava/lang/String;
    :cond_1
    const-string v1, ""

    goto :goto_1

    .line 3435
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private doReadCallForwardingSettings(Ljava/lang/String;)V
    .locals 3
    .param p1, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 3476
    sget-object v0, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doReadCallForwardingSettings, deviceID ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3477
    new-instance v0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HostManager;->callForwardListener:Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;)V

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->startgetCallForwarding()V

    .line 3478
    sget-object v0, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v1, "doReadCallForwardingSettings, ends"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3479
    return-void
.end method

.method private findCallerPackageNameByBinder()[Ljava/lang/String;
    .locals 8

    .prologue
    .line 3584
    const/4 v6, 0x0

    new-array v2, v6, [Ljava/lang/String;

    .line 3586
    .local v2, "pkgList":[Ljava/lang/String;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x16

    if-lt v6, v7, :cond_2

    .line 3588
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 3589
    .local v5, "uid":I
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 3590
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 3609
    .end local v5    # "uid":I
    :cond_0
    :goto_0
    return-object v2

    .line 3592
    .restart local v5    # "uid":I
    :cond_1
    sget-object v6, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v7, "Context is null"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3594
    .end local v5    # "uid":I
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 3596
    .local v1, "pid":I
    const-string v6, "activity"

    invoke-virtual {p0, v6}, Lcom/samsung/android/hostmanager/service/HostManager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3597
    .local v0, "am":Landroid/app/ActivityManager;
    if-eqz v0, :cond_4

    .line 3598
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 3599
    .local v4, "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v4, :cond_0

    .line 3600
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 3601
    .local v3, "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v7, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v7, v1, :cond_3

    .line 3602
    iget-object v2, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    goto :goto_1

    .line 3606
    .end local v3    # "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v4    # "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_4
    sget-object v6, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v7, "ActivityManager am is null"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getBnRManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;
    .locals 3
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 3304
    const/4 v0, 0x0

    .line 3306
    .local v0, "bnrManager":Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getBackupRestoreManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-result-object v0

    .line 3307
    if-eqz v0, :cond_0

    .line 3308
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMSetupHandler:Lcom/samsung/android/hostmanager/service/HostManager$HMSetupHandler;

    invoke-virtual {v0, v2}, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;->setListener(Landroid/os/Handler;)V
    :try_end_0
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3314
    :cond_0
    :goto_0
    return-object v0

    .line 3310
    :catch_0
    move-exception v1

    .line 3311
    .local v1, "e1":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method private static getListOfFiles()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 181
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/Android/HMLog/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 182
    .local v3, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    .local v0, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 185
    .local v2, "list_names":[Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 186
    .local v1, "isfolder":Z
    new-instance v4, Lcom/samsung/android/hostmanager/service/HostManager$1;

    invoke-direct {v4}, Lcom/samsung/android/hostmanager/service/HostManager$1;-><init>()V

    invoke-virtual {v0, v4}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v2

    .line 195
    return-object v2
.end method

.method private getListOfRegisteredDevices(Landroid/content/Context;)Ljava/util/List;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/WearableConnectInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3337
    sget-object v0, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v12, "getListOfRegisteredDevices:"

    invoke-static {v0, v12}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3339
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 3341
    .local v10, "listOfDevice":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/WearableConnectInfo;>;"
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/uhm/framework/appregistry/BaseContentProvider;->DEVICE_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3342
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3344
    :cond_0
    const-string v0, "package_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3345
    .local v1, "packageName":Ljava/lang/String;
    const-string v0, "connected"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 3346
    .local v2, "connect_status":I
    const-string v0, "bt_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3347
    .local v3, "deviceId":Ljava/lang/String;
    const-string v0, "device_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 3350
    .local v4, "deviceName":Ljava/lang/String;
    const/4 v11, 0x0

    .line 3352
    .local v11, "statusManager":Lcom/samsung/android/hostmanager/manager/IStatusManager;
    :try_start_1
    invoke-static {v3}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getStatusManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/IStatusManager;
    :try_end_1
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    .line 3357
    :goto_0
    if-eqz v11, :cond_1

    .line 3358
    :try_start_2
    invoke-interface {v11}, Lcom/samsung/android/hostmanager/manager/IStatusManager;->getWearableStatus()Lcom/samsung/android/hostmanager/aidl/DeviceInfo;

    move-result-object v7

    .line 3359
    .local v7, "deviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    if-eqz v7, :cond_4

    .line 3360
    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceType()Ljava/lang/String;

    move-result-object v8

    .line 3361
    .local v8, "devicetype":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, "_SupportWearableStatus"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/hostmanager/utils/PrefUtils;->getPreferenceBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    .line 3363
    .local v5, "isSupportFeatureWearableStatus":Z
    new-instance v0, Lcom/samsung/android/hostmanager/aidl/WearableConnectInfo;

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hostmanager/aidl/WearableConnectInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3369
    .end local v5    # "isSupportFeatureWearableStatus":Z
    .end local v7    # "deviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    .end local v8    # "devicetype":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3371
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "connect_status":I
    .end local v3    # "deviceId":Ljava/lang/String;
    .end local v4    # "deviceName":Ljava/lang/String;
    .end local v11    # "statusManager":Lcom/samsung/android/hostmanager/manager/IStatusManager;
    :cond_2
    if-eqz v6, :cond_3

    .line 3372
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3379
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_3
    :goto_2
    sget-object v0, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "DB::listOfDevice return "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3380
    return-object v10

    .line 3353
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v2    # "connect_status":I
    .restart local v3    # "deviceId":Ljava/lang/String;
    .restart local v4    # "deviceName":Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "statusManager":Lcom/samsung/android/hostmanager/manager/IStatusManager;
    :catch_0
    move-exception v9

    .line 3354
    .local v9, "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    :try_start_3
    invoke-virtual {v9}, Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 3375
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "connect_status":I
    .end local v3    # "deviceId":Ljava/lang/String;
    .end local v4    # "deviceName":Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v9    # "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    .end local v11    # "statusManager":Lcom/samsung/android/hostmanager/manager/IStatusManager;
    :catch_1
    move-exception v9

    .line 3376
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    sget-object v0, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v12, "IllegalArgumentException while getListOfRegisteredDevices"

    invoke-static {v0, v12}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3377
    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    .line 3366
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v2    # "connect_status":I
    .restart local v3    # "deviceId":Ljava/lang/String;
    .restart local v4    # "deviceName":Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "deviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    .restart local v11    # "statusManager":Lcom/samsung/android/hostmanager/manager/IStatusManager;
    :cond_4
    :try_start_4
    sget-object v0, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v12, "getListOfRegisteredDevices() deviceinfo is null"

    invoke-static {v0, v12}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1
.end method

.method private getPackageManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/IPackageManager;
    .locals 3
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 3318
    const/4 v1, 0x0

    .line 3320
    .local v1, "packageManager":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getPackageManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/IPackageManager;

    move-result-object v1

    .line 3321
    if-eqz v1, :cond_0

    .line 3322
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMSetupHandler:Lcom/samsung/android/hostmanager/service/HostManager$HMSetupHandler;

    invoke-interface {v1, v2}, Lcom/samsung/android/hostmanager/manager/IPackageManager;->setListener(Lcom/samsung/android/hostmanager/service/HostManager$HMSetupHandler;)V
    :try_end_0
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3328
    :cond_0
    :goto_0
    return-object v1

    .line 3324
    :catch_0
    move-exception v0

    .line 3325
    .local v0, "e1":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method private isExistRegistryDevice(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 501
    sget-object v1, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isExistRegistryDevice:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HostManager;->provider:Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;

    invoke-virtual {v1, p1, p0}, Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;->queryDevicebyPackageNameRegistryData(Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 505
    .local v0, "device":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 506
    sget-object v1, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v2, "isExistRegistryDevice return true"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    const/4 v1, 0x1

    .line 510
    :goto_0
    return v1

    .line 509
    :cond_0
    sget-object v1, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v2, "isExistRegistryDevice return false"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private logfileDump()Z
    .locals 19

    .prologue
    .line 3133
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/Android/HMLog/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 3136
    .local v12, "fileLogDir":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/log/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 3139
    .local v14, "filedumpDir":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "dumpState-HM.log"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 3140
    .local v13, "filePath":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "dumpState-HM.log"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3142
    .local v9, "dumppath":Ljava/lang/String;
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3143
    .local v18, "logfile":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3145
    .local v8, "dumpFile":Ljava/io/File;
    if-eqz v18, :cond_0

    if-nez v8, :cond_1

    .line 3146
    :cond_0
    const/4 v4, 0x0

    .line 3218
    :goto_0
    return v4

    .line 3149
    :cond_1
    :try_start_0
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 3150
    const/4 v4, 0x0

    goto :goto_0

    .line 3152
    :cond_2
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3153
    .local v11, "fileDir":Ljava/io/File;
    if-eqz v11, :cond_3

    .line 3154
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_3

    .line 3156
    sget-object v4, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v5, "Coudn\'t dump log files, can not mkdirs"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/log/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 3161
    :cond_3
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3162
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3163
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    move-result v17

    .line 3164
    .local v17, "isCreated":Z
    sget-object v4, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isCreated = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3169
    .end local v17    # "isCreated":Z
    :cond_4
    new-instance v15, Ljava/io/FileInputStream;

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 3170
    .local v15, "fis":Ljava/io/FileInputStream;
    new-instance v16, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 3171
    .local v16, "fos":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 3172
    .local v3, "logSrc":Ljava/nio/channels/FileChannel;
    const/4 v2, 0x0

    .line 3174
    .local v2, "logDst":Ljava/nio/channels/FileChannel;
    if-eqz v15, :cond_5

    .line 3175
    :try_start_1
    invoke-virtual {v15}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 3177
    :cond_5
    if-eqz v16, :cond_6

    .line 3178
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 3180
    :cond_6
    if-eqz v15, :cond_7

    if-eqz v16, :cond_7

    .line 3181
    const-wide/16 v4, 0x0

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 3183
    :cond_7
    if-eqz v15, :cond_8

    .line 3184
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V

    .line 3186
    :cond_8
    if-eqz v16, :cond_9

    .line 3187
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V

    .line 3189
    :cond_9
    if-eqz v3, :cond_a

    .line 3190
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 3192
    :cond_a
    if-eqz v2, :cond_b

    .line 3193
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3218
    :cond_b
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3195
    :catch_0
    move-exception v10

    .line 3196
    .local v10, "e":Ljava/lang/Exception;
    if-eqz v15, :cond_c

    .line 3197
    :try_start_2
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V

    .line 3199
    :cond_c
    if-eqz v16, :cond_d

    .line 3200
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V

    .line 3202
    :cond_d
    if-eqz v3, :cond_e

    .line 3203
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 3205
    :cond_e
    if-eqz v2, :cond_f

    .line 3206
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 3208
    :cond_f
    sget-object v4, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v5, "Coudn\'t dump log files"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/log/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 3209
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 3211
    .end local v2    # "logDst":Ljava/nio/channels/FileChannel;
    .end local v3    # "logSrc":Ljava/nio/channels/FileChannel;
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v11    # "fileDir":Ljava/io/File;
    .end local v15    # "fis":Ljava/io/FileInputStream;
    .end local v16    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v10

    .line 3212
    .local v10, "e":Ljava/lang/RuntimeException;
    sget-object v4, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v5, "Coudn\'t dump log files : RuntimeException"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/log/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 3213
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 3214
    .end local v10    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v10

    .line 3215
    .local v10, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v5, "Coudn\'t dump log files"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/log/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 3216
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method private static onRestoreProgressUpdate(Ljava/lang/String;I)V
    .locals 1
    .param p0, "desc"    # Ljava/lang/String;
    .param p1, "progress"    # I

    .prologue
    .line 2252
    sget-object v0, Lcom/samsung/android/hostmanager/service/HostManager;->mIUHostManager:Lcom/samsung/android/hostmanager/service/IUHostManager;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/hostmanager/service/IUHostManager;->onRestoreProgressUpdate(Ljava/lang/String;I)V

    .line 2253
    return-void
.end method

.method private static onSystemRestoreComplete()V
    .locals 2

    .prologue
    .line 2247
    sget-object v0, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v1, "onSystemRestoreComplete"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2248
    sget-object v0, Lcom/samsung/android/hostmanager/service/HostManager;->mIUHostManager:Lcom/samsung/android/hostmanager/service/IUHostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/IUHostManager;->onSystemRestoreComplete()V

    .line 2249
    return-void
.end method

.method private static onSystemRestoreReady()V
    .locals 1

    .prologue
    .line 2231
    sget-object v0, Lcom/samsung/android/hostmanager/service/HostManager;->mIUHostManager:Lcom/samsung/android/hostmanager/service/IUHostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/IUHostManager;->onSystemRestoreReady()V

    .line 2232
    return-void
.end method

.method private printConntype(I)V
    .locals 2
    .param p1, "conntype"    # I

    .prologue
    .line 1066
    packed-switch p1, :pswitch_data_0

    .line 1080
    :goto_0
    return-void

    .line 1068
    :pswitch_0
    sget-object v0, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v1, "CM::startManageConnectionInfo() conntype is CONNECT"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1071
    :pswitch_1
    sget-object v0, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v1, "CM::startManageConnectionInfo() conntype is DISCONNECT"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1074
    :pswitch_2
    sget-object v0, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v1, "CM::startManageConnectionInfo() conntype is CHANGECONNECTION"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1077
    :pswitch_3
    sget-object v0, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v1, "CM::startManageConnectionInfo() conntype is CONNECT_BY_DEVICE_PICKER"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1066
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private registerConnectedWearableContentObserver(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 570
    sget-object v0, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v1, "registerConnectedWearableContentObserver"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    if-eqz p1, :cond_0

    .line 572
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 573
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->isSamsungDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 574
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "connected_wearable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HostManager;->connectedWearableContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 587
    :cond_0
    :goto_0
    return-void

    .line 577
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "connected_wearable"

    invoke-static {v1}, Lcom/samsung/android/uhm/framework/ui/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HostManager;->connectedWearableContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 581
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "connected_wearable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HostManager;->connectedWearableContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method private registerTShareLoginContentObserver(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 629
    sget-object v0, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v1, "registerTShareLoginContentObserver"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    if-eqz p1, :cond_0

    .line 631
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 632
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tshare_login_state"

    invoke-static {v1}, Lcom/samsung/android/uhm/framework/ui/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HostManager;->TShareLoginContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 639
    :cond_0
    :goto_0
    return-void

    .line 635
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tshare_login_state"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HostManager;->TShareLoginContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method private registerTimeDateLocaleChangeReceiver()V
    .locals 2

    .prologue
    .line 2031
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2032
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2033
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2034
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2035
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2036
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mTimeDateLocaleBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/hostmanager/service/HostManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2037
    return-void
.end method

.method private sendFinishMessageToApp()V
    .locals 3

    .prologue
    .line 3528
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mCFHandler:Lcom/samsung/android/hostmanager/service/HostManager$HMSetupHandler;

    const/16 v2, 0xfbd

    invoke-virtual {v1, v2}, Lcom/samsung/android/hostmanager/service/HostManager$HMSetupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3529
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mCFHandler:Lcom/samsung/android/hostmanager/service/HostManager$HMSetupHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/hostmanager/service/HostManager$HMSetupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3530
    return-void
.end method

.method private sendStartHostMAnagerServiceBroadcast()V
    .locals 3

    .prologue
    .line 672
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 673
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.hostmanager.service.START"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 674
    sget-object v1, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v2, "sendBroadCastToInstalledReceiver()::com.samsung.android.hostmanager.service.START"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    invoke-virtual {p0, v0}, Lcom/samsung/android/hostmanager/service/HostManager;->sendBroadcast(Landroid/content/Intent;)V

    .line 676
    return-void
.end method

.method public static setNotificationAccess(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 456
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v4, "Plugin changed - setNotificationAccess"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const/4 v1, 0x0

    .line 459
    .local v1, "bUpdate":Z
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-le v3, v4, :cond_1

    .line 460
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v4, "Plugin changed - Turn Notification access on with user agreement for the first time"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/settings/SystemSettingsFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/settings/SystemSettingsInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/settings/SystemSettingsInterface;->ENABLED_NOTIFICATION_LISTENERS()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 462
    .local v2, "notificationAccessSetting":Ljava/lang/String;
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Plugin changed - Before set, notificationAccessSetting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const-string v0, "com.samsung.accessory.goproviders/com.samsung.accessory.goproviders.sanotificationservice.SANotificationServiceSystemNotificationListener"

    .line 465
    .local v0, "NOTIFICATION_LISTENER":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 466
    move-object v2, v0

    .line 467
    const/4 v1, 0x1

    .line 476
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 477
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/settings/SystemSettingsFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/settings/SystemSettingsInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/settings/SystemSettingsInterface;->ENABLED_NOTIFICATION_LISTENERS()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 478
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Plugin changed - After set, notificationAccessSetting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    .end local v0    # "NOTIFICATION_LISTENER":Ljava/lang/String;
    .end local v2    # "notificationAccessSetting":Ljava/lang/String;
    :cond_1
    return-void

    .line 468
    .restart local v0    # "NOTIFICATION_LISTENER":Ljava/lang/String;
    .restart local v2    # "notificationAccessSetting":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 469
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 470
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 474
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 472
    :cond_3
    move-object v2, v0

    goto :goto_1
.end method

.method private unregisterReceivers()V
    .locals 4

    .prologue
    .line 2040
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mTimeDateLocaleBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/samsung/android/hostmanager/service/HostManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2042
    invoke-static {}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getInstance()Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;

    move-result-object v2

    const-string v3, "Gear"

    invoke-virtual {v2, v3}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getConnectedDeviceIdByType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2045
    .local v0, "deviceID":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/samsung/android/hostmanager/service/HostManager;->getPackageManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/IPackageManager;

    move-result-object v1

    .line 2046
    .local v1, "pm":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    if-eqz v1, :cond_0

    .line 2047
    invoke-interface {v1}, Lcom/samsung/android/hostmanager/manager/IPackageManager;->unregisterUnknownSourceReceiver()V

    .line 2052
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mPackageReceiver:Lcom/samsung/android/hostmanager/notification/NotificationPackageReceiver;

    invoke-virtual {p0, v2}, Lcom/samsung/android/hostmanager/service/HostManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2053
    return-void

    .line 2049
    :cond_0
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v3, "PM instance null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public cancelFileonSending(ILjava/lang/String;)V
    .locals 1
    .param p1, "transferID"    # I
    .param p2, "hPackageName"    # Ljava/lang/String;

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mICHostManager:Lcom/samsung/android/hostmanager/service/ICHostManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/hostmanager/service/ICHostManager;->cancelFileonSending(ILjava/lang/String;)V

    .line 1256
    return-void
.end method

.method public checkPermissionToCall()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 3533
    sget-object v5, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v6, "checkPermissionToCall"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3534
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/service/HostManager;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 3535
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/service/HostManager;->findCallerPackageNameByBinder()[Ljava/lang/String;

    move-result-object v0

    .line 3536
    .local v0, "callerPackageNames":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 3537
    .local v2, "permission":Z
    array-length v6, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v1, v0, v5

    .line 3538
    .local v1, "packageName":Ljava/lang/String;
    const-string v7, "com.samsung.android.hostmanager.permission.CONTROL_WEARABLE_STATUS"

    invoke-virtual {v3, v7, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_1

    .line 3540
    const/4 v2, 0x1

    .line 3544
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_0
    sget-object v5, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkPermissionToCall "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3545
    if-ne v2, v4, :cond_2

    .line 3550
    :goto_1
    return v4

    .line 3537
    .restart local v1    # "packageName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3548
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v0}, Lcom/samsung/android/hostmanager/service/HostManager;->checkSignatures([Ljava/lang/String;)Z

    move-result v4

    .line 3549
    .local v4, "validSig":Z
    sget-object v5, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkPermissionToCall signatures"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public cloudBackup(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "deviceID"    # Ljava/lang/String;
    .param p4, "appPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 928
    return-void
.end method

.method public cloudRestore(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "deviceID"    # Ljava/lang/String;
    .param p4, "appID"    # Ljava/lang/String;
    .param p5, "appVersion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 933
    return-void
.end method

.method public deleteGalleryImages([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "GMFileList"    # [Ljava/lang/String;
    .param p2, "HMFileList"    # [Ljava/lang/String;
    .param p3, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 3048
    sget-object v6, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v7, "deleteGalleryImages()"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3050
    invoke-static {p3}, Lcom/samsung/android/hostmanager/status/StatusUtils;->getDeviceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3052
    .local v2, "deviceType":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/service/HostManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/files/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/Wallpaper/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3054
    .local v3, "fileDir":Ljava/lang/String;
    array-length v0, p1

    .line 3055
    .local v0, "GMFileListSize":I
    array-length v1, p2

    .line 3058
    .local v1, "HMFileListSize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_3

    .line 3059
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v1, :cond_0

    .line 3060
    aget-object v6, p1, v4

    aget-object v7, p2, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3065
    :cond_0
    if-ne v5, v1, :cond_1

    .line 3066
    aget-object v6, p1, v4

    invoke-static {v3, v6}, Lcom/samsung/android/hostmanager/utils/FileUtils;->deleteFileInFolder(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3058
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3059
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3069
    .end local v5    # "j":I
    :cond_3
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 3120
    new-instance v0, Lcom/samsung/android/hostmanager/service/HostManager$9;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/service/HostManager$9;-><init>(Lcom/samsung/android/hostmanager/service/HostManager;)V

    .line 3127
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager$9;->start()V

    .line 3128
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3129
    return-void
.end method

.method public getAddGalleryImageFromWMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "deviceID"    # Ljava/lang/String;
    .param p4, "isResponse"    # Z

    .prologue
    .line 2901
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAddGalleryImageFromWMS() - fileName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2903
    invoke-static {p3}, Lcom/samsung/android/hostmanager/status/StatusUtils;->getDeviceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2905
    .local v0, "deviceType":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/service/HostManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/files/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/Wallpaper/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2908
    .local v1, "filePath":Ljava/lang/String;
    if-nez p2, :cond_1

    .line 2909
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v3, "data is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2910
    if-eqz p4, :cond_0

    .line 2911
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    const-string v3, "failure"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4, p3}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->responseAddGalleryImageFromWMS(Ljava/lang/String;ILjava/lang/String;)V

    .line 2931
    :cond_0
    :goto_0
    return-void

    .line 2914
    :cond_1
    invoke-virtual {p0, v1, p2}, Lcom/samsung/android/hostmanager/service/HostManager;->saveGalleryImg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2915
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v3, "saveGalleryImage is success"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2916
    if-eqz p4, :cond_2

    .line 2917
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    const-string v3, "success"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p3}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->responseAddGalleryImageFromWMS(Ljava/lang/String;ILjava/lang/String;)V

    .line 2926
    :cond_2
    :goto_1
    invoke-virtual {p0, p3}, Lcom/samsung/android/hostmanager/service/HostManager;->printFileList(Ljava/lang/String;)V

    .line 2929
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->mIUHostManager:Lcom/samsung/android/hostmanager/service/IUHostManager;

    invoke-virtual {v2, p3}, Lcom/samsung/android/hostmanager/service/IUHostManager;->sendHomeBGSettingToApp(Ljava/lang/String;)V

    goto :goto_0

    .line 2920
    :cond_3
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v3, "saveGalleryImage is failure"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2921
    if-eqz p4, :cond_2

    .line 2922
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    const-string v3, "failure"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4, p3}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->responseAddGalleryImageFromWMS(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1
.end method

.method public getBackupFolderPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 2352
    sget-object v1, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBackupFolderPath deviceID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2354
    sget-object v1, Lcom/samsung/android/hostmanager/service/HostManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/service/HostManager;->getBnRManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForDeviceTypeBackupSubFolder(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v0

    .line 2355
    .local v0, "Path":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBackupFolderPath Path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2357
    return-object v0
.end method

.method public getBackupList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "deviceID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/BackupInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 906
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/service/HostManager;->getBnRManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;->getBackupList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConnectedByDeviceID(Ljava/lang/String;)I
    .locals 5
    .param p1, "deviceID"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 518
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getConnectedByDeviceID: deviceID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HostManager;->provider:Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;

    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1, v3}, Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;->queryDevicebyDeviceIdRegistryData(Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 521
    .local v1, "deviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 522
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;

    iget v0, v2, Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;->isConnected:I

    .line 523
    .local v0, "connectStatus":I
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getConnectedByDeviceID: connectStatus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    .end local v0    # "connectStatus":I
    :goto_0
    return v0

    .line 526
    :cond_0
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getConnectedByDeviceID: deviceList = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getConnectedScmWearableDevice(Ljava/lang/String;)Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    .locals 3
    .param p1, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 2565
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mWearableConnectionManager:Lcom/samsung/android/hostmanager/connection/IWConnectionManager;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Lcom/samsung/android/hostmanager/connection/IWConnectionManager;->getConnectedDeviceList(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 2568
    .local v0, "connectionManagerDeviceListSCS":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 2569
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;

    .line 2571
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDefaultClockPkgName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 2402
    const-string v2, "DeviceInfo"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/hostmanager/service/HostManager;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2403
    .local v1, "sharedPref":Landroid/content/SharedPreferences;
    const-string v2, "DEFAULT_CLOCK_PKGNAME"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2404
    .local v0, "defaultClockPkgName":Ljava/lang/String;
    return-object v0
.end method

.method public getDefaultPDClassName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2396
    const-string v2, "DeviceInfo"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/hostmanager/service/HostManager;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2397
    .local v1, "sharedPref":Landroid/content/SharedPreferences;
    const-string v2, "DEFAULT_PD_CLASSNAME"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2398
    .local v0, "defaultPdClassName":Ljava/lang/String;
    return-object v0
.end method

.method public getDeletedGalleryImagesFromWMS([Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "fileNames"    # [Ljava/lang/String;
    .param p2, "deviceID"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 2969
    sget-object v4, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v6, "getDeletedGalleryImagesFromWMS() : "

    invoke-static {v4, v6}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2971
    invoke-static {p2}, Lcom/samsung/android/hostmanager/status/StatusUtils;->getDeviceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2972
    .local v0, "deviceType":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/service/HostManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/files/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/Wallpaper/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2973
    .local v1, "fileDir":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2975
    .local v3, "result":Z
    if-eqz p1, :cond_1

    .line 2976
    array-length v6, p1

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v2, p1, v4

    .line 2977
    .local v2, "name":Ljava/lang/String;
    sget-object v7, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fileName : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2979
    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/utils/FileUtils;->deleteFileInFolder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 2981
    if-nez v3, :cond_0

    .line 2982
    iget-object v7, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    const-string v8, "failure"

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9, p2}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->responseDeleteGalleryImageFromWMS(Ljava/lang/String;ILjava/lang/String;)V

    .line 2976
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2987
    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    if-eqz v3, :cond_2

    .line 2988
    iget-object v4, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    const-string v6, "success"

    invoke-virtual {v4, v6, v5, p2}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->responseDeleteGalleryImageFromWMS(Ljava/lang/String;ILjava/lang/String;)V

    .line 2992
    :goto_1
    invoke-virtual {p0, p2}, Lcom/samsung/android/hostmanager/service/HostManager;->printFileList(Ljava/lang/String;)V

    .line 2995
    sget-object v4, Lcom/samsung/android/hostmanager/service/HostManager;->mIUHostManager:Lcom/samsung/android/hostmanager/service/IUHostManager;

    invoke-virtual {v4, p2}, Lcom/samsung/android/hostmanager/service/IUHostManager;->sendHomeBGSettingToApp(Ljava/lang/String;)V

    .line 2996
    return-void

    .line 2990
    :cond_2
    sget-object v4, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v5, "result is fales."

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getDeviceNameByDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 533
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/service/HostManager;->getDeviceRegistryDataByDeviceId(Ljava/lang/String;)Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;

    move-result-object v0

    .line 534
    .local v0, "device":Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;
    if-eqz v0, :cond_0

    .line 535
    sget-object v1, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceNameByDeviceId("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;->deviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    iget-object v1, v0, Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;->deviceName:Ljava/lang/String;

    .line 538
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDeviceRegistryDataByDeviceId(Ljava/lang/String;)Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;
    .locals 4
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 542
    sget-object v1, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceRegistryDataByDeviceId Id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HostManager;->provider:Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;

    invoke-virtual {v1, p1, p0}, Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;->queryDevicebyDeviceIdRegistryData(Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 544
    .local v0, "device":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 545
    sget-object v1, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v2, "getDeviceRegistryDataByDeviceId has 0 value"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const/4 v1, 0x0

    .line 548
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;

    goto :goto_0
.end method

.method public getGalleryListFromWMS([Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "HMFileList"    # [Ljava/lang/String;
    .param p2, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 2999
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v4, "getGalleryListFromWMS()"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3001
    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    const-string v4, "success"

    invoke-virtual {v3, v4, p2}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->responseSyncGalleryListFromWMS(Ljava/lang/String;Ljava/lang/String;)V

    .line 3003
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isRestoreGallery : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/hostmanager/service/HostManager;->isRestoreGallery:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3004
    iget-boolean v3, p0, Lcom/samsung/android/hostmanager/service/HostManager;->isRestoreGallery:Z

    if-eqz v3, :cond_0

    .line 3005
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v4, "More images are being restored."

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3006
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/android/hostmanager/service/HostManager;->isRestoreGallery:Z

    .line 3008
    invoke-virtual {p0, p2}, Lcom/samsung/android/hostmanager/service/HostManager;->restoreMoreImagesToWMS(Ljava/lang/String;)Z

    .line 3045
    :goto_0
    return-void

    .line 3013
    :cond_0
    invoke-static {p2}, Lcom/samsung/android/hostmanager/status/StatusUtils;->getDeviceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3015
    .local v1, "deviceType":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/service/HostManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/files/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Wallpaper/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3017
    .local v2, "fileDir":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 3018
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v4, "it does not existed more images in B3."

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3019
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v4, "Sync of more images is finished."

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3044
    :goto_1
    invoke-virtual {p0, p2}, Lcom/samsung/android/hostmanager/service/HostManager;->printFileList(Ljava/lang/String;)V

    goto :goto_0

    .line 3022
    :cond_1
    const-string v3, ".jpg"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/utils/FileUtils;->getFileListExtensionInFolder(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3024
    .local v0, "GMFileList":[Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 3026
    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/hostmanager/service/HostManager;->deleteGalleryImages([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 3029
    :cond_2
    const-string v3, ".jpg"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/utils/FileUtils;->getFileListExtensionInFolder(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3032
    if-nez v0, :cond_3

    .line 3033
    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/hostmanager/service/HostManager;->requestGalleryImage([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3035
    :cond_3
    array-length v3, v0

    array-length v4, p1

    if-ne v3, v4, :cond_4

    .line 3036
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v4, "it does not created more images in B3 during disconnection."

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3038
    :cond_4
    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/hostmanager/service/HostManager;->requestGalleryImage([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getHomeBGImageNames(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 2850
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v4, "getHomeBGImageNames()"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2852
    invoke-static {p1}, Lcom/samsung/android/hostmanager/status/StatusUtils;->getDeviceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2853
    .local v0, "deviceType":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/service/HostManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/files/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Wallpaper/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2854
    .local v1, "fileDir":Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/hostmanager/utils/FileUtils;->getFileNameList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2855
    .local v2, "imageNames":[Ljava/lang/String;
    return-object v2
.end method

.method public getHomeBGImagePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 2842
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v3, "getHomeBGImagePath()"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2844
    invoke-static {p1}, Lcom/samsung/android/hostmanager/status/StatusUtils;->getDeviceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2845
    .local v0, "deviceType":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/service/HostManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/files/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/Wallpaper/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2846
    .local v1, "fileDir":Ljava/lang/String;
    return-object v1
.end method

.method public getHomeBGWallpaperFromWMS([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "wallpaperNameArray"    # [Ljava/lang/String;
    .param p2, "wallpaperDataArray"    # [Ljava/lang/String;
    .param p3, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 2779
    sget-object v8, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v9, "getHomeBGWallpaperFromWMS()"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2780
    array-length v6, p2

    .line 2783
    .local v6, "wallpaperDataArraySize":I
    invoke-static {p3}, Lcom/samsung/android/hostmanager/status/StatusUtils;->getDeviceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2784
    .local v0, "deviceType":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/service/HostManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/files/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/Wallpaper/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2787
    .local v2, "fileDir":Ljava/lang/String;
    array-length v7, p1

    .line 2788
    .local v7, "wallpaperNum":I
    sget-object v8, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Wallpaper\'s number : + "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2791
    const-string v8, "png"

    invoke-static {v2, v8}, Lcom/samsung/android/hostmanager/utils/FileUtils;->deleteFileExtensionInFolder(Ljava/lang/String;Ljava/lang/String;)V

    .line 2793
    if-lez v7, :cond_1

    .line 2795
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v6, :cond_0

    .line 2796
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, p1, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2797
    .local v3, "filePath":Ljava/lang/String;
    aget-object v8, p2, v4

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    .line 2799
    .local v5, "wallpaperByteArray":[B
    invoke-static {v5}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->getBitmapFromBytearray([B)Landroid/graphics/Bitmap;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v8, v3, v9}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->saveImageFile(Landroid/graphics/Bitmap;Ljava/lang/String;I)Z

    .line 2800
    sget-object v8, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getHomeBGWallpaperFromWMS() - file is saved. filepath : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2795
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2802
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v5    # "wallpaperByteArray":[B
    :cond_0
    sget-object v8, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v9, "getHomeBGWallpaperFromWMS() - save is completed."

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2805
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/samsung/android/hostmanager/service/HostManager;->setNeedtoGetWallpaper(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2810
    .end local v4    # "i":I
    :cond_1
    :goto_1
    return-void

    .line 2806
    .restart local v4    # "i":I
    :catch_0
    move-exception v1

    .line 2807
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getInstalledAppType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 15
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3401
    sget-object v12, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getInstalledAppType("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3402
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->getGearModelName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 3404
    .local v4, "modelName":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "installed_clock_app"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {p0, v12, v13}, Lcom/samsung/android/hostmanager/service/HostManager;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 3405
    .local v5, "prefsInstalledClock":Landroid/content/SharedPreferences;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "installed_wapp_app"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {p0, v12, v13}, Lcom/samsung/android/hostmanager/service/HostManager;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 3406
    .local v9, "prefsInstalledWapp":Landroid/content/SharedPreferences;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "installed_font_app"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {p0, v12, v13}, Lcom/samsung/android/hostmanager/service/HostManager;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 3407
    .local v6, "prefsInstalledFont":Landroid/content/SharedPreferences;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "installed_tts_app"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {p0, v12, v13}, Lcom/samsung/android/hostmanager/service/HostManager;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 3408
    .local v8, "prefsInstalledTTSapp":Landroid/content/SharedPreferences;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "installed_ime_app"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {p0, v12, v13}, Lcom/samsung/android/hostmanager/service/HostManager;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 3409
    .local v7, "prefsInstalledIMEapp":Landroid/content/SharedPreferences;
    const-string v12, "empty"

    move-object/from16 v0, p2

    invoke-interface {v5, v0, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3410
    .local v1, "clockPackageName":Ljava/lang/String;
    const-string v12, "empty"

    move-object/from16 v0, p2

    invoke-interface {v9, v0, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3411
    .local v11, "wappPackageName":Ljava/lang/String;
    const-string v12, "empty"

    move-object/from16 v0, p2

    invoke-interface {v6, v0, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3412
    .local v2, "fontPackageName":Ljava/lang/String;
    const-string v12, "empty"

    move-object/from16 v0, p2

    invoke-interface {v8, v0, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3413
    .local v10, "ttsPackageName":Ljava/lang/String;
    const-string v12, "empty"

    move-object/from16 v0, p2

    invoke-interface {v7, v0, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3415
    .local v3, "imePackageName":Ljava/lang/String;
    const-string v12, "empty"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 3416
    const/4 v12, 0x1

    .line 3426
    :goto_0
    return v12

    .line 3417
    :cond_0
    const-string v12, "empty"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 3418
    const/4 v12, 0x2

    goto :goto_0

    .line 3419
    :cond_1
    const-string v12, "empty"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 3420
    const/4 v12, 0x3

    goto :goto_0

    .line 3421
    :cond_2
    const-string v12, "empty"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 3422
    const/4 v12, 0x4

    goto :goto_0

    .line 3423
    :cond_3
    const-string v12, "empty"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 3424
    const/4 v12, 0x5

    goto :goto_0

    .line 3426
    :cond_4
    const/4 v12, 0x0

    goto :goto_0
.end method

.method public getIsEulaPassed()Z
    .locals 1

    .prologue
    .line 2307
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->getIsEulaPassed()Z

    move-result v0

    return v0
.end method

.method public getIsRestoreEulaPassNeededDevice(Ljava/lang/String;)Z
    .locals 5
    .param p1, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 2341
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIsRestoreEulaPassNeededDevice deviceID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2343
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/service/HostManager;->getBnRManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForDeviceTypeBackupSubFolder(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v0

    .line 2344
    .local v0, "Path":Ljava/lang/String;
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIsRestoreEulaPassNeededDevice Path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2345
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2347
    .local v1, "file":Ljava/io/File;
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v2, p1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->getIsRestoreEulaPassNeededDevice(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getListOfRegisteredDevices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/WearableConnectInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3332
    sget-object v0, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v1, "getListOfRegisteredDevices:"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3333
    sget-object v0, Lcom/samsung/android/hostmanager/service/HostManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/hostmanager/service/HostManager;->getListOfRegisteredDevices(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNumOfRegisteredPackage()I
    .locals 7

    .prologue
    .line 484
    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HostManager;->provider:Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;

    invoke-virtual {v3, p0}, Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;->queryAllAppRegistryData(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 486
    .local v2, "plugin":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/uhm/framework/appregistry/data/AppRegistryData;>;"
    const/4 v1, 0x0

    .line 487
    .local v1, "num":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/uhm/framework/appregistry/data/AppRegistryData;

    .line 488
    .local v0, "data":Lcom/samsung/android/uhm/framework/appregistry/data/AppRegistryData;
    sget-object v4, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DB::getNumOfRegisteredPackage data = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/samsung/android/uhm/framework/appregistry/data/AppRegistryData;->appName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    sget-object v4, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DB::getNumOfRegisteredPackage deviceId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/samsung/android/uhm/framework/appregistry/data/AppRegistryData;->deviceId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    sget-object v4, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DB::getNumOfRegisteredPackage packagename = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/samsung/android/uhm/framework/appregistry/data/AppRegistryData;->packagename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    sget-object v4, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DB::getNumOfRegisteredPackage version = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/samsung/android/uhm/framework/appregistry/data/AppRegistryData;->version:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iget-object v4, v0, Lcom/samsung/android/uhm/framework/appregistry/data/AppRegistryData;->packagename:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/samsung/android/hostmanager/service/HostManager;->isExistRegistryDevice(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 493
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 496
    .end local v0    # "data":Lcom/samsung/android/uhm/framework/appregistry/data/AppRegistryData;
    :cond_1
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DB::getNumOfPackage return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    return v1
.end method

.method public getPackageNameByDeviceID(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 552
    if-nez p1, :cond_0

    .line 553
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v4, "getConnectedWearableDeviceID() deviceID = null"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    :goto_0
    return-object v2

    .line 556
    :cond_0
    new-instance v1, Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;

    invoke-direct {v1}, Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;-><init>()V

    .line 558
    .local v1, "provider":Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;
    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;->queryDevicebyDeviceIdRegistryData(Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 560
    .local v0, "device":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 561
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;

    iget-object v2, v2, Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;->packagename:Ljava/lang/String;

    goto :goto_0

    .line 563
    :cond_1
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getConnectedWearableDeviceID() deviceID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " device = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSHealthSupportInfo()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 3385
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    if-eqz v0, :cond_0

    .line 3386
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->getSHealthSupportInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 3389
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWappListPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2361
    invoke-static {p1}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getSetupMgr(Ljava/lang/String;)Lcom/samsung/android/hostmanager/setup/SetupManager;

    move-result-object v2

    .line 2362
    .local v2, "setupmgr":Lcom/samsung/android/hostmanager/setup/SetupManager;
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getWappListPackageName() setupmgr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", deviceID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2363
    invoke-virtual {v2, p2}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getWappListPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2364
    .local v0, "classname":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2365
    const-string v3, "DeviceInfo"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/hostmanager/service/HostManager;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2366
    .local v1, "preference":Landroid/content/SharedPreferences;
    const-string v3, "DEFAULT_PD_CLASSNAME"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2368
    .end local v1    # "preference":Landroid/content/SharedPreferences;
    :cond_0
    return-object v0
.end method

.method public getWearableInfo()Z
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v6, 0x0

    .line 3253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3254
    .local v0, "connectionManagerDeviceListBT":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3255
    .local v2, "connectionManagerDeviceListSCS":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;>;"
    iget-object v5, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mWearableConnectionManager:Lcom/samsung/android/hostmanager/connection/IWConnectionManager;

    const/4 v7, 0x4

    invoke-interface {v5, v7}, Lcom/samsung/android/hostmanager/connection/IWConnectionManager;->getConnectedDeviceList(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 3256
    iget-object v5, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mWearableConnectionManager:Lcom/samsung/android/hostmanager/connection/IWConnectionManager;

    const/4 v7, 0x5

    invoke-interface {v5, v7}, Lcom/samsung/android/hostmanager/connection/IWConnectionManager;->getConnectedDeviceList(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 3257
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 3258
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3259
    .local v1, "connectionManagerDeviceListBTSize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-le v1, v4, :cond_6

    .line 3260
    iget-object v5, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    if-eqz v5, :cond_1

    .line 3261
    sget-object v7, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getconnectedDeviceList()::connectionManagerDeviceListBT.get(i).getBTAddress() = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3262
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3261
    invoke-static {v7, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3263
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 3264
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v7

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getConnectedType(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v9, :cond_0

    .line 3265
    iget-object v7, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->reqWearableInformation(Ljava/lang/String;)Z

    .line 3259
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3267
    :cond_0
    sget-object v5, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v7, "SCS connected. Don\'t send getWearableInfo to Gear."

    invoke-static {v5, v7}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 3296
    .end local v1    # "connectionManagerDeviceListBTSize":I
    .end local v4    # "i":I
    :goto_1
    return v5

    .line 3271
    .restart local v1    # "connectionManagerDeviceListBTSize":I
    .restart local v4    # "i":I
    :cond_1
    sget-object v5, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v7, "getconnectedDeviceList()::mHMProviderService = null"

    invoke-static {v5, v7}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 3272
    goto :goto_1

    .line 3275
    .end local v1    # "connectionManagerDeviceListBTSize":I
    .end local v4    # "i":I
    :cond_2
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 3276
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3277
    .local v3, "connectionManagerDeviceListSCSSize":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    if-le v3, v4, :cond_6

    .line 3278
    iget-object v5, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    if-eqz v5, :cond_4

    .line 3279
    sget-object v7, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getconnectedDeviceList()::connectionManagerDeviceListSCS.get(i).getBTAddress() = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3280
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3279
    invoke-static {v7, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3281
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 3282
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v7

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getConnectedType(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v9, :cond_3

    .line 3283
    iget-object v7, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->reqWearableInformation(Ljava/lang/String;)Z

    .line 3277
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 3285
    :cond_3
    sget-object v5, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v7, "SCS connected. Don\'t send getWearableInfo to Gear."

    invoke-static {v5, v7}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 3286
    goto :goto_1

    .line 3289
    :cond_4
    sget-object v5, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v7, "getconnectedDeviceList()::mHMProviderService = null"

    invoke-static {v5, v7}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 3290
    goto :goto_1

    .end local v3    # "connectionManagerDeviceListSCSSize":I
    .end local v4    # "i":I
    :cond_5
    move v5, v6

    .line 3294
    goto :goto_1

    .line 3296
    .restart local v4    # "i":I
    :cond_6
    const/4 v5, 0x1

    goto :goto_1
.end method

.method public getWearableInfo(Ljava/lang/String;)Z
    .locals 3
    .param p1, "deviceID"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 3236
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    if-eqz v1, :cond_0

    .line 3237
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3238
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getConnectedType(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 3240
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->reqWearableInformation(Ljava/lang/String;)Z

    .line 3241
    const/4 v0, 0x1

    .line 3248
    :cond_0
    :goto_0
    return v0

    .line 3244
    :cond_1
    sget-object v1, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v2, "SCS connected. Don\'t send getWearableInfo to Gear."

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleWearableConnected(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 3617
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->handleWearableConnected(Ljava/lang/String;)V

    .line 3618
    return-void
.end method

.method public initConnType()V
    .locals 2

    .prologue
    .line 1083
    sget-object v0, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v1, "initConnType()"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mConnType:I

    .line 1085
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    if-eqz v0, :cond_0

    .line 1086
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    iget v1, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mConnType:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->setHostManagerConnectionType(I)V

    .line 1088
    :cond_0
    return-void
.end method

.method public installSpecialAppViaStub(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "updateCheck"    # Z
    .param p3, "targetDeviceID"    # Ljava/lang/String;
    .param p4, "callerPlugin"    # Ljava/lang/String;

    .prologue
    .line 3225
    sget-object v0, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " installSpecialAppViaStub :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3227
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mInstallManager:Lcom/samsung/android/hostmanager/pm/InstallManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/hostmanager/pm/InstallManager;->installSpecialAppViaStub(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 3228
    return-void
.end method

.method public isConnected(Ljava/lang/String;)Z
    .locals 8
    .param p1, "BTAddress"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x2

    .line 2486
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BTAddress = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2488
    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mWearableConnectionManager:Lcom/samsung/android/hostmanager/connection/IWConnectionManager;

    invoke-interface {v3}, Lcom/samsung/android/hostmanager/connection/IWConnectionManager;->hasProxy()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2489
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/service/HostManager;->isConnectedWithCM(Ljava/lang/String;)Z

    move-result v0

    .line 2498
    .local v0, "isConnectedByCM":Z
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isConnectedByCM = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " HMSAPProviderService.isConnected = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mWearableConnectionManager:Lcom/samsung/android/hostmanager/connection/IWConnectionManager;

    .line 2499
    invoke-interface {v5, p1}, Lcom/samsung/android/hostmanager/connection/IWConnectionManager;->getSASocket(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    move-result-object v5

    iget-boolean v5, v5, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->isConnected:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2498
    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2500
    if-nez p1, :cond_0

    .line 2501
    const/4 v0, 0x0

    .line 2504
    :cond_0
    if-nez v0, :cond_3

    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mWearableConnectionManager:Lcom/samsung/android/hostmanager/connection/IWConnectionManager;

    invoke-interface {v3, p1}, Lcom/samsung/android/hostmanager/connection/IWConnectionManager;->getSASocket(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    move-result-object v3

    iget-boolean v3, v3, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->isConnected:Z

    if-ne v3, v2, :cond_3

    .line 2505
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v3, "CM::isConnected()::CM = false, UI = true...returnValue = false"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2506
    sget-boolean v2, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->isSettingNotification:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->getCurNotiState()I

    move-result v2

    if-ne v2, v6, :cond_1

    .line 2507
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v2, p1, v7, v1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->setNotification(Ljava/lang/String;Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;I)V

    .line 2560
    .end local v0    # "isConnectedByCM":Z
    :cond_1
    :goto_0
    return v1

    .line 2491
    :cond_2
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->getConnectManager()Lcom/samsung/android/hostmanager/connection/IWSocketManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2494
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->getConnectManager()Lcom/samsung/android/hostmanager/connection/IWSocketManager;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v1, v7, v2}, Lcom/samsung/android/hostmanager/connection/IWSocketManager;->proxyInit(Ljava/lang/String;I)I

    .line 2495
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->getConnectManager()Lcom/samsung/android/hostmanager/connection/IWSocketManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/hostmanager/connection/IWSocketManager;->getSASocket(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    move-result-object v1

    iget-boolean v1, v1, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->isConnected:Z

    goto :goto_0

    .line 2510
    .restart local v0    # "isConnectedByCM":Z
    :cond_3
    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mWearableConnectionManager:Lcom/samsung/android/hostmanager/connection/IWConnectionManager;

    invoke-interface {v3, p1}, Lcom/samsung/android/hostmanager/connection/IWConnectionManager;->getSASocket(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    move-result-object v3

    iget-boolean v3, v3, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->isConnected:Z

    if-nez v3, :cond_7

    .line 2511
    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mWearableConnectionManager:Lcom/samsung/android/hostmanager/connection/IWConnectionManager;

    invoke-interface {v3, p1}, Lcom/samsung/android/hostmanager/connection/IWConnectionManager;->getSASocket(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    move-result-object v3

    iget-boolean v3, v3, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->isConnecting:Z

    if-ne v3, v2, :cond_5

    .line 2512
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CM::isConnected()::CM = true("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), UI = false, isConnecting = true...returnValue = false"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2514
    new-instance v2, Lcom/samsung/android/hostmanager/service/HostManager$8;

    invoke-direct {v2, p0}, Lcom/samsung/android/hostmanager/service/HostManager$8;-><init>(Lcom/samsung/android/hostmanager/service/HostManager;)V

    sput-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->mConnectingRunnable:Ljava/lang/Runnable;

    .line 2522
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->mConnectingHandler:Landroid/os/Handler;

    if-nez v2, :cond_4

    .line 2523
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    sput-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->mConnectingHandler:Landroid/os/Handler;

    .line 2526
    :cond_4
    iput-object p1, p0, Lcom/samsung/android/hostmanager/service/HostManager;->tempAddress:Ljava/lang/String;

    .line 2527
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->mConnectingHandler:Landroid/os/Handler;

    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->mConnectingRunnable:Ljava/lang/Runnable;

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2531
    :cond_5
    sget-object v1, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CM::isConnected()::CM = true("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), UI = false, isConnecting = false...returnValue = true"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2533
    sget-boolean v1, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->isSettingNotification:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->getCurNotiState()I

    move-result v1

    if-nez v1, :cond_6

    .line 2534
    sget-object v1, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v3, "CM::isConnected()::sync Notification icon into CONNECTION."

    invoke-static {v1, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2535
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v1, p1, v7, v6}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->setNotification(Ljava/lang/String;Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;I)V

    :cond_6
    move v1, v2

    .line 2537
    goto/16 :goto_0

    .line 2539
    :cond_7
    if-eqz v0, :cond_a

    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mWearableConnectionManager:Lcom/samsung/android/hostmanager/connection/IWConnectionManager;

    invoke-interface {v3, p1}, Lcom/samsung/android/hostmanager/connection/IWConnectionManager;->getSASocket(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    move-result-object v3

    iget-boolean v3, v3, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->isConnected:Z

    if-ne v3, v2, :cond_a

    .line 2540
    sget-object v1, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CM::isConnected()::CM = true("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), UI = true...returnValue = true"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2542
    sget-object v1, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HMSAPProviderService.isSettingNotification = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->isSettingNotification:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mHMProviderService.getCurNotiState() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    .line 2543
    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->getCurNotiState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2542
    invoke-static {v1, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2544
    sget-boolean v1, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->isSettingNotification:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->getCurNotiState()I

    move-result v1

    if-nez v1, :cond_8

    .line 2545
    sget-object v1, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v3, "CM::isConnected()::sync Notification icon into CONNECTION."

    invoke-static {v1, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2546
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v1, p1, v7, v6}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->setNotification(Ljava/lang/String;Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;I)V

    .line 2549
    :cond_8
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/service/HostManager;->startGetConnectedWearableType(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v6, :cond_9

    .line 2550
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->getCurNotiState()I

    move-result v1

    if-ne v1, v6, :cond_9

    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    .line 2551
    invoke-virtual {v1, p1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->compareDeviceAliasName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 2552
    sget-object v1, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v3, "alias name is changed"

    invoke-static {v1, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2553
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v1, p1, v7, v6}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->setNotification(Ljava/lang/String;Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;I)V

    :cond_9
    move v1, v2

    .line 2557
    goto/16 :goto_0

    .line 2559
    :cond_a
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v3, "CM::isConnected()::CM = false, UI = false...returnValue = false"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public isConnectedWithCM(Ljava/lang/String;)Z
    .locals 8
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 2420
    sget-object v4, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isConnectedWithCM()::deviceAddress = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2421
    const/4 v0, -0x1

    .line 2423
    .local v0, "connectType":I
    iget-object v4, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mWearableConnectionManager:Lcom/samsung/android/hostmanager/connection/IWConnectionManager;

    if-eqz v4, :cond_0

    .line 2424
    iget-object v4, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mWearableConnectionManager:Lcom/samsung/android/hostmanager/connection/IWConnectionManager;

    check-cast v4, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    invoke-virtual {v4, p1}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->getSASocket(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->getConnectType()I

    move-result v0

    .line 2426
    :cond_0
    sget-object v4, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isConnectedWithCM()::connectType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2428
    const/4 v3, 0x0

    .line 2430
    .local v3, "isConnected":Z
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2431
    .local v2, "connectionManagerDeviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;>;"
    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    .line 2432
    iget-object v4, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mWearableConnectionManager:Lcom/samsung/android/hostmanager/connection/IWConnectionManager;

    const/4 v5, 0x4

    invoke-interface {v4, v5}, Lcom/samsung/android/hostmanager/connection/IWConnectionManager;->getConnectedDeviceList(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 2437
    :cond_1
    :goto_0
    if-nez v2, :cond_3

    .line 2438
    sget-object v4, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v5, "connectionManagerDeviceList is null"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2439
    const/4 v4, 0x0

    .line 2451
    :goto_1
    return v4

    .line 2433
    :cond_2
    const/16 v4, 0x10

    if-ne v0, v4, :cond_1

    .line 2434
    iget-object v4, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mWearableConnectionManager:Lcom/samsung/android/hostmanager/connection/IWConnectionManager;

    const/4 v5, 0x5

    invoke-interface {v4, v5}, Lcom/samsung/android/hostmanager/connection/IWConnectionManager;->getConnectedDeviceList(I)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0

    .line 2442
    :cond_3
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_5

    .line 2443
    sget-object v4, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isConnectedWithCM()::connectionManagerDeviceList.size() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2444
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;

    .line 2445
    .local v1, "connectedDevice":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    invoke-virtual {v1}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2446
    sget-object v5, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deviceAddress("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") is connected by CM."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2447
    const/4 v3, 0x1

    goto :goto_2

    .end local v1    # "connectedDevice":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    :cond_5
    move v4, v3

    .line 2451
    goto :goto_1
.end method

.method public isConnecting()Z
    .locals 6

    .prologue
    .line 2455
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v4, "isConnecting()"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2456
    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mWearableConnectionManager:Lcom/samsung/android/hostmanager/connection/IWConnectionManager;

    if-eqz v3, :cond_4

    .line 2457
    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mWearableConnectionManager:Lcom/samsung/android/hostmanager/connection/IWConnectionManager;

    invoke-interface {v3}, Lcom/samsung/android/hostmanager/connection/IWConnectionManager;->getSASockets()Ljava/util/Map;

    move-result-object v2

    .line 2458
    .local v2, "sockets":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;>;"
    if-eqz v2, :cond_3

    .line 2459
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 2461
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2462
    .local v1, "socket":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    iget-boolean v3, v3, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->isConnecting:Z

    if-eqz v3, :cond_0

    .line 2463
    sget-object v4, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CM::already conncting socket = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->getDeviceBTAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2464
    const/4 v3, 0x1

    .line 2481
    .end local v1    # "socket":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;>;"
    .end local v2    # "sockets":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;>;"
    :goto_0
    return v3

    .line 2467
    .restart local v2    # "sockets":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;>;"
    :catch_0
    move-exception v0

    .line 2468
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2480
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "sockets":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;>;"
    :cond_1
    :goto_1
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v4, "CM::isConnecting() return false"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2481
    const/4 v3, 0x0

    goto :goto_0

    .line 2472
    .restart local v2    # "sockets":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;>;"
    :cond_2
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v4, "isConnecting() sockets.size() is zero"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2475
    :cond_3
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v4, "isConnecting() sockets is null"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2478
    .end local v2    # "sockets":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;>;"
    :cond_4
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v4, "isConnecting() mWearableConnectionManager is null"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public isDownloadInProgress(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3231
    sget-object v0, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isDownloadInProgress() packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3232
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mInstallManager:Lcom/samsung/android/hostmanager/pm/InstallManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/pm/InstallManager;->isDownloadInProgress(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNeedtoGetWallpaper()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2825
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v3, "isNeedtoGetWallpaper()"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2826
    const/4 v1, 0x0

    .line 2827
    .local v1, "result":Z
    const-string v2, "wallpaper"

    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/hostmanager/service/HostManager;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2828
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v2, "get_wallpaper"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 2829
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isNeedtoGetWallpaper() - result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2830
    return v1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 270
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v3, "G1G2switch:: onBind()"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 273
    const-string v2, "com.samsung.android.hostmanager.service.IUHostManager"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 274
    sget-object v1, Lcom/samsung/android/hostmanager/service/HostManager;->mIUHostManager:Lcom/samsung/android/hostmanager/service/IUHostManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/service/IUHostManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 281
    :cond_0
    :goto_0
    return-object v1

    .line 275
    :cond_1
    const-string v2, "com.samsung.android.hostmanager.service.ICHostManager"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 276
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mICHostManager:Lcom/samsung/android/hostmanager/service/ICHostManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/service/ICHostManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_0
.end method

.method public onCreate()V
    .locals 8

    .prologue
    .line 200
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 201
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v4, "G1G2switch::IU:: HostManager is onCreate()"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/service/HostManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->mContext:Landroid/content/Context;

    .line 204
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 205
    .local v2, "intent":Landroid/content/Intent;
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 206
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mProviderSvcConn:Landroid/content/ServiceConnection;

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 211
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->deletePreviousFiles()V

    .line 213
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getWearableConnectionMgr()Lcom/samsung/android/hostmanager/connection/IWConnectionManager;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mWearableConnectionManager:Lcom/samsung/android/hostmanager/connection/IWConnectionManager;

    .line 215
    invoke-static {}, Lcom/samsung/android/hostmanager/service/IUHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/IUHostManager;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->mIUHostManager:Lcom/samsung/android/hostmanager/service/IUHostManager;

    .line 216
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->mIUHostManager:Lcom/samsung/android/hostmanager/service/IUHostManager;

    invoke-virtual {v3, p0}, Lcom/samsung/android/hostmanager/service/IUHostManager;->setmHostManager(Lcom/samsung/android/hostmanager/service/HostManager;)V

    .line 218
    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mICHostManager:Lcom/samsung/android/hostmanager/service/ICHostManager;

    invoke-virtual {v3, p0}, Lcom/samsung/android/hostmanager/service/ICHostManager;->setmHostManager(Lcom/samsung/android/hostmanager/service/HostManager;)V

    .line 220
    new-instance v3, Lcom/samsung/android/hostmanager/service/HostManager$HMSetupHandler;

    invoke-direct {v3}, Lcom/samsung/android/hostmanager/service/HostManager$HMSetupHandler;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMSetupHandler:Lcom/samsung/android/hostmanager/service/HostManager$HMSetupHandler;

    .line 231
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/hostmanager/pm/InstallManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/hostmanager/pm/InstallManager;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mInstallManager:Lcom/samsung/android/hostmanager/pm/InstallManager;

    .line 233
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/service/HostManager;->registerTimeDateLocaleChangeReceiver()V

    .line 235
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/service/HostManager;->sendStartHostMAnagerServiceBroadcast()V

    .line 237
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 238
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "com.samsung.android.plugin.ACTION_PLUGIN_CHANGE_NOTI"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 239
    const-string v3, "com.samsung.android.action.HOST_DATA_CLEARED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 240
    const-string v3, "com.samsung.android.gear2plugin.ACTION_PROVIDER_REINSTALL_START"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 241
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string v5, "com.samsung.android.hostmanager.permission.ACCESS_UNIFIED_HOST_MANAGER"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 244
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/service/HostManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/hostmanager/service/HostManager;->registerConnectedWearableContentObserver(Landroid/content/Context;)V

    .line 246
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/service/HostManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/hostmanager/service/HostManager;->registerTShareLoginContentObserver(Landroid/content/Context;)V

    .line 248
    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HostManager;->provider:Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;

    if-nez v3, :cond_0

    .line 249
    new-instance v3, Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;

    invoke-direct {v3}, Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/hostmanager/service/HostManager;->provider:Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;

    .line 252
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 253
    .local v0, "f":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 254
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 256
    const-string v3, "package"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 258
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/samsung/android/hostmanager/service/HostManager$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/hostmanager/service/HostManager$2;-><init>(Lcom/samsung/android/hostmanager/service/HostManager;)V

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 264
    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mPackageReceiver:Lcom/samsung/android/hostmanager/notification/NotificationPackageReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/hostmanager/service/HostManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 265
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 287
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 288
    sget-object v1, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v2, "G1G2switch:: HostManager is onDestroy()"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/service/HostManager;->unregisterReceivers()V

    .line 295
    sget-object v1, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v2, "CM::onDestroy()::mWearableConnectionManager.deleteController()"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mWearableConnectionManager:Lcom/samsung/android/hostmanager/connection/IWConnectionManager;

    invoke-interface {v1}, Lcom/samsung/android/hostmanager/connection/IWConnectionManager;->deleteController()V

    .line 298
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v1, :cond_0

    .line 299
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1}, Landroid/media/SoundPool;->release()V

    .line 300
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mSoundPool:Landroid/media/SoundPool;

    .line 304
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/service/HostManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HostManager;->connectedWearableContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 306
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/service/HostManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HostManager;->TShareLoginContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 308
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mProviderSvcConn:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_1

    .line 309
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mProviderSvcConn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/samsung/android/hostmanager/service/HostManager;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :cond_1
    :goto_0
    return-void

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 152
    sget-object v1, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v2, "onStartCommand()"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/samsung/android/hostmanager/service/HostManager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 156
    .local v0, "notiManager":Landroid/app/NotificationManager;
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 158
    const/4 v1, 0x2

    return v1
.end method

.method public onSystemBackupRequest(Ljava/lang/String;I)V
    .locals 1
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 1547
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/service/HostManager;->getBnRManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;->onSystemBackupRequest(I)V

    .line 1549
    return-void
.end method

.method public onWearableStatusInfo(Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;)V
    .locals 1
    .param p1, "wearableStatusInfo"    # Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;

    .prologue
    .line 3300
    sget-object v0, Lcom/samsung/android/hostmanager/service/HostManager;->mIUHostManager:Lcom/samsung/android/hostmanager/service/IUHostManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/service/IUHostManager;->onWearableStatusInfo(Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;)V

    .line 3301
    return-void
.end method

.method public playDisconnectSound()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 695
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Lcom/samsung/android/hostmanager/service/HostManager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 696
    .local v3, "telManager":Landroid/telephony/TelephonyManager;
    sget-object v5, Lcom/samsung/android/hostmanager/service/HostManager;->mContext:Landroid/content/Context;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 697
    .local v2, "mAudioManager":Landroid/media/AudioManager;
    sget-object v5, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AUI mAudioManager.getRingerMode() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    if-eqz v5, :cond_0

    .line 699
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    .line 700
    .local v1, "callStatus":I
    sget-object v5, Lcom/samsung/android/hostmanager/service/HostManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "alertoncall_mode"

    invoke-static {v5, v6, v8}, Lcom/samsung/android/uhm/framework/ui/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 701
    .local v0, "alertOnCall":I
    sget-object v5, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AUI callStatus : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  alertOnCall : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    if-nez v1, :cond_1

    .line 704
    sget-object v5, Lcom/samsung/android/hostmanager/service/HostManager;->mContext:Landroid/content/Context;

    const-string v6, "vibrator"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    .line 705
    .local v4, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v6, 0x64

    invoke-virtual {v4, v6, v7}, Landroid/os/Vibrator;->vibrate(J)V

    .line 714
    .end local v0    # "alertOnCall":I
    .end local v1    # "callStatus":I
    .end local v4    # "vibrator":Landroid/os/Vibrator;
    :cond_0
    :goto_0
    return-void

    .line 706
    .restart local v0    # "alertOnCall":I
    .restart local v1    # "callStatus":I
    :cond_1
    if-ne v8, v0, :cond_0

    goto :goto_0
.end method

.method public printFileList(Ljava/lang/String;)V
    .locals 9
    .param p1, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 2934
    sget-object v4, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v5, "printFileList() - debugging : current file name in wallpaper folder."

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2936
    invoke-static {p1}, Lcom/samsung/android/hostmanager/status/StatusUtils;->getDeviceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2937
    .local v0, "deviceType":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/service/HostManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/files/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/Wallpaper/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2938
    .local v2, "fileDir":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 2939
    .local v3, "listFiles":[Ljava/io/File;
    if-eqz v3, :cond_0

    array-length v4, v3

    if-lez v4, :cond_0

    .line 2940
    array-length v5, v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v3, v4

    .line 2941
    .local v1, "file":Ljava/io/File;
    sget-object v6, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fileName : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2940
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2944
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    return-void
.end method

.method public requestChangeAppsOrderXML(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "deviceID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/AppsOrderSetup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1530
    .local p2, "appsOrderList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/AppsOrderSetup;>;"
    invoke-static {p1}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getSetupMgr(Ljava/lang/String;)Lcom/samsung/android/hostmanager/setup/SetupManager;

    move-result-object v1

    .line 1531
    .local v1, "setupmgr":Lcom/samsung/android/hostmanager/setup/SetupManager;
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestChangeAppsOrderXML() setupmgr = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", deviceID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1533
    :try_start_0
    invoke-virtual {v1, p2}, Lcom/samsung/android/hostmanager/setup/SetupManager;->createAppsOrderXmlByAppsOrderList(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1537
    :goto_0
    return-void

    .line 1534
    :catch_0
    move-exception v0

    .line 1535
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public requestChangeSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1519
    sget-object v0, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v1, "requestChangeSettings()"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1520
    const-string v0, "powerkeydoublepressing"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1521
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v0, p1, p3}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendPowerKeyDoublePressing(Ljava/lang/String;Ljava/lang/String;)V

    .line 1527
    :cond_0
    :goto_0
    return-void

    .line 1522
    :cond_1
    const-string v0, "smartrelay"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1523
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v0, p1, p3}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->updateSmartRelay(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 1524
    :cond_2
    const-string v0, "wakeupbygesture"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1525
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v0, p1, p3}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->updateWakeupByGesture(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public requestDBQuery(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "queryType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/HistoryInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 900
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/service/HostManager;->getBnRManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;->requestDBQuery(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public requestGalleryImage([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "GMFileList"    # [Ljava/lang/String;
    .param p2, "HMFileList"    # [Ljava/lang/String;
    .param p3, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 3072
    sget-object v4, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v5, "requestGalleryImage()"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3074
    array-length v1, p2

    .line 3077
    .local v1, "HMFileListSize":I
    if-nez p1, :cond_0

    .line 3078
    sget-object v4, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v5, "GMFileList is empty."

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3079
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 3080
    iget-object v4, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    aget-object v5, p2, v2

    invoke-virtual {v4, v5, p3}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->requestGalleryImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 3079
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3083
    .end local v2    # "i":I
    :cond_0
    array-length v0, p1

    .line 3085
    .local v0, "GMFileListSize":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v1, :cond_4

    .line 3086
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v0, :cond_1

    .line 3087
    aget-object v4, p2, v2

    aget-object v5, p1, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3091
    :cond_1
    if-ne v3, v0, :cond_2

    .line 3092
    sget-object v4, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "request image to WMS - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p2, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3093
    iget-object v4, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    aget-object v5, p2, v2

    invoke-virtual {v4, v5, p3}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->requestGalleryImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 3085
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3086
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3097
    .end local v0    # "GMFileListSize":I
    .end local v3    # "j":I
    :cond_4
    return-void
.end method

.method public requestWallpapertoWMS(Ljava/lang/String;)Z
    .locals 3
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 2813
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/hostmanager/service/HostManager;->setNeedtoGetWallpaper(Z)V

    .line 2815
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->requestWallpapertoWMS(Ljava/lang/String;Z)Z

    move-result v0

    .line 2817
    .local v0, "result":Z
    if-nez v0, :cond_0

    .line 2818
    invoke-virtual {p0, v2}, Lcom/samsung/android/hostmanager/service/HostManager;->setNeedtoGetWallpaper(Z)V

    .line 2821
    :cond_0
    return v0
.end method

.method public requestWearableToken(Ljava/lang/String;)V
    .locals 3
    .param p1, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 3108
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/service/HostManager;->isConnected(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3109
    sget-object v0, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestWearableToken("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is not connected."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3114
    :cond_0
    :goto_0
    return-void

    .line 3111
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    if-eqz v0, :cond_0

    .line 3112
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->requestWearableToken(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public restoreHomeBGSettings(Ljava/lang/String;ILjava/lang/String;)V
    .locals 10
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 2678
    sget-object v6, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v7, "restoreHomeBGSettings()"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2679
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/android/hostmanager/service/HostManager;->isRestoreGallery:Z

    .line 2680
    move-object v5, p3

    .line 2682
    .local v5, "settingData":Ljava/lang/String;
    const/4 v6, 0x2

    if-ne p2, v6, :cond_0

    .line 2683
    const-string v6, "extended_wallpaper_"

    invoke-virtual {p3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2684
    move-object v5, p3

    .line 2708
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/service/HostManager;->restoreMoreImagesToWMS(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 2709
    sget-object v6, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v7, "no restore more images to WMS."

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2712
    iget-object v6, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v6, p1, p2, p3}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->setHomeBGSettings(Ljava/lang/String;ILjava/lang/String;)Z

    .line 2720
    :goto_1
    sget-object v6, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deviceID : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mode : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", settingData : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2721
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/service/HostManager;->printFileList(Ljava/lang/String;)V

    .line 2725
    const-string v6, "bgmode"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, p1, v6, v7}, Lcom/samsung/android/hostmanager/service/HostManager;->startSetSettingsSetup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2726
    const-string v6, "bgdata"

    invoke-virtual {p0, p1, v6, v5}, Lcom/samsung/android/hostmanager/service/HostManager;->startSetSettingsSetup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2728
    if-nez p2, :cond_1

    .line 2729
    const-string v6, "bgcolor"

    invoke-virtual {p0, p1, v6, v5}, Lcom/samsung/android/hostmanager/service/HostManager;->startSetSettingsSetup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2731
    :cond_1
    iput-boolean v9, p0, Lcom/samsung/android/hostmanager/service/HostManager;->isRestoreGallery:Z

    .line 2732
    return-void

    .line 2687
    :cond_2
    invoke-static {p1}, Lcom/samsung/android/hostmanager/status/StatusUtils;->getDeviceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2688
    .local v1, "deviceType":Ljava/lang/String;
    const-string v5, "cropped_image.jpg"

    .line 2689
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/service/HostManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/files/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/Wallpaper/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2691
    .local v4, "fileName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2692
    .local v3, "file":Ljava/io/File;
    if-eqz v3, :cond_0

    const-string v6, "cropped_image.jpg"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2694
    :try_start_0
    invoke-static {v3}, Lcom/samsung/android/hostmanager/utils/FileUtils;->getBytesFromFile(Ljava/io/File;)[B

    move-result-object v0

    .line 2695
    .local v0, "byteArrayImg":[B
    const/4 v6, 0x0

    invoke-static {v0, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p3

    goto/16 :goto_0

    .line 2696
    .end local v0    # "byteArrayImg":[B
    :catch_0
    move-exception v2

    .line 2697
    .local v2, "e":Ljava/io/IOException;
    sget-object v6, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v7, "IOException"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2698
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 2699
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 2700
    .local v2, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v7, "Exception"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2701
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 2714
    .end local v1    # "deviceType":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "fileName":Ljava/lang/String;
    :cond_3
    sget-object v6, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v7, "complete to restore more images to WMS."

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2717
    iget-object v6, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v6, p1, p2, p3}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->setHomeBGSettings(Ljava/lang/String;ILjava/lang/String;)Z

    goto/16 :goto_1
.end method

.method public restoreMoreImagesToWMS(Ljava/lang/String;)Z
    .locals 13
    .param p1, "deviceID"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2735
    sget-object v11, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v12, "restoreMoreImagesToWMS()"

    invoke-static {v11, v12}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2738
    invoke-static {p1}, Lcom/samsung/android/hostmanager/status/StatusUtils;->getDeviceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2739
    .local v4, "deviceType":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/service/HostManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/files/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/Wallpaper/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2741
    .local v7, "filePath":Ljava/lang/String;
    const-string v11, ".jpg"

    invoke-static {v7, v11}, Lcom/samsung/android/hostmanager/utils/FileUtils;->getFileListExtensionInFolder(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2742
    .local v0, "GMFileList":[Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 2743
    array-length v1, v0

    .line 2744
    .local v1, "GMFileListSize":I
    const/4 v3, 0x0

    .line 2746
    .local v3, "data":Ljava/lang/String;
    if-ne v1, v10, :cond_0

    aget-object v11, v0, v9

    const-string v12, "cropped_image.jpg"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 2747
    sget-object v10, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "in case of B2 : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v0, v9

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2774
    .end local v1    # "GMFileListSize":I
    .end local v3    # "data":Ljava/lang/String;
    :goto_0
    return v9

    .line 2750
    .restart local v1    # "GMFileListSize":I
    .restart local v3    # "data":Ljava/lang/String;
    :cond_0
    sget-object v9, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v11, "in case of B3."

    invoke-static {v9, v11}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2751
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v1, :cond_2

    .line 2752
    sget-object v9, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "restore fileName : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v0, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2754
    new-instance v6, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v11, v0, v8

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2755
    .local v6, "file":Ljava/io/File;
    if-eqz v6, :cond_1

    .line 2757
    :try_start_0
    invoke-static {v6}, Lcom/samsung/android/hostmanager/utils/FileUtils;->getBytesFromFile(Ljava/io/File;)[B

    move-result-object v2

    .line 2758
    .local v2, "byteArrayImg":[B
    const/4 v9, 0x0

    invoke-static {v2, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    .line 2760
    iget-object v9, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    aget-object v11, v0, v8

    invoke-virtual {v9, p1, v11, v3}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->setAddGalleryImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2751
    .end local v2    # "byteArrayImg":[B
    :cond_1
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2761
    :catch_0
    move-exception v5

    .line 2762
    .local v5, "e":Ljava/io/IOException;
    sget-object v9, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v11, "IOException"

    invoke-static {v9, v11}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2763
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 2764
    .end local v5    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v5

    .line 2765
    .local v5, "e":Ljava/lang/Exception;
    sget-object v9, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v11, "Exception"

    invoke-static {v9, v11}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2766
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "file":Ljava/io/File;
    :cond_2
    move v9, v10

    .line 2770
    goto :goto_0

    .line 2773
    .end local v1    # "GMFileListSize":I
    .end local v3    # "data":Ljava/lang/String;
    .end local v8    # "i":I
    :cond_3
    sget-object v10, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v11, "It does not need to restore about more images."

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public saveGalleryImg(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2884
    sget-object v4, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveGalleryImg() - filePath : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2886
    const/4 v4, 0x0

    :try_start_0
    invoke-static {p2, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 2887
    .local v1, "byteArrayImg":[B
    invoke-static {v1}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->getBitmapFromBytearray([B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2888
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v4, 0x2

    invoke-static {v0, p1, v4}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->saveImageFile(Landroid/graphics/Bitmap;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 2889
    const/4 v3, 0x1

    .line 2897
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "byteArrayImg":[B
    :cond_0
    :goto_0
    return v3

    .line 2893
    :catch_0
    move-exception v2

    .line 2894
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    sget-object v4, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v5, "IllegalArgumentException : "

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2895
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendEULAFinishMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 2311
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendEULAFinishMessage(Ljava/lang/String;)V

    .line 2312
    return-void
.end method

.method public sendJSONDataFromApp(Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "messageID"    # I
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1795
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(HM)HostManager.java::sendJSONDataFromUser() deviceID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " messageID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1796
    if-nez p1, :cond_0

    .line 1797
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v3, "(HM)HostManager.java::sendJSONDataFromUser() DeviceId is null!!!!!"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1798
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/service/HostManager;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "sendJSONDataFromUser deviceID is null!!"

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1967
    :goto_0
    return-void

    .line 1802
    :cond_0
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 1938
    :sswitch_0
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v2, p1, p3}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendJsonResponseShowLocationSettings(Ljava/lang/String;Ljava/lang/String;)V

    .line 1939
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v3, "sendJSONDataFromApp()::JSON_MESSAGE_SHOW_HOST_LOCATION_SETTING_FROM_WEARABLE"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1804
    :sswitch_1
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v3, "sendJSONDataFromApp()::JSON_MESSAGE_SET_IDLE_CLOCK_FROM_APPSIDE"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1805
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v2, p3, p1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendClockChangeOrder(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1808
    :sswitch_2
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v3, "sendJSONDataFromApp()::JSON_MESSAGE_SET_FAVORITE_LIST_FROM_APPSIDE"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1811
    :sswitch_3
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v3, "sendJSONDataFromApp()::JSON_MESSAGE_SET_FAVORITE_REORDER_FROM_APPSIDE"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1812
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v2, p1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendFavoritesOrderFile(Ljava/lang/String;)V

    goto :goto_0

    .line 1815
    :sswitch_4
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v3, "sendJSONDataFromApp()::JSON_MESSAGE_SET_SETTING_GESTURE_FROM_APPSIDE"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1816
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v2, p1, p3}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->updateWakeupByGesture(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 1819
    :sswitch_5
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v3, "sendJSONDataFromApp()::JSON_MESSAGE_SET_SETTING_POWERKEYDOUBLE_FROM_APPSIDE"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1820
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v2, p1, p3}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendPowerKeyDoublePressing(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1823
    :sswitch_6
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v3, "sendJSONDataFromApp()::JSON_MESSAGE_SET_SETTING_SMART_RELAY_FROM_APPSIDE"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1824
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v2, p1, p3}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->updateSmartRelay(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 1827
    :sswitch_7
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v3, "sendJSONDataFromApp()::JSON_MESSAGE_SET_SETTING_SAFETY_ASSISTANCE_FROM_APPSIDE"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1828
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v2, p3, p1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->jsonSendSafetyOnOff(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1831
    :sswitch_8
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v3, "sendJSONDataFromApp()::JSON_MESSAGE_REQUEST_FIND_MY_WEARABLE_DEVICE_FROM_APPSIDE"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1832
    const-string v2, "voicecall"

    invoke-static {p1, v2}, Lcom/samsung/android/hostmanager/status/StatusUtils;->isSupportFeatureWearable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1833
    .local v0, "isSupportVoiceCallWearable":Z
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSupportVoiceCallWearable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1834
    if-eqz v0, :cond_1

    .line 1835
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    const-string v3, "180"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4, p1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->watchFindMyWatchAlertStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1837
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    const-string v3, "180"

    const-string v4, "false"

    invoke-virtual {v2, v3, v4, p1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->watchFindMyWatchAlertStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1842
    .end local v0    # "isSupportVoiceCallWearable":Z
    :sswitch_9
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v2, p1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->watchFindMyWatchAlertStop(Ljava/lang/String;)V

    .line 1843
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v3, "sendJSONDataFromApp()::JSON_MESSAGE_REQUEST_FIND_MY_WEARABLE_DEVICE_FROM_APPSIDE"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1846
    :sswitch_a
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v2, p3, p1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->requestClockPreviewCapture(Ljava/lang/String;Ljava/lang/String;)V

    .line 1847
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v3, "sendJSONDataFromApp()::JSON_MESSAGE_REQUEST_CLOCK_PREVIEW_CAPTURE_FROM_APPSIDE"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1851
    :sswitch_b
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v3, "sendJSONDataFromApp()::JSON_MESSAGE_REQUEST_SEND_HELP_MSG_VOICE_RECORDING_FROM_APPSIDE"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1854
    :sswitch_c
    if-eqz p3, :cond_2

    .line 1855
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1856
    .local v1, "splitedTemp":[Ljava/lang/String;
    if-eqz v1, :cond_2

    array-length v2, v1

    if-le v2, v6, :cond_2

    .line 1857
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    aget-object v3, v1, v5

    aget-object v4, v1, v6

    invoke-virtual {v2, v3, v4, p1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendJsonSettingVoiceControl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1860
    .end local v1    # "splitedTemp":[Ljava/lang/String;
    :cond_2
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v3, "sendJSONDataFromApp()::JSON_MESSAGE_REQUEST_SETTING_VOICE_CONTROL_FROM_APPSIDE"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1863
    :sswitch_d
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v2, p3, p1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->requestClockSettingFinished(Ljava/lang/String;Ljava/lang/String;)V

    .line 1864
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v3, "sendJSONDataFromApp()::JSON_MESSAGE_REQUEST_CLOCK_SETTING_FINISHED_FROM_APPSIDE"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1867
    :sswitch_e
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v2, p1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->requestEULAScreenLaunched(Ljava/lang/String;)V

    .line 1868
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v3, "sendJSONDataFromApp()::JSON_MESSAGE_REQUEST_EULA_SCREEN_LAUNCHED_FROM_APPSIDE"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1871
    :sswitch_f
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v2, p1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->requestResetDevice(Ljava/lang/String;)V

    .line 1872
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v3, "sendJSONDataFromApp()::JSON_MESSAGE_REQUEST_WEARABLE_RESET_FROM_APPSIDE"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1875
    :sswitch_10
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v2, p1, p3}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->findMyGearLocationReq(Ljava/lang/String;Ljava/lang/String;)V

    .line 1876
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v3, "sendJSONDataFromApp()::JSON_MESSAGE_REQUEST_WEARABLE_LOCATION_FROM_APPSIDE"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1879
    :sswitch_11
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v2, p3, p1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendFontSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 1880
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v3, "sendJSONDataFromApp()::JSON_MESSAGE_SET_FONT_FROM_APPSIDE"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1883
    :sswitch_12
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v2, p3, p1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendIMESet(Ljava/lang/String;Ljava/lang/String;)V

    .line 1884
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v3, "sendJSONDataFromApp()::JSON_MESSAGE_SET_IME_FROM_APPSIDE"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1887
    :sswitch_13
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v2, p3, p1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendJsonSettingFwdPhonetoGear(Ljava/lang/String;Ljava/lang/String;)V

    .line 1888
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v3, "sendJSONDataFromApp()::JSON_MESSAGE_CHANGE_SETTING_CALL_FORWARDING_FROM_APPSIDE"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1891
    :sswitch_14
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v3, "sendJSONDataFromApp()::JSON_MESSAGE_REQUEST_FMG_DISABLE_CALLFORWARDING_GEAR"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1892
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v2, p3, p1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendDisableCallForwardingGearReq(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1895
    :sswitch_15
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v2, p3, p1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendJsonMultiSimValueReqMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 1896
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v3, "sendJSONDataFromApp()::JSON_MESSAGE_CHANGE_SETTING_MULTISIM_FROM_APPSIDE"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1899
    :sswitch_16
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v2, p3, p1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendJsonSettingPalmMotionReqMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 1900
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v3, "sendJSONDataFromApp()::JSON_MESSAGE_CHANGE_SETTING_PALM_MOTION_PAUSE_FROM_APPSIDE"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1903
    :sswitch_17
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v2, p3, p1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendJsonSettingPalmMotionReqMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 1904
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v3, "sendJSONDataFromApp()::JSON_MESSAGE_CHANGE_SETTING_PALM_MOTION_SWIPE_CAPTURE_FROM_APPSIDE"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1908
    :sswitch_18
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v3, "sendJSONDataFromApp()::JSON_MESSAGE_SETTING_CALLFORWARDING_ACTIVATE_FROM_APPSIDE"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1909
    const-string v2, "7"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1911
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v2, p3, p1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendJsonCallforwardingSetPrimaryReqMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1913
    :cond_3
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/hostmanager/service/HostManager;->doCallForwarding(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1917
    :sswitch_19
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v3, "sendJSONDataFromApp()::JSON_MESSAGE_SETTING_READING_CALLFORWARD_SETTINGS_FROM_APPSIDE"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1918
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/service/HostManager;->doReadCallForwardingSettings(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1922
    :sswitch_1a
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v3, "sendJSONDataFromApp()::JSON_MESSAGE_SETTING_CHANGE_GEARNUMBER_FROM_APPSIDE"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1923
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v2, p3, p1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendchangedWearableNumber(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1927
    :sswitch_1b
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v3, "sendJSONDataFromApp()::JSON_MESSAGE_CHANGE_SETTING_MOBILE_NETWORK_FROM_APPSIDE"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1928
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v2, p3, p1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendJsonMobileNetworkReqMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1931
    :sswitch_1c
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v2, p3, p1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendJsonUserAgreementRequestToGear(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1934
    :sswitch_1d
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v3, "sendJSONDataFromApp()::JSON_MESSAGE_REQUEST_HANDLE_RESET_GEAR_FROM_APPSIDE"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1935
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v2, p1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendJsonResetRequestToGear(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1942
    :sswitch_1e
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v2, p1, p3}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendJsonLockRequestToGear(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1945
    :sswitch_1f
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v2, p3, p1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendJsonAutoCFDValueReqMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 1946
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v3, "sendJSONDataFromApp()::JSON_MESSAGE_CHANGE_SETTING_AUTO_CFD_FROM_APPSIDE"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1949
    :sswitch_20
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v2, p1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendJsonCallForwardAgreeReqMessage(Ljava/lang/String;)V

    .line 1950
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v3, "sendJSONDataFromApp()::JSON_MESSAGE_CHANGE_CALLFORWARD_AGREE_FROM_APPSIDE"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1953
    :sswitch_21
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v2, p3, p1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendJsonReverseCFDValueReqMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 1954
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v3, "sendJSONDataFromApp()::JSON_MESSAGE_CHANGE_SETTING_GEAR_TO_MOBILE_FROM_APPSIDE"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1957
    :sswitch_22
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v2, p3, p1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendChangedPhoneNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 1958
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v3, "sendJSONDataFromApp()::JSON_MESSAGE_SETTING_CHANGE_HOSTNUMBER_FROM_APPSIDE"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1961
    :sswitch_23
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v3, "JSON_MESSAGE_LOGIN_STATE_TO_TSHARE"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1962
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendLoginStateToGear(I)V

    goto/16 :goto_0

    .line 1802
    nop

    :sswitch_data_0
    .sparse-switch
        0xfbb -> :sswitch_0
        0xfc1 -> :sswitch_1e
        0x1389 -> :sswitch_1
        0x138a -> :sswitch_2
        0x138b -> :sswitch_3
        0x138c -> :sswitch_6
        0x138d -> :sswitch_4
        0x138e -> :sswitch_5
        0x138f -> :sswitch_8
        0x1390 -> :sswitch_9
        0x1392 -> :sswitch_7
        0x1393 -> :sswitch_a
        0x1394 -> :sswitch_c
        0x1395 -> :sswitch_b
        0x1396 -> :sswitch_d
        0x1397 -> :sswitch_e
        0x1398 -> :sswitch_f
        0x1399 -> :sswitch_14
        0x139a -> :sswitch_10
        0x139b -> :sswitch_17
        0x139c -> :sswitch_11
        0x139d -> :sswitch_13
        0x139e -> :sswitch_15
        0x139f -> :sswitch_16
        0x13a0 -> :sswitch_12
        0x13a1 -> :sswitch_1a
        0x13a2 -> :sswitch_18
        0x13a4 -> :sswitch_1b
        0x13a5 -> :sswitch_1d
        0x13a6 -> :sswitch_19
        0x13a7 -> :sswitch_1f
        0x13a8 -> :sswitch_20
        0x13a9 -> :sswitch_21
        0x13aa -> :sswitch_22
        0x13b6 -> :sswitch_23
        0x1b5c -> :sswitch_1c
    .end sparse-switch
.end method

.method public sendLoginStateToGear(I)V
    .locals 1
    .param p1, "loginstate"    # I

    .prologue
    .line 2319
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendLoginStateToGear(I)V

    .line 2320
    return-void
.end method

.method public sendSettingResultJSONDataFromApp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "messageID"    # I
    .param p3, "data1"    # Ljava/lang/String;
    .param p4, "data2"    # Ljava/lang/String;

    .prologue
    .line 1970
    sget-object v0, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(HM)HostManager.java::sendSettingResultJSONDataFromApp() deviceID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " messageID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " data1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " data2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1973
    if-nez p1, :cond_0

    .line 1974
    sget-object v0, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v1, "(HM)HostManager.java::sendSettingResultJSONDataFromApp() DeviceId is null!!!!!"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1975
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/service/HostManager;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sendSettingResultJSONDataFromApp deviceID is null!!"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1985
    :goto_0
    return-void

    .line 1979
    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 1981
    :pswitch_0
    sget-object v0, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v1, "sendSettingResultJSONDataFromApp()::JSON_MESSAGE_SEND_SETTING_RESULT_DATA"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1982
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v0, p3, p4, p1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendSettingResultXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1979
    nop

    :pswitch_data_0
    .packed-switch 0x1391
        :pswitch_0
    .end packed-switch
.end method

.method public sendTShareCFDResMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "cfdstate"    # Ljava/lang/String;

    .prologue
    .line 2315
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendSetPrimaryResMessage(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2316
    return-void
.end method

.method public sendUpdateSimInfoReq(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 3613
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendUpdateSimInfoReq(Ljava/lang/String;)V

    .line 3614
    return-void
.end method

.method public setAddGalleryImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "imagePath"    # Ljava/lang/String;

    .prologue
    .line 2859
    sget-object v6, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setAddGalleryImage() - fileName : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", imagePath : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2861
    invoke-static {p1}, Lcom/samsung/android/hostmanager/status/StatusUtils;->getDeviceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2862
    .local v3, "deviceType":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/service/HostManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/files/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/Wallpaper/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2864
    .local v5, "imageFileName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2865
    .local v1, "byteArrayImg":[B
    const/4 v2, 0x0

    .line 2868
    .local v2, "data":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/samsung/android/hostmanager/utils/FileUtils;->getBytesFromFile(Ljava/io/File;)[B

    move-result-object v1

    .line 2869
    if-eqz v1, :cond_0

    .line 2870
    invoke-static {v1}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->getBitmapFromBytearray([B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2871
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v6, 0x2

    invoke-static {v0, v5, v6}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->saveImageFile(Landroid/graphics/Bitmap;Ljava/lang/String;I)Z

    .line 2872
    const/4 v6, 0x0

    invoke-static {v1, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2878
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/service/HostManager;->printFileList(Ljava/lang/String;)V

    .line 2880
    iget-object v6, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v6, p1, p2, v2}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->setAddGalleryImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2881
    return-void

    .line 2874
    :catch_0
    move-exception v4

    .line 2875
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public setDeleteGalleryImage(Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .param p2, "deviceID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2947
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v5, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v6, "setDeleteGalleryImage()"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2949
    invoke-static {p2}, Lcom/samsung/android/hostmanager/status/StatusUtils;->getDeviceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2950
    .local v1, "deviceType":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/service/HostManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/files/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/Wallpaper/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2952
    .local v2, "fileDir":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 2953
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2954
    .local v0, "dataSize":I
    new-array v3, v0, [Ljava/lang/String;

    .line 2957
    .local v3, "fileNames":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_0

    .line 2958
    sget-object v6, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "] = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2959
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/samsung/android/hostmanager/utils/FileUtils;->deleteFileInFolder(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2960
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v3, v4

    .line 2957
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2963
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v5, v3, p2}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->setDeleteGalleryImage([Ljava/lang/String;Ljava/lang/String;)V

    .line 2964
    invoke-virtual {p0, p2}, Lcom/samsung/android/hostmanager/service/HostManager;->printFileList(Ljava/lang/String;)V

    .line 2966
    .end local v0    # "dataSize":I
    .end local v3    # "fileNames":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_1
    return-void
.end method

.method public setHomeBGSettings(Ljava/lang/String;ILjava/lang/String;)V
    .locals 9
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    .line 2591
    sget-object v6, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setHomeBGSettings() - deviceID : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mode : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", data : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2592
    move-object v5, p3

    .line 2593
    .local v5, "settingData":Ljava/lang/String;
    const/4 v6, 0x2

    if-ne p2, v6, :cond_0

    .line 2594
    const-string v6, "extended_wallpaper_"

    invoke-virtual {p3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2595
    move-object v5, p3

    .line 2623
    :cond_0
    :goto_0
    sget-object v6, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deviceID : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mode : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", settingData : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2624
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/service/HostManager;->printFileList(Ljava/lang/String;)V

    .line 2628
    iget-object v6, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v6, p1, p2, p3}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->setHomeBGSettings(Ljava/lang/String;ILjava/lang/String;)Z

    .line 2633
    const-string v6, "bgmode"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, p1, v6, v7}, Lcom/samsung/android/hostmanager/service/HostManager;->startSetSettingsSetup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2634
    const-string v6, "bgdata"

    invoke-virtual {p0, p1, v6, v5}, Lcom/samsung/android/hostmanager/service/HostManager;->startSetSettingsSetup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2636
    if-nez p2, :cond_1

    .line 2637
    const-string v6, "bgcolor"

    invoke-virtual {p0, p1, v6, v5}, Lcom/samsung/android/hostmanager/service/HostManager;->startSetSettingsSetup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2639
    :cond_1
    return-void

    .line 2597
    :cond_2
    const-string v5, "cropped_image.jpg"

    .line 2599
    invoke-static {p1}, Lcom/samsung/android/hostmanager/status/StatusUtils;->getDeviceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2600
    .local v1, "deviceType":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/service/HostManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/files/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/Wallpaper/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2603
    .local v4, "fileName":Ljava/lang/String;
    const-string v6, "cropped_image.jpg"

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2604
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2605
    .local v3, "file":Ljava/io/File;
    if-eqz v3, :cond_0

    const-string v6, "cropped_image.jpg"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2607
    :try_start_0
    invoke-static {v3}, Lcom/samsung/android/hostmanager/utils/FileUtils;->getBytesFromFile(Ljava/io/File;)[B

    move-result-object v0

    .line 2608
    .local v0, "byteArrayImg":[B
    const/4 v6, 0x0

    invoke-static {v0, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p3

    goto/16 :goto_0

    .line 2609
    .end local v0    # "byteArrayImg":[B
    :catch_0
    move-exception v2

    .line 2610
    .local v2, "e":Ljava/io/IOException;
    sget-object v6, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v7, "IOException"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2611
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 2612
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 2613
    .local v2, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v7, "Exception"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2614
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 2618
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "file":Ljava/io/File;
    :cond_3
    invoke-virtual {p0, v4, p3}, Lcom/samsung/android/hostmanager/service/HostManager;->saveGalleryImg(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method public setInitialConnectedValue(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v7, 0x17

    .line 376
    sget-object v4, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v5, "IU::setInitialConnectedValue()"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const/4 v0, 0x0

    .line 379
    .local v0, "connected_wearable":Ljava/lang/String;
    :try_start_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v7, :cond_2

    .line 380
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "connected_wearable"

    invoke-static {v4, v5}, Lcom/samsung/android/uhm/framework/ui/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 387
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "gear"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 388
    const/4 v2, 0x0

    .line 390
    .local v2, "id":Ljava/lang/String;
    :try_start_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v7, :cond_3

    .line 391
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "connected_wearable_id"

    invoke-static {v4, v5}, Lcom/samsung/android/uhm/framework/ui/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 398
    :goto_1
    sget-object v4, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "connected_wearable : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 401
    :try_start_2
    invoke-static {}, Lcom/samsung/android/hostmanager/service/IUHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/IUHostManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/samsung/android/hostmanager/service/IUHostManager;->isConnected(Ljava/lang/String;)Z

    move-result v3

    .line 402
    .local v3, "isConnected":Z
    if-nez v3, :cond_5

    .line 403
    sget-object v4, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v5, "Initialize connected_wearable value"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v7, :cond_4

    .line 405
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "connected_wearable"

    const-string v6, ""

    invoke-static {v4, v5, v6}, Lcom/samsung/android/uhm/framework/ui/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "connected_wearable_id"

    const-string v6, ""

    invoke-static {v4, v5, v6}, Lcom/samsung/android/uhm/framework/ui/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->isSamsungDevice()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    move-result v4

    if-eqz v4, :cond_0

    .line 414
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "connected_wearable"

    const-string v6, ""

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 415
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "connected_wearable_id"

    const-string v6, ""

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 425
    :cond_0
    :goto_2
    :try_start_4
    invoke-static {p1, v2}, Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;->updateDeviceRegistryDisconnected(Landroid/content/Context;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    .line 453
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "isConnected":Z
    :cond_1
    :goto_3
    return-void

    .line 382
    :cond_2
    :try_start_5
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "connected_wearable"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v0

    goto/16 :goto_0

    .line 384
    :catch_0
    move-exception v1

    .line 385
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 393
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .restart local v2    # "id":Ljava/lang/String;
    :cond_3
    :try_start_6
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "connected_wearable_id"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v2

    goto/16 :goto_1

    .line 395
    :catch_1
    move-exception v1

    .line 396
    .restart local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 416
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .restart local v3    # "isConnected":Z
    :catch_2
    move-exception v1

    .line 417
    .local v1, "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 418
    sget-object v4, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CM::write setting exeption = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    .line 429
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "isConnected":Z
    :catch_3
    move-exception v1

    .line 430
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 422
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v3    # "isConnected":Z
    :cond_4
    :try_start_8
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "connected_wearable"

    const-string v6, ""

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 423
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "connected_wearable_id"

    const-string v6, ""

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 427
    :cond_5
    sget-object v4, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v5, "It\'s actually connected."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_3

    .line 433
    .end local v3    # "isConnected":Z
    :cond_6
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v7, :cond_7

    .line 434
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "connected_wearable"

    const-string v6, ""

    invoke-static {v4, v5, v6}, Lcom/samsung/android/uhm/framework/ui/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->isSamsungDevice()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 442
    :try_start_9
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "connected_wearable"

    const-string v6, ""

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_3

    .line 443
    :catch_4
    move-exception v1

    .line 444
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 445
    sget-object v4, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CM::write setting exeption = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 449
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "connected_wearable"

    const-string v6, ""

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_3
.end method

.method public setNeedtoGetWallpaper(Z)V
    .locals 5
    .param p1, "result"    # Z

    .prologue
    .line 2834
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setNeedtoGetWallpaper() - result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2835
    const-string v2, "wallpaper"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/hostmanager/service/HostManager;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2836
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2837
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "get_wallpaper"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2838
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2839
    return-void
.end method

.method public startBackupWearable(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "appPackage"    # Ljava/lang/String;
    .param p3, "backupType"    # I

    .prologue
    .line 916
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SCloud"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 918
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/service/HostManager;->getBnRManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;->appDataBackup(Ljava/lang/String;I)V

    .line 919
    const/4 v0, 0x1

    .line 921
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/service/HostManager;->getBnRManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;->backupWearable(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method public startGetAllBondedWearableDevices()Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 768
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 770
    .local v9, "connectionManagerDeviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;>;"
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v3, "CM::startGetAllBondedWearableDevices() - mProxy is not null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/hostmanager/service/HostManager;->mWearableConnectionManager:Lcom/samsung/android/hostmanager/connection/IWConnectionManager;

    invoke-interface {v2}, Lcom/samsung/android/hostmanager/connection/IWConnectionManager;->getBondedDeviceList()Ljava/util/ArrayList;

    move-result-object v11

    .line 772
    .local v11, "sbcBondedWearableDeviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/hostmanager/service/HostManager;->mWearableConnectionManager:Lcom/samsung/android/hostmanager/connection/IWConnectionManager;

    const/4 v3, 0x4

    .line 773
    invoke-interface {v2, v3}, Lcom/samsung/android/hostmanager/connection/IWConnectionManager;->getConnectedDeviceList(I)Ljava/util/ArrayList;

    move-result-object v12

    .line 774
    .local v12, "sbcConnectedWearableDeviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/hostmanager/service/HostManager;->mWearableConnectionManager:Lcom/samsung/android/hostmanager/connection/IWConnectionManager;

    const/4 v3, 0x5

    .line 775
    invoke-interface {v2, v3}, Lcom/samsung/android/hostmanager/connection/IWConnectionManager;->getConnectedDeviceList(I)Ljava/util/ArrayList;

    move-result-object v14

    .line 777
    .local v14, "sbcScsConnectedWearableDeviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;>;"
    if-eqz v11, :cond_0

    .line 778
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v3, "startGetAllBondedWearableDevices() - sbcBondedWearableDeviceList is not null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 780
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v3, "startGetAllBondedWearableDevices() - No Bonded Device"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    :cond_0
    return-object v9

    .line 782
    :cond_1
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startGetAllBondedWearableDevices() - sbcBondedWearableDeviceList = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 784
    .local v13, "sbcConnectedWearableDeviceListSize":I
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 785
    .local v15, "sbcScsConnectedWearableDeviceListSize":I
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;

    .line 786
    .local v7, "bondedDevice":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    new-instance v1, Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;

    invoke-direct {v1}, Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;-><init>()V

    .line 787
    .local v1, "connectionManagerDeviceInfo":Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;
    const/4 v10, 0x0

    .line 789
    .local v10, "isConnected":Z
    if-eqz v13, :cond_3

    .line 790
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;

    .line 791
    .local v8, "connectedDevice":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    invoke-virtual {v8}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 792
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CM::startGetAllBondedWearableDevices() - ConnectedDevice = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    const/4 v10, 0x1

    .line 799
    .end local v8    # "connectedDevice":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    :cond_3
    if-nez v10, :cond_5

    if-eqz v15, :cond_5

    .line 800
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;

    .line 801
    .restart local v8    # "connectedDevice":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    invoke-virtual {v8}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 802
    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CM::startGetAllBondedWearableDevices() - SCS ConnectedDevice = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 803
    invoke-virtual {v8}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 802
    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    const/4 v10, 0x1

    .line 810
    .end local v8    # "connectedDevice":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    :cond_5
    invoke-virtual {v7}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTName()Ljava/lang/String;

    move-result-object v3

    .line 811
    invoke-virtual {v7}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTCOD()I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 810
    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;->setConnectionManagerDeviceInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 812
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public startGetAllWearableStatus()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/DeviceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1189
    sget-object v1, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v2, "ST::startGetAllWearableStatus()"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    const/4 v0, 0x0

    .line 1193
    .local v0, "arrayDeviceInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/DeviceInfo;>;"
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mICHostManager:Lcom/samsung/android/hostmanager/service/ICHostManager;

    if-eqz v1, :cond_0

    .line 1194
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mICHostManager:Lcom/samsung/android/hostmanager/service/ICHostManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getAllWearableStatus()Ljava/util/ArrayList;

    move-result-object v0

    .line 1199
    :goto_0
    return-object v0

    .line 1196
    :cond_0
    sget-object v1, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v2, "ST::startGetAllWearableStatus()::mICHostManager is null"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startGetAppSettingString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "settingFileName"    # Ljava/lang/String;

    .prologue
    .line 2576
    invoke-static {p1}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getSetupMgr(Ljava/lang/String;)Lcom/samsung/android/hostmanager/setup/SetupManager;

    move-result-object v0

    .line 2577
    .local v0, "setupmgr":Lcom/samsung/android/hostmanager/setup/SetupManager;
    sget-object v1, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startGetAppSettingString() setupmgr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", deviceID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2578
    invoke-virtual {v0, p2}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getAppSettingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public startGetAppsData(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 3102
    invoke-static {p1}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getSetupMgr(Ljava/lang/String;)Lcom/samsung/android/hostmanager/setup/SetupManager;

    move-result-object v0

    .line 3103
    .local v0, "setupmgr":Lcom/samsung/android/hostmanager/setup/SetupManager;
    sget-object v1, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startGetAppsData() setupmgr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", deviceID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3104
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getAppsData()[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public startGetAppsOrderSetup(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "deviceID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/AppsOrderSetup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1388
    invoke-static {p1}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getSetupMgr(Ljava/lang/String;)Lcom/samsung/android/hostmanager/setup/SetupManager;

    move-result-object v0

    .line 1389
    .local v0, "setupmgr":Lcom/samsung/android/hostmanager/setup/SetupManager;
    sget-object v1, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startGetAppsOrderSetup() setupmgr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", deviceID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    const/16 v1, 0x9

    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/hostmanager/service/HostManager;->startManageSetupInfo(ILjava/lang/String;)Z

    .line 1391
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getAppsOrderSetupList()Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public startGetClockSetup(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "deviceID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/ClocksSetup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1259
    invoke-static {p1}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getSetupMgr(Ljava/lang/String;)Lcom/samsung/android/hostmanager/setup/SetupManager;

    move-result-object v2

    .line 1260
    .local v2, "setupmgr":Lcom/samsung/android/hostmanager/setup/SetupManager;
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startGetClockSetup() setupmgr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", deviceID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getDeviceSetup()Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    move-result-object v1

    .line 1262
    .local v1, "devicesetup":Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;
    if-nez v1, :cond_2

    .line 1263
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v4, "startGetClockSetup() setupmgr.getDeviceSetup() is Null!. start Re-fill DeviceSetup data...."

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    const/4 v0, 0x1

    .local v0, "category":I
    :goto_0
    const/16 v3, 0xe

    if-ge v0, v3, :cond_1

    .line 1265
    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 1264
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1268
    :cond_0
    invoke-virtual {v2, v0}, Lcom/samsung/android/hostmanager/setup/SetupManager;->manageSetupInfo(I)Z

    goto :goto_1

    .line 1270
    :cond_1
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startGetClockSetup() setupmgr.getDeviceSetup() is Null!. end Re-fill Done. setupmgr.getDeviceSetup() is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1271
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getDeviceSetup()Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1270
    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    .end local v0    # "category":I
    :cond_2
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getClockSetupList()Ljava/util/ArrayList;

    move-result-object v3

    return-object v3
.end method

.method public startGetConnectdCMProxyState()Z
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mWearableConnectionManager:Lcom/samsung/android/hostmanager/connection/IWConnectionManager;

    invoke-interface {v0}, Lcom/samsung/android/hostmanager/connection/IWConnectionManager;->startGetConnectdCMProxyState()Z

    move-result v0

    return v0
.end method

.method public startGetConnectedWearableDevices()Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v14, 0x1

    .line 717
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 719
    .local v7, "connectionManagerDeviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;>;"
    sget-object v1, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v2, "CM::startGetConnectedWearableDevices() - mProxy is not null"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mWearableConnectionManager:Lcom/samsung/android/hostmanager/connection/IWConnectionManager;

    const/4 v2, 0x4

    .line 721
    invoke-interface {v1, v2}, Lcom/samsung/android/hostmanager/connection/IWConnectionManager;->getConnectedDeviceList(I)Ljava/util/ArrayList;

    move-result-object v9

    .line 722
    .local v9, "sbcConnectedWearableDeviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;>;"
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mWearableConnectionManager:Lcom/samsung/android/hostmanager/connection/IWConnectionManager;

    const/4 v2, 0x5

    .line 723
    invoke-interface {v1, v2}, Lcom/samsung/android/hostmanager/connection/IWConnectionManager;->getConnectedDeviceList(I)Ljava/util/ArrayList;

    move-result-object v11

    .line 725
    .local v11, "sbcScsConnectedWearableDeviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;>;"
    const/4 v10, 0x0

    .line 726
    .local v10, "sbcConnectedWearableDeviceListSize":I
    if-eqz v9, :cond_0

    .line 727
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 730
    :cond_0
    const/4 v12, 0x0

    .line 731
    .local v12, "sbcScsConnectedWearableDeviceListSize":I
    if-eqz v11, :cond_1

    .line 732
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 734
    :cond_1
    new-instance v0, Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;

    invoke-direct {v0}, Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;-><init>()V

    .line 735
    .local v0, "connectionManagerDeviceInfo":Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;
    const/4 v8, 0x0

    .line 737
    .local v8, "isConnected":Z
    if-lez v10, :cond_2

    .line 738
    if-eqz v9, :cond_2

    .line 739
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;

    .line 740
    .local v6, "connectedDevice":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    sget-object v1, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CM::startGetConnectedWearableDevices() - BT ConnectedDevice = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    invoke-virtual {v6}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTName()Ljava/lang/String;

    move-result-object v2

    .line 743
    invoke-virtual {v6}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTCOD()I

    move-result v3

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 741
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;->setConnectionManagerDeviceInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 744
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 749
    .end local v6    # "connectedDevice":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    :cond_2
    if-lez v12, :cond_3

    .line 750
    if-eqz v11, :cond_3

    .line 751
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;

    .line 752
    .restart local v6    # "connectedDevice":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    sget-object v1, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CM::startGetConnectedWearableDevices() - SCS ConnectedDevice = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    invoke-virtual {v6}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTName()Ljava/lang/String;

    move-result-object v2

    .line 755
    invoke-virtual {v6}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTCOD()I

    move-result v3

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 753
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;->setConnectionManagerDeviceInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 756
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 761
    .end local v6    # "connectedDevice":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    :cond_3
    if-ne v8, v14, :cond_4

    .line 764
    :cond_4
    return-object v7
.end method

.method public startGetConnectedWearableType(Ljava/lang/String;)I
    .locals 7
    .param p1, "BTAddress"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 822
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isConnected()::startGetConnectedWearableType(BTAddress) BTAddress = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mWearableConnectionManager:Lcom/samsung/android/hostmanager/connection/IWConnectionManager;

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    .line 851
    :cond_0
    :goto_0
    return v2

    .line 828
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mWearableConnectionManager:Lcom/samsung/android/hostmanager/connection/IWConnectionManager;

    const/4 v4, 0x4

    .line 829
    invoke-interface {v3, v4}, Lcom/samsung/android/hostmanager/connection/IWConnectionManager;->getConnectedDeviceList(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 831
    .local v1, "sbcConnectedWearableDeviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;>;"
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v4, "startGetConnectedWearableType(BTAddress) BT Type."

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_3

    .line 833
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;

    .line 834
    .local v0, "connectedDevice":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    sget-object v4, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isConnected()::startGetConnectedWearableType(BTAdress, BT) = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    invoke-virtual {v0}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 836
    const/4 v2, 0x1

    goto :goto_0

    .line 841
    .end local v0    # "connectedDevice":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mWearableConnectionManager:Lcom/samsung/android/hostmanager/connection/IWConnectionManager;

    const/4 v4, 0x5

    invoke-interface {v3, v4}, Lcom/samsung/android/hostmanager/connection/IWConnectionManager;->getConnectedDeviceList(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 842
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v4, "startGetConnectedWearableType(BTAddress) SCS Type."

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 844
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;

    .line 845
    .restart local v0    # "connectedDevice":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    sget-object v4, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isConnected()::startGetConnectedWearableType(BTAdress, SCS) = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    invoke-virtual {v0}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 847
    const/4 v2, 0x2

    goto/16 :goto_0
.end method

.method public startGetFavoriteOrderSetup(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "deviceID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1381
    invoke-static {p1}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getSetupMgr(Ljava/lang/String;)Lcom/samsung/android/hostmanager/setup/SetupManager;

    move-result-object v0

    .line 1382
    .local v0, "setupmgr":Lcom/samsung/android/hostmanager/setup/SetupManager;
    sget-object v1, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startGetFavoriteOrderSetup() setupmgr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", deviceID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    const/4 v1, 0x6

    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/hostmanager/service/HostManager;->startManageSetupInfo(ILjava/lang/String;)Z

    .line 1384
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getFavoriteReorderSetupList()Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public startGetFontsSetup(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "deviceID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/FontsSetup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1325
    invoke-static {p1}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getSetupMgr(Ljava/lang/String;)Lcom/samsung/android/hostmanager/setup/SetupManager;

    move-result-object v2

    .line 1326
    .local v2, "setupmgr":Lcom/samsung/android/hostmanager/setup/SetupManager;
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startGetFontsSetup() setupmgr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", deviceID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1327
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getDeviceSetup()Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    move-result-object v1

    .line 1328
    .local v1, "devicesetup":Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;
    if-nez v1, :cond_2

    .line 1329
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v4, "startGetFontsSetup() setupmgr.getDeviceSetup() is Null!. start Re-fill DeviceSetup data...."

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1330
    const/4 v0, 0x1

    .local v0, "category":I
    :goto_0
    const/16 v3, 0xe

    if-ge v0, v3, :cond_1

    .line 1331
    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 1330
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1334
    :cond_0
    invoke-virtual {v2, v0}, Lcom/samsung/android/hostmanager/setup/SetupManager;->manageSetupInfo(I)Z

    goto :goto_1

    .line 1336
    :cond_1
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startGetFontsSetup() setupmgr.getDeviceSetup() is Null!. end Re-fill Done. setupmgr.getDeviceSetup() is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1337
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getDeviceSetup()Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1336
    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1339
    .end local v0    # "category":I
    :cond_2
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getFontsSetupList()Ljava/util/ArrayList;

    move-result-object v3

    return-object v3
.end method

.method public startGetHostStatus()Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    .locals 3

    .prologue
    .line 1219
    sget-object v1, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v2, "ST::startGetHostStatus()"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    const/4 v0, 0x0

    .line 1223
    .local v0, "deviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mICHostManager:Lcom/samsung/android/hostmanager/service/ICHostManager;

    if-eqz v1, :cond_0

    .line 1224
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mICHostManager:Lcom/samsung/android/hostmanager/service/ICHostManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getHostStatus()Lcom/samsung/android/hostmanager/aidl/DeviceInfo;

    move-result-object v0

    .line 1229
    :goto_0
    return-object v0

    .line 1226
    :cond_0
    sget-object v1, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v2, "ST::startGetHostStatus()::mICHostManager is null"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startGetIMESetup(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "deviceID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/IMESetup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1362
    invoke-static {p1}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getSetupMgr(Ljava/lang/String;)Lcom/samsung/android/hostmanager/setup/SetupManager;

    move-result-object v2

    .line 1363
    .local v2, "setupmgr":Lcom/samsung/android/hostmanager/setup/SetupManager;
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startGetIMESetup() setupmgr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", deviceID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getDeviceSetup()Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    move-result-object v1

    .line 1365
    .local v1, "devicesetup":Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;
    if-nez v1, :cond_2

    .line 1366
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v4, "startGetIMESetup() setupmgr.getDeviceSetup() is Null!. start Re-fill DeviceSetup data...."

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    const/4 v0, 0x1

    .local v0, "category":I
    :goto_0
    const/16 v3, 0xe

    if-ge v0, v3, :cond_1

    .line 1368
    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 1367
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1371
    :cond_0
    invoke-virtual {v2, v0}, Lcom/samsung/android/hostmanager/setup/SetupManager;->manageSetupInfo(I)Z

    goto :goto_1

    .line 1373
    :cond_1
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startGetIMESetup() setupmgr.getDeviceSetup() is Null!. end Re-fill Done. setupmgr.getDeviceSetup() is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1375
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getDeviceSetup()Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1373
    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1377
    .end local v0    # "category":I
    :cond_2
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getIMESetupList()Ljava/util/ArrayList;

    move-result-object v3

    return-object v3
.end method

.method public startGetImageByteArray(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 4
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "imgFileName"    # Ljava/lang/String;

    .prologue
    .line 2408
    invoke-static {p1}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getSetupMgr(Ljava/lang/String;)Lcom/samsung/android/hostmanager/setup/SetupManager;

    move-result-object v0

    .line 2409
    .local v0, "setupmgr":Lcom/samsung/android/hostmanager/setup/SetupManager;
    sget-object v1, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWappListPackageName() setupmgr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", deviceID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2410
    invoke-virtual {v0, p2}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getImageByteArray(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method

.method public startGetMyAppsSetup(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "deviceID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 1299
    invoke-static {p1}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getSetupMgr(Ljava/lang/String;)Lcom/samsung/android/hostmanager/setup/SetupManager;

    move-result-object v3

    .line 1300
    .local v3, "setupmgr":Lcom/samsung/android/hostmanager/setup/SetupManager;
    sget-object v4, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startGetMyAppsSetup() setupmgr = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", deviceID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getMyAppsSetupList()Ljava/util/ArrayList;

    move-result-object v2

    .line 1303
    .local v2, "myappslist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;>;"
    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getDeviceSetup()Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    move-result-object v1

    .line 1304
    .local v1, "devicesetup":Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;
    if-nez v1, :cond_3

    .line 1305
    sget-object v4, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v5, "startGetMyAppsSetup() setupmgr.getDeviceSetup() is Null!. start Re-fill DeviceSetup data...."

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    const/4 v0, 0x1

    .local v0, "category":I
    :goto_0
    const/16 v4, 0xe

    if-ge v0, v4, :cond_1

    .line 1307
    if-ne v0, v7, :cond_0

    .line 1306
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1310
    :cond_0
    invoke-virtual {v3, v0}, Lcom/samsung/android/hostmanager/setup/SetupManager;->manageSetupInfo(I)Z

    goto :goto_1

    .line 1312
    :cond_1
    sget-object v4, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startGetMyAppsSetup() setupmgr.getDeviceSetup() is Null!. end Re-fill Done. setupmgr.getDeviceSetup() is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1313
    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getDeviceSetup()Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1312
    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    .end local v0    # "category":I
    :cond_2
    :goto_2
    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getMyAppsSetupList()Ljava/util/ArrayList;

    move-result-object v4

    return-object v4

    .line 1314
    :cond_3
    if-eqz v2, :cond_4

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v4, v7, :cond_2

    .line 1315
    :cond_4
    sget-object v4, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startGetMyAppsSetup() setupmgr.getDeviceSetup() is Null!. start Re-fill. myappslist = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/samsung/android/hostmanager/setup/SetupManager;->manageSetupInfo(I)Z

    .line 1317
    sget-object v5, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startGetMyAppsSetup() setupmgr.getDeviceSetup() is Null!. end Re-fill Done. myappslist = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v2, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "myappslist size is "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1318
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1317
    invoke-static {v5, v4}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1318
    :cond_5
    const-string v4, "myappslist is Null !!"

    goto :goto_3
.end method

.method public startGetSettingsSetup(Ljava/lang/String;)Lcom/samsung/android/hostmanager/aidl/SettingsSetup;
    .locals 6
    .param p1, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 1237
    invoke-static {p1}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getSetupMgr(Ljava/lang/String;)Lcom/samsung/android/hostmanager/setup/SetupManager;

    move-result-object v2

    .line 1238
    .local v2, "setupmgr":Lcom/samsung/android/hostmanager/setup/SetupManager;
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startGetSettingsSetup() setupmgr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", deviceID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getDeviceSetup()Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    move-result-object v1

    .line 1240
    .local v1, "devicesetup":Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;
    if-nez v1, :cond_2

    .line 1241
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v4, "startGetSettingsSetup() setupmgr.getDeviceSetup() is Null!. start Re-fill DeviceSetup data...."

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    const/4 v0, 0x1

    .local v0, "category":I
    :goto_0
    const/16 v3, 0xe

    if-ge v0, v3, :cond_1

    .line 1243
    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 1242
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1246
    :cond_0
    invoke-virtual {v2, v0}, Lcom/samsung/android/hostmanager/setup/SetupManager;->manageSetupInfo(I)Z

    goto :goto_1

    .line 1248
    :cond_1
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startGetSettingsSetup() setupmgr.getDeviceSetup() is Null!. end Re-fill Done. setupmgr.getDeviceSetup() is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1249
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getDeviceSetup()Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1248
    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    .end local v0    # "category":I
    :cond_2
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getSettingsSetup()Lcom/samsung/android/hostmanager/aidl/SettingsSetup;

    move-result-object v3

    return-object v3
.end method

.method public startGetTTSSetup(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "deviceID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/TTSSetup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1343
    invoke-static {p1}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getSetupMgr(Ljava/lang/String;)Lcom/samsung/android/hostmanager/setup/SetupManager;

    move-result-object v2

    .line 1344
    .local v2, "setupmgr":Lcom/samsung/android/hostmanager/setup/SetupManager;
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startGetTTSSetup() setupmgr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", deviceID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1345
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getDeviceSetup()Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    move-result-object v1

    .line 1346
    .local v1, "devicesetup":Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;
    if-nez v1, :cond_2

    .line 1347
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v4, "startGetTTSSetup() setupmgr.getDeviceSetup() is Null!. start Re-fill DeviceSetup data...."

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1348
    const/4 v0, 0x1

    .local v0, "category":I
    :goto_0
    const/16 v3, 0xe

    if-ge v0, v3, :cond_1

    .line 1349
    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 1348
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1352
    :cond_0
    invoke-virtual {v2, v0}, Lcom/samsung/android/hostmanager/setup/SetupManager;->manageSetupInfo(I)Z

    goto :goto_1

    .line 1354
    :cond_1
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startGetTTSSetup() setupmgr.getDeviceSetup() is Null!. end Re-fill Done. setupmgr.getDeviceSetup() is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1356
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getDeviceSetup()Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1354
    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    .end local v0    # "category":I
    :cond_2
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getTTSSetupList()Ljava/util/ArrayList;

    move-result-object v3

    return-object v3
.end method

.method public startGetThreeGSettingValue(Ljava/lang/String;)Z
    .locals 3
    .param p1, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 2022
    sget-object v0, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SCS::startGetThreeGSettingValue(), deviceID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2023
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    if-eqz v0, :cond_0

    .line 2024
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->getThreeGSettingValue(Ljava/lang/String;)Z

    move-result v0

    .line 2026
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startGetWearableStatus(Ljava/lang/String;)Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    .locals 4
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 1204
    sget-object v1, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ST::startGetWearableStatus()::deviceId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    const/4 v0, 0x0

    .line 1208
    .local v0, "deviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mICHostManager:Lcom/samsung/android/hostmanager/service/ICHostManager;

    if-eqz v1, :cond_0

    .line 1209
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mICHostManager:Lcom/samsung/android/hostmanager/service/ICHostManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getWearableStatus(Ljava/lang/String;)Lcom/samsung/android/hostmanager/aidl/DeviceInfo;

    move-result-object v0

    .line 1214
    :goto_0
    return-object v0

    .line 1211
    :cond_0
    sget-object v1, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v2, "ST::startGetWearableStatus()::mICHostManager is null"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startInstallApp(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "from"    # I

    .prologue
    .line 967
    sget-object v1, Lcom/samsung/android/hostmanager/service/HostManager;->PM_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": startInstallApp()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,apppath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/service/HostManager;->getPackageManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/IPackageManager;

    move-result-object v0

    .line 970
    .local v0, "pm":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    if-eqz v0, :cond_0

    .line 971
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/hostmanager/manager/IPackageManager;->installApp(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .line 973
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startManageConnectionInfo(Ljava/lang/String;I)I
    .locals 6
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "connType"    # I

    .prologue
    const/16 v5, 0x17

    .line 1091
    const/4 v0, -0x1

    .line 1092
    .local v0, "connResult":I
    invoke-direct {p0, p2}, Lcom/samsung/android/hostmanager/service/HostManager;->printConntype(I)V

    .line 1095
    const/4 v3, 0x1

    if-eq p2, v3, :cond_0

    const/4 v3, 0x4

    if-ne p2, v3, :cond_1

    .line 1096
    :cond_0
    const/4 v1, 0x0

    .line 1098
    .local v1, "connected_wearable":Ljava/lang/String;
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v5, :cond_3

    .line 1099
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/service/HostManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "connected_wearable"

    invoke-static {v3, v4}, Lcom/samsung/android/uhm/framework/ui/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1107
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "gear"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1108
    const-string v3, "CrossConnection"

    const-string v4, "StartManageConnectionInfo, Write Gear"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v5, :cond_4

    .line 1111
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/service/HostManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "connected_wearable"

    const-string v5, "Gear2"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/uhm/framework/ui/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/service/HostManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "connected_wearable"

    const-string v5, ""

    invoke-static {v3, v4, v5}, Lcom/samsung/android/uhm/framework/ui/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/service/HostManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "connected_wearable_id"

    const-string v5, ""

    invoke-static {v3, v4, v5}, Lcom/samsung/android/uhm/framework/ui/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->isSamsungDevice()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1121
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/service/HostManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "connected_wearable"

    const-string v5, "Gear2"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1122
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/service/HostManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "connected_wearable"

    const-string v5, ""

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1123
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/service/HostManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "connected_wearable_id"

    const-string v5, ""

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1138
    .end local v1    # "connected_wearable":Ljava/lang/String;
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mWearableConnectionManager:Lcom/samsung/android/hostmanager/connection/IWConnectionManager;

    if-eqz v3, :cond_2

    .line 1140
    :try_start_2
    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mWearableConnectionManager:Lcom/samsung/android/hostmanager/connection/IWConnectionManager;

    invoke-interface {v3, p1, p2}, Lcom/samsung/android/hostmanager/connection/IWConnectionManager;->manageConnectionInfo(Ljava/lang/String;I)I

    move-result v0

    .line 1141
    if-nez v0, :cond_2

    .line 1142
    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    if-eqz v3, :cond_5

    .line 1143
    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v3, p2}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->setHostManagerConnectionType(I)V
    :try_end_2
    .catch Lcom/samsung/android/hostmanager/exception/InvalidBTAddressException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1153
    :cond_2
    :goto_2
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CM::startManageConnectionInfo() connResult = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    return v0

    .line 1101
    .restart local v1    # "connected_wearable":Ljava/lang/String;
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/service/HostManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "connected_wearable"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v1

    goto/16 :goto_0

    .line 1103
    :catch_0
    move-exception v2

    .line 1104
    .local v2, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v2}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 1124
    .end local v2    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :catch_1
    move-exception v2

    .line 1125
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1126
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CM::write setting exeption = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1130
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/service/HostManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "connected_wearable"

    const-string v5, "Gear2"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1131
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/service/HostManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "connected_wearable"

    const-string v5, ""

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1132
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/service/HostManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "connected_wearable_id"

    const-string v5, ""

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 1145
    .end local v1    # "connected_wearable":Ljava/lang/String;
    :cond_5
    :try_start_4
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v4, "startManageConnectionInfo() mHMProviderService is null"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lcom/samsung/android/hostmanager/exception/InvalidBTAddressException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 1148
    :catch_2
    move-exception v2

    .line 1149
    .local v2, "e":Lcom/samsung/android/hostmanager/exception/InvalidBTAddressException;
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/exception/InvalidBTAddressException;->printStackTrace()V

    goto :goto_2
.end method

.method public startManageSetupInfo(ILjava/lang/String;)Z
    .locals 5
    .param p1, "setupCategory"    # I
    .param p2, "deviceID"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1175
    sget-object v1, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startManageSetupInfo() deviceID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    if-eqz p2, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 1184
    :cond_0
    :goto_0
    return v4

    .line 1180
    :cond_1
    invoke-static {p2}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getSetupMgr(Ljava/lang/String;)Lcom/samsung/android/hostmanager/setup/SetupManager;

    move-result-object v0

    .line 1181
    .local v0, "setupmgr":Lcom/samsung/android/hostmanager/setup/SetupManager;
    sget-object v1, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startManageSetupInfo() setupmgr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", deviceID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/setup/SetupManager;->manageSetupInfo(I)Z

    goto :goto_0
.end method

.method public startPushResultFileToHM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "settingFileName"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 2582
    invoke-static {p3}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getSetupMgr(Ljava/lang/String;)Lcom/samsung/android/hostmanager/setup/SetupManager;

    move-result-object v0

    .line 2583
    .local v0, "setupmgr":Lcom/samsung/android/hostmanager/setup/SetupManager;
    sget-object v1, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startPushResultFileToHM() setupmgr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", deviceID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2584
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/hostmanager/setup/SetupManager;->pushResultFileToHM(Ljava/lang/String;Ljava/lang/String;)V

    .line 2585
    return-void
.end method

.method public startReinstallUpdateApp(ILjava/lang/String;)Z
    .locals 10
    .param p1, "response"    # I
    .param p2, "appPath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1009
    sget-object v7, Lcom/samsung/android/hostmanager/service/HostManager;->PM_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": startReinstallUpdateApp() "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    const/16 v7, 0x7bc

    if-ne p1, v7, :cond_1

    move v4, v5

    .line 1012
    .local v4, "result":Z
    :goto_0
    if-eqz v4, :cond_0

    .line 1013
    move-object v0, p0

    .line 1014
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_2

    move v4, v5

    .line 1015
    :goto_1
    if-nez v4, :cond_3

    .line 1017
    :try_start_0
    sget-object v5, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v6, "PackageController.installPackage Start"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/pm/PackageInstallerFactory;->get(Landroid/content/Context;)Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/PackageInstallerInterface;

    move-result-object v3

    .line 1019
    .local v3, "packageController":Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/PackageInstallerInterface;
    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    .line 1020
    sget-object v5, Lcom/samsung/android/hostmanager/service/HostManager;->PM_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "appPath :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    const/16 v5, 0x1fd

    invoke-static {p2, v5}, Lcom/samsung/android/hostmanager/service/HostManager;->changeFilePermission(Ljava/lang/String;I)I

    .line 1022
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3, p2, v5, v6}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/PackageInstallerInterface;->installPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 1023
    const/4 v4, 0x1

    .line 1044
    .end local v0    # "context":Landroid/content/Context;
    .end local v3    # "packageController":Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/PackageInstallerInterface;
    :cond_0
    :goto_2
    return v4

    .end local v4    # "result":Z
    :cond_1
    move v4, v6

    .line 1011
    goto :goto_0

    .restart local v0    # "context":Landroid/content/Context;
    .restart local v4    # "result":Z
    :cond_2
    move v4, v6

    .line 1014
    goto :goto_1

    .line 1025
    :catch_0
    move-exception v1

    .line 1026
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    .line 1027
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 1028
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    .line 1029
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 1030
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2

    .line 1031
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v2

    .line 1032
    .local v2, "e1":Ljava/lang/SecurityException;
    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_2

    .line 1033
    .end local v2    # "e1":Ljava/lang/SecurityException;
    :catch_4
    move-exception v2

    .line 1034
    .local v2, "e1":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_2

    .line 1035
    .end local v2    # "e1":Ljava/lang/NoSuchMethodException;
    :catch_5
    move-exception v1

    .line 1036
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v6, "Looks like setPermission failed!"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1040
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public startRemoveBackupData(Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/BackupInfo;)Z
    .locals 1
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "restoreInfo"    # Lcom/samsung/android/hostmanager/aidl/BackupInfo;

    .prologue
    .line 953
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/service/HostManager;->getBnRManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;->removeBackupData(Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/BackupInfo;)Z

    move-result v0

    return v0
.end method

.method public startRequestTokenFromUI(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "settingValue"    # Z

    .prologue
    .line 2015
    sget-object v0, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SCS::startRequestTokenFromUI()::settingValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", deviceID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2016
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    if-eqz v0, :cond_0

    .line 2017
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->requestTokenFromUI(Ljava/lang/String;Z)V

    .line 2019
    :cond_0
    return-void
.end method

.method public startReset(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 2329
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/service/HostManager;->getBnRManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;->startReset()V

    .line 2330
    return-void
.end method

.method public startRestoreWearable(Lcom/samsung/android/hostmanager/aidl/BackupInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "restoreInfo"    # Lcom/samsung/android/hostmanager/aidl/BackupInfo;
    .param p2, "deviceID"    # Ljava/lang/String;
    .param p3, "appID"    # Ljava/lang/String;
    .param p4, "appVersion"    # Ljava/lang/String;

    .prologue
    .line 943
    const-string v0, "1"

    .line 944
    .local v0, "appid":Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/samsung/android/hostmanager/service/HostManager;->getBnRManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0, p4}, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;->restoreWearable(Lcom/samsung/android/hostmanager/aidl/BackupInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public startScan(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 687
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mWearableConnectionManager:Lcom/samsung/android/hostmanager/connection/IWConnectionManager;

    invoke-interface {v0}, Lcom/samsung/android/hostmanager/connection/IWConnectionManager;->startScan()V

    .line 688
    return-void
.end method

.method public startSetClocksSetup(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 6
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p3, "idleClockPkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/ClocksSetup;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1395
    .local p2, "clockList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/ClocksSetup;>;"
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HostManager Side clockList(From App) idleClockPkgName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    invoke-static {p1}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getSetupMgr(Ljava/lang/String;)Lcom/samsung/android/hostmanager/setup/SetupManager;

    move-result-object v2

    .line 1397
    .local v2, "setupmgr":Lcom/samsung/android/hostmanager/setup/SetupManager;
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startSetClocksSetup() setupmgr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", deviceID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    :try_start_0
    invoke-virtual {v2, p2}, Lcom/samsung/android/hostmanager/setup/SetupManager;->setChangedClockSetup(Ljava/util/ArrayList;)V

    .line 1402
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/setup/SetupManager;->saveClockXML()Z

    move-result v1

    .line 1403
    .local v1, "saveSuccess":Z
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clocklist.xml is generated : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1409
    .end local v1    # "saveSuccess":Z
    :goto_0
    return-void

    .line 1406
    :catch_0
    move-exception v0

    .line 1407
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public startSetFavoriteOrderSetup(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "deviceID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1502
    .local p2, "favoriteOrderList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;>;"
    invoke-static {p1}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getSetupMgr(Ljava/lang/String;)Lcom/samsung/android/hostmanager/setup/SetupManager;

    move-result-object v2

    .line 1503
    .local v2, "setupmgr":Lcom/samsung/android/hostmanager/setup/SetupManager;
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startSetFavoriteOrderSetup() setupmgr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", deviceID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    :try_start_0
    invoke-virtual {v2, p2}, Lcom/samsung/android/hostmanager/setup/SetupManager;->setChangedFavoriteReorderSetup(Ljava/util/ArrayList;)V

    .line 1506
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/setup/SetupManager;->saveFavoriteOrderXML()Z

    move-result v1

    .line 1508
    .local v1, "saveSuccess":Z
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "favorites_order.xml is generation success?? : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    if-eqz v1, :cond_0

    .line 1510
    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v3, p1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendFavoritesChangeOrder(Ljava/lang/String;)V

    .line 1511
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/hostmanager/setup/SetupManager;->setDevcieSetupFromXML(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1516
    .end local v1    # "saveSuccess":Z
    :cond_0
    :goto_0
    return-void

    .line 1513
    :catch_0
    move-exception v0

    .line 1514
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public startSetFontsSetup(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 9
    .param p1, "deviceID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/FontsSetup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1433
    .local p2, "fontsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/FontsSetup;>;"
    invoke-static {p1}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getSetupMgr(Ljava/lang/String;)Lcom/samsung/android/hostmanager/setup/SetupManager;

    move-result-object v5

    .line 1434
    .local v5, "setupmgr":Lcom/samsung/android/hostmanager/setup/SetupManager;
    sget-object v6, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startSetFontsSetup() setupmgr = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", deviceID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    :try_start_0
    invoke-virtual {v5, p2}, Lcom/samsung/android/hostmanager/setup/SetupManager;->setChangedFontSetup(Ljava/util/ArrayList;)V

    .line 1438
    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/setup/SetupManager;->saveFontXML()Z

    move-result v4

    .line 1439
    .local v4, "saveSuccess":Z
    sget-object v6, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startSetFontsSetup() fontlist.xml is generated : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    if-eqz v4, :cond_2

    .line 1442
    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getFontsSetupList()Ljava/util/ArrayList;

    move-result-object v2

    .line 1443
    .local v2, "fontSetupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/FontsSetup;>;"
    const/4 v3, 0x0

    .line 1445
    .local v3, "idleFontFamilyname":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hostmanager/aidl/FontsSetup;

    .line 1446
    .local v1, "font":Lcom/samsung/android/hostmanager/aidl/FontsSetup;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->getShownState()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1447
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->getFamilyName()Ljava/lang/String;

    move-result-object v3

    .line 1453
    .end local v1    # "font":Lcom/samsung/android/hostmanager/aidl/FontsSetup;
    :cond_1
    sget-object v6, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startSetFontsSetup() idleFontFamilyname is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1454
    if-eqz v3, :cond_2

    .line 1455
    iget-object v6, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v6, v3, p1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendFontSet(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1461
    .end local v2    # "fontSetupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/FontsSetup;>;"
    .end local v3    # "idleFontFamilyname":Ljava/lang/String;
    .end local v4    # "saveSuccess":Z
    :cond_2
    :goto_0
    return-void

    .line 1458
    :catch_0
    move-exception v0

    .line 1459
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public startSetIMESetup(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "deviceID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/IMESetup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1484
    .local p2, "imeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/IMESetup;>;"
    invoke-static {p1}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getSetupMgr(Ljava/lang/String;)Lcom/samsung/android/hostmanager/setup/SetupManager;

    move-result-object v2

    .line 1485
    .local v2, "setupmgr":Lcom/samsung/android/hostmanager/setup/SetupManager;
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startSetTTSSetup() setupmgr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", deviceID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    :try_start_0
    invoke-virtual {v2, p2}, Lcom/samsung/android/hostmanager/setup/SetupManager;->setChangedIMESetup(Ljava/util/ArrayList;)V

    .line 1490
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/setup/SetupManager;->saveIMEXML()Z

    move-result v1

    .line 1491
    .local v1, "saveSuccess":Z
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startSetIMESetup() imelist.xml is generated : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1493
    if-eqz v1, :cond_0

    .line 1499
    .end local v1    # "saveSuccess":Z
    :cond_0
    :goto_0
    return-void

    .line 1496
    :catch_0
    move-exception v0

    .line 1497
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public startSetMyAppsSetup(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "deviceID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1413
    .local p2, "myAppsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;>;"
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startSetMyAppsSetup() HostManager Side myAppsList(From App) deviceID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    .line 1415
    :cond_0
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v4, "startSetMyAppsSetup() didn\'t run. returned!!"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    :goto_0
    return-void

    .line 1418
    :cond_1
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startSetMyAppsSetup() HostManager Side myAppsList(From App) size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", deviceID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    invoke-static {p1}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getSetupMgr(Ljava/lang/String;)Lcom/samsung/android/hostmanager/setup/SetupManager;

    move-result-object v2

    .line 1421
    .local v2, "setupmgr":Lcom/samsung/android/hostmanager/setup/SetupManager;
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startSetMyAppsSetup() setupmgr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", deviceID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1423
    :try_start_0
    invoke-virtual {v2, p2}, Lcom/samsung/android/hostmanager/setup/SetupManager;->setChangedMyAppSetup(Ljava/util/ArrayList;)V

    .line 1424
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/setup/SetupManager;->saveMyAppsXML()Z

    move-result v1

    .line 1425
    .local v1, "saveSuccess":Z
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wapplist.xml is generated : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1426
    .end local v1    # "saveSuccess":Z
    :catch_0
    move-exception v0

    .line 1427
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public startSetSettingsSetup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1277
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deviceID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , tag : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    invoke-static {p1}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getSetupMgr(Ljava/lang/String;)Lcom/samsung/android/hostmanager/setup/SetupManager;

    move-result-object v1

    .line 1279
    .local v1, "setupmgr":Lcom/samsung/android/hostmanager/setup/SetupManager;
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startSetSettingsSetup() setupmgr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", deviceID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    const/4 v2, 0x0

    .line 1284
    .local v2, "smartRelayValue":Z
    if-eqz v1, :cond_0

    .line 1285
    invoke-virtual {v1, p2, p3}, Lcom/samsung/android/hostmanager/setup/SetupManager;->setChangedSettingsSetup(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/hostmanager/service/HostManager;->requestChangeSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v4, "mSetupManager is not null"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getSettingsSetup()Lcom/samsung/android/hostmanager/aidl/SettingsSetup;

    move-result-object v0

    .line 1290
    .local v0, "settingSetup":Lcom/samsung/android/hostmanager/aidl/SettingsSetup;
    if-eqz v0, :cond_0

    .line 1291
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v4, "settingSetup is not null"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->getSmart()Z

    move-result v2

    .line 1295
    .end local v0    # "settingSetup":Lcom/samsung/android/hostmanager/aidl/SettingsSetup;
    :cond_0
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "smart relay value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    return-void
.end method

.method public startSetTTSSetup(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "deviceID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/TTSSetup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1465
    .local p2, "ttsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/TTSSetup;>;"
    invoke-static {p1}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getSetupMgr(Ljava/lang/String;)Lcom/samsung/android/hostmanager/setup/SetupManager;

    move-result-object v2

    .line 1466
    .local v2, "setupmgr":Lcom/samsung/android/hostmanager/setup/SetupManager;
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startSetTTSSetup() setupmgr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", deviceID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    :try_start_0
    invoke-virtual {v2, p2}, Lcom/samsung/android/hostmanager/setup/SetupManager;->setChangedTTSSetup(Ljava/util/ArrayList;)V

    .line 1471
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/setup/SetupManager;->saveTTSXML()Z

    move-result v1

    .line 1472
    .local v1, "saveSuccess":Z
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startSetTTSSetup() ttslist.xml is generated : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1474
    if-eqz v1, :cond_0

    .line 1480
    .end local v1    # "saveSuccess":Z
    :cond_0
    :goto_0
    return-void

    .line 1477
    :catch_0
    move-exception v0

    .line 1478
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public startSyncWearableStatus(Ljava/lang/String;)Z
    .locals 5
    .param p1, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 869
    const/4 v2, 0x0

    .line 870
    .local v2, "statusManager":Lcom/samsung/android/hostmanager/manager/IStatusManager;
    const/4 v0, 0x0

    .line 873
    .local v0, "deviceManager":Lcom/samsung/android/hostmanager/manager/DeviceManager;
    :try_start_0
    invoke-static {}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getInstance()Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getDeviceManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/DeviceManager;

    move-result-object v0

    .line 874
    if-eqz v0, :cond_0

    .line 875
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/manager/DeviceManager;->getStatusManager()Lcom/samsung/android/hostmanager/manager/IStatusManager;
    :try_end_0
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 884
    :goto_0
    if-eqz v2, :cond_1

    .line 885
    invoke-interface {v2}, Lcom/samsung/android/hostmanager/manager/IStatusManager;->syncWearableStatus()Z

    move-result v3

    .line 888
    :goto_1
    return v3

    .line 877
    :cond_0
    :try_start_1
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v4, "ST::startSyncWearableStatus()::deviceManager is null"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 880
    :catch_0
    move-exception v1

    .line 881
    .local v1, "e1":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;->printStackTrace()V

    goto :goto_0

    .line 887
    .end local v1    # "e1":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    :cond_1
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v4, "ST::startSyncWearableStatus()::statusManager is null"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    const/4 v3, 0x0

    goto :goto_1
.end method

.method startSystemRestore(Ljava/lang/String;I)V
    .locals 4
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 2235
    sget-object v1, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startSystemRestore deviceID: [[ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2236
    const/4 v0, 0x0

    .line 2237
    .local v0, "bnrManager":Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/service/HostManager;->getBnRManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-result-object v0

    .line 2238
    if-eqz v0, :cond_0

    .line 2239
    invoke-virtual {v0, p2}, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;->onReadyRestore(I)V

    .line 2244
    :goto_0
    return-void

    .line 2241
    :cond_0
    sget-object v1, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v2, "startSystemRestore BnR Manager NULL !!!!"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startUninstallApp(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "from"    # I

    .prologue
    .line 984
    sget-object v1, Lcom/samsung/android/hostmanager/service/HostManager;->PM_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": startUninstallApp()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/service/HostManager;->getPackageManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/IPackageManager;

    move-result-object v0

    .line 987
    .local v0, "pm":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    if-eqz v0, :cond_0

    .line 988
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/hostmanager/manager/IPackageManager;->uninstallApp(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .line 990
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startUpdateApp(II)Z
    .locals 3
    .param p1, "appID"    # I
    .param p2, "appVersion"    # I

    .prologue
    .line 999
    sget-object v0, Lcom/samsung/android/hostmanager/service/HostManager;->PM_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": startUpdateApp()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,appVersion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    const/4 v0, 0x0

    return v0
.end method

.method public stopRestore()V
    .locals 0

    .prologue
    .line 2324
    return-void
.end method

.method public syncSHealthSupportInfo()V
    .locals 1

    .prologue
    .line 3394
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    if-eqz v0, :cond_0

    .line 3395
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->syncSHealthSupportInfo()V

    .line 3398
    :cond_0
    return-void
.end method

.method public updateHomeBGSettings(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "mode"    # I
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 2643
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    const-string v4, "updateHomeBGSettings()"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2644
    move-object v2, p2

    .line 2645
    .local v2, "settingData":Ljava/lang/String;
    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    .line 2646
    const-string v3, "extended_wallpaper_"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "cropped_image.jpg"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2647
    :cond_0
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2648
    move-object v2, p2

    .line 2660
    :cond_1
    :goto_0
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", settingData : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2661
    invoke-virtual {p0, p3}, Lcom/samsung/android/hostmanager/service/HostManager;->printFileList(Ljava/lang/String;)V

    .line 2665
    const-string v3, "bgmode"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p3, v3, v4}, Lcom/samsung/android/hostmanager/service/HostManager;->startSetSettingsSetup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2666
    const-string v3, "bgdata"

    invoke-virtual {p0, p3, v3, v2}, Lcom/samsung/android/hostmanager/service/HostManager;->startSetSettingsSetup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2668
    if-nez p1, :cond_2

    .line 2669
    const-string v3, "bgcolor"

    invoke-virtual {p0, p3, v3, v2}, Lcom/samsung/android/hostmanager/service/HostManager;->startSetSettingsSetup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2673
    :cond_2
    sget-object v3, Lcom/samsung/android/hostmanager/service/HostManager;->mIUHostManager:Lcom/samsung/android/hostmanager/service/IUHostManager;

    invoke-virtual {v3, p3}, Lcom/samsung/android/hostmanager/service/IUHostManager;->sendHomeBGSettingToApp(Ljava/lang/String;)V

    .line 2674
    return-void

    .line 2651
    :cond_3
    invoke-static {p3}, Lcom/samsung/android/hostmanager/status/StatusUtils;->getDeviceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2652
    .local v0, "deviceType":Ljava/lang/String;
    const-string v2, "cropped_image.jpg"

    .line 2653
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/service/HostManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/files/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Wallpaper/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2656
    .local v1, "fileName":Ljava/lang/String;
    invoke-virtual {p0, v1, p2}, Lcom/samsung/android/hostmanager/service/HostManager;->saveGalleryImg(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method
