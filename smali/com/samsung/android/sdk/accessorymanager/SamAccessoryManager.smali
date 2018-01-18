.class public Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;
.super Ljava/lang/Object;
.source "SamAccessoryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;,
        Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$ConntionEventReceiver;
    }
.end annotation


# static fields
.field public static final ACCESSORY_ADMIN_PERMISSION:Ljava/lang/String; = "com.samsung.accessory.permission.ACCESSORY_FRAMEWORK_ADMIN"

.field public static final ACCESSORY_DISCONNECTED_NETWORK_FAILURE:I = 0x102

.field public static final ACCESSORY_DISCONNECTED_NORMAL:I = 0x101

.field public static final ACCESSORY_DISCONNECTED_PACKET_CORRUPTION:I = 0x100

.field private static final ACCOUNT_LOGGED_IN:I = 0x2

.field private static final ACCOUNT_LOGGED_OUT:I = 0x0

.field static final ACTION_ACCESSORY_ATTACHED:Ljava/lang/String; = "android.accessory.device.action.ATTACHED"

.field static final ACTION_ACCESSORY_ATTACHED_EVENT:Ljava/lang/String; = "com.samsung.accessory.device.action.ACCESSORY_ATTACHED"

.field static final ACTION_ACCESSORY_DETACHED:Ljava/lang/String; = "android.accessory.device.action.DETACHED"

.field static final ACTION_ACCESSORY_DETACHED_EVENT:Ljava/lang/String; = "com.samsung.accessory.device.action.ACCESSORY_DETACHED"

.field public static final ASSISTMODE_DEFAULT:I = 0x0

.field public static final ASSISTMODE_LIMITED:I = 0x1

.field public static final ASSISTMODE_STICKY:I = 0x2

.field private static final DEVICE_ATTACHED:I = 0x72

.field private static final DEVICE_DETACHED:I = 0x73

.field private static final DEVICE_STATE_CHANGED:I = 0x6d

.field public static final ERROR_ACCESSORY_ALREADY_CONNECTED:I = -0x6ffffff1

.field private static final ERROR_ACCESSORY_BT_ALREADY_CONNECTED:I = -0x3fffffff

.field public static final ERROR_ACCESSORY_FRAMEWORK_INCOMPATIBLE:I = -0x5ffffff3

.field public static final ERROR_ACCESSORY_NOT_CONNECTED:I = -0x6ffffff0

.field public static final ERROR_ACCESSORY_NOT_PAIRED:I = -0x6fffffeb

.field private static final ERROR_ACCESSORY_SCS_ALREADY_CONNECTED:I = -0x3ffffffe

.field public static final ERROR_ANOTHER_TRANSPORT_TYPE_STILL_ACTIVE:I = -0x3fffffff

.field public static final ERROR_ASSISTMODE_CONNECTIVITY_NOT_SUPPORTED:I = -0x1ffffffe

.field public static final ERROR_ASSISTMODE_INVALID_MODE:I = -0x1fffffff

.field public static final ERROR_CATEGORY_NOT_ALLOWED:I = -0x5fffffee

.field public static final ERROR_EXCEED_MAX_CONNECTIONS:I = -0x5fffffef

.field public static final ERROR_FATAL:I = 0x800

.field public static final ERROR_ONGOING_CONNECTION:I = -0x5fffffed

.field public static final ERROR_OPERATION_IN_PROGRESS:I = -0x6fffffed

.field private static final ERROR_PERMISSION:I = 0x2

.field public static final ERROR_SCS_ACCOUNT_AUTHENTICATION_FAILED:I = -0x4ffffffe

.field public static final ERROR_SCS_ACCOUNT_INITIALIZATION_FAILED:I = -0x4fffffff

.field public static final ERROR_SCS_ACCOUNT_NOT_FOUND:I = -0x4ffffffc

.field public static final ERROR_SCS_CONNECTION_PEER_FAILED:I = -0x4ffffff9

.field public static final ERROR_SCS_CONNECTION_SERVER_FAILED:I = -0x4ffffffa

.field public static final ERROR_SCS_PEER_ID_NOT_FOUND:I = -0x4ffffffb

.field public static final ERROR_SOCKET_CLOSE_FAILED:I = -0x5ffffff8

.field public static final ERROR_SOCKET_CONNECT_FAILED:I = -0x5ffffff9

.field public static final ERROR_SOCKET_CONNECT_TIMEOUT:I = -0x5ffffff6

.field public static final ERROR_SOCKET_CREATION_FAILED:I = -0x5ffffffb

.field public static final ERROR_SOCKET_READ_WRITE_FAILED:I = -0x5ffffff4

.field private static final EXTRA_ACCESSORY:Ljava/lang/String; = "accessory"

.field private static final EXTRA_ERROR_CODE:Ljava/lang/String; = "errorcode"

.field private static final SCS_CONNECT_ERROR:I = -0x2fffffff

.field private static final SCS_INIT_ERROR:I = 0x64

.field static final SOCKET_CONNECTION_REQUESTED:I = 0x0

.field static final SOCKET_DISCONNECTION_REQUESTED:I = 0x0

.field private static TAG:Ljava/lang/String; = null

.field public static final TRANSPORT_BLE:I = 0x4

.field public static final TRANSPORT_BT:I = 0x2

.field public static final TRANSPORT_SCS:I = 0x10

.field public static final TRANSPORT_USB:I = 0x8

.field public static final TRANSPORT_WIFI:I = 0x1

.field private static VERSION:Ljava/lang/String;

.field private static sOnlyInstance:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;


# instance fields
.field private mConnectionEventReceiver:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$ConntionEventReceiver;

.field private mContext:Landroid/content/Context;

.field private mIsConnected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 482
    const-string v0, "SamAccessoryManager-SDK"

    sput-object v0, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->TAG:Ljava/lang/String;

    .line 484
    const-string v0, "2.4.1"

    sput-object v0, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->VERSION:Ljava/lang/String;

    .line 486
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 492
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->mIsConnected:Z

    .line 495
    iput-object p1, p0, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->mContext:Landroid/content/Context;

    .line 496
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 482
    sget-object v0, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;)Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventCallback"    # Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    .prologue
    .line 521
    const-class v4, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    monitor-enter v4

    if-nez p0, :cond_0

    .line 522
    :try_start_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid argmument input."

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 524
    :cond_0
    :try_start_1
    sget-object v3, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SamAccessoryManager version: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->VERSION:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    new-instance v1, Lcom/samsung/android/sdk/accessorymanager/Sam;

    invoke-direct {v1}, Lcom/samsung/android/sdk/accessorymanager/Sam;-><init>()V

    .line 528
    .local v1, "sam":Lcom/samsung/android/sdk/accessorymanager/Sam;
    invoke-virtual {v1, p0}, Lcom/samsung/android/sdk/accessorymanager/Sam;->initialize(Landroid/content/Context;)V

    .line 530
    sget-object v3, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->sOnlyInstance:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    if-nez v3, :cond_1

    .line 531
    new-instance v3, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    invoke-direct {v3, p0}, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->sOnlyInstance:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    .line 532
    if-eqz p1, :cond_4

    .line 533
    sget-object v3, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->sOnlyInstance:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    new-instance v5, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$ConntionEventReceiver;

    const/4 v6, 0x0

    invoke-direct {v5, v6, p1}, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$ConntionEventReceiver;-><init>(Landroid/os/Handler;Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;)V

    iput-object v5, v3, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->mConnectionEventReceiver:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$ConntionEventReceiver;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 538
    :cond_1
    :goto_0
    :try_start_2
    new-instance v3, Lcom/samsung/accessory/api/SAManagerConfig;

    invoke-direct {v3, p0}, Lcom/samsung/accessory/api/SAManagerConfig;-><init>(Landroid/content/Context;)V
    :try_end_2
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 544
    :try_start_3
    sget-object v3, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->TAG:Ljava/lang/String;

    const-string v5, "Default instance requested.."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    sget-object v3, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->sOnlyInstance:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    iget-boolean v3, v3, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->mIsConnected:Z

    if-nez v3, :cond_6

    .line 546
    sget-object v3, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->TAG:Ljava/lang/String;

    const-string v5, "mOnlyInstance.mIsConnected is false"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    sget-object v3, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->sOnlyInstance:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    iget-object v3, v3, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/accessory/api/SAGenericAdapter;->getInstance(Landroid/content/Context;)Lcom/samsung/accessory/api/SAGenericAdapter;

    move-result-object v2

    .line 548
    .local v2, "uAdapter":Lcom/samsung/accessory/api/SAGenericAdapter;
    if-eqz v2, :cond_5

    .line 549
    sget-object v3, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->sOnlyInstance:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->mIsConnected:Z

    .line 550
    if-eqz p1, :cond_3

    .line 551
    sget-object v3, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->sOnlyInstance:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    iget-object v3, v3, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->mConnectionEventReceiver:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$ConntionEventReceiver;

    if-nez v3, :cond_2

    .line 552
    sget-object v3, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->sOnlyInstance:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    new-instance v5, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$ConntionEventReceiver;

    const/4 v6, 0x0

    invoke-direct {v5, v6, p1}, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$ConntionEventReceiver;-><init>(Landroid/os/Handler;Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;)V

    iput-object v5, v3, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->mConnectionEventReceiver:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$ConntionEventReceiver;

    .line 554
    :cond_2
    sget-object v3, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->sOnlyInstance:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    iget-object v3, v3, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->mConnectionEventReceiver:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$ConntionEventReceiver;

    invoke-virtual {v2, v3}, Lcom/samsung/accessory/api/SAGenericAdapter;->registerAccessoryCallback(Landroid/os/ResultReceiver;)Z

    .line 555
    sget-object v3, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->TAG:Ljava/lang/String;

    const-string v5, "registerAccessoryCallback.. if case"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    .end local v2    # "uAdapter":Lcom/samsung/accessory/api/SAGenericAdapter;
    :cond_3
    :goto_1
    sget-object v3, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->sOnlyInstance:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v4

    return-object v3

    .line 535
    :cond_4
    :try_start_4
    sget-object v3, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->TAG:Ljava/lang/String;

    const-string v5, "getInstance: eventCallback is null.."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 539
    :catch_0
    move-exception v0

    .line 540
    .local v0, "e":Lcom/samsung/android/sdk/SsdkUnsupportedException;
    sget-object v3, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Accessory Framework: version:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/accessory/api/SAManagerConfig;->getFrameworkVersion()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 541
    const-string v6, " does not support AccessoryManager (separated) features."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 540
    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    throw v0

    .line 558
    .end local v0    # "e":Lcom/samsung/android/sdk/SsdkUnsupportedException;
    .restart local v2    # "uAdapter":Lcom/samsung/accessory/api/SAGenericAdapter;
    :cond_5
    sget-object v3, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->sOnlyInstance:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    const/4 v5, 0x0

    iput-boolean v5, v3, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->mIsConnected:Z

    goto :goto_1

    .line 560
    .end local v2    # "uAdapter":Lcom/samsung/accessory/api/SAGenericAdapter;
    :cond_6
    if-eqz p1, :cond_3

    .line 561
    sget-object v3, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->sOnlyInstance:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    iget-object v3, v3, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->mConnectionEventReceiver:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$ConntionEventReceiver;

    if-nez v3, :cond_8

    .line 562
    sget-object v3, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->sOnlyInstance:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    new-instance v5, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$ConntionEventReceiver;

    const/4 v6, 0x0

    invoke-direct {v5, v6, p1}, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$ConntionEventReceiver;-><init>(Landroid/os/Handler;Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;)V

    iput-object v5, v3, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->mConnectionEventReceiver:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$ConntionEventReceiver;

    .line 563
    sget-object v3, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->sOnlyInstance:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    iget-object v3, v3, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/accessory/api/SAGenericAdapter;->getInstance(Landroid/content/Context;)Lcom/samsung/accessory/api/SAGenericAdapter;

    move-result-object v2

    .line 564
    .restart local v2    # "uAdapter":Lcom/samsung/accessory/api/SAGenericAdapter;
    if-eqz v2, :cond_7

    .line 565
    sget-object v3, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->sOnlyInstance:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    iget-object v3, v3, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->mConnectionEventReceiver:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$ConntionEventReceiver;

    invoke-virtual {v2, v3}, Lcom/samsung/accessory/api/SAGenericAdapter;->registerAccessoryCallback(Landroid/os/ResultReceiver;)Z

    .line 566
    sget-object v3, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->TAG:Ljava/lang/String;

    const-string v5, "registerAccessoryCallback.. else if case"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 568
    :cond_7
    sget-object v3, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->TAG:Ljava/lang/String;

    const-string v5, "uAdapter is null.."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 571
    .end local v2    # "uAdapter":Lcom/samsung/accessory/api/SAGenericAdapter;
    :cond_8
    sget-object v3, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->sOnlyInstance:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    iget-object v3, v3, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->mConnectionEventReceiver:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$ConntionEventReceiver;

    invoke-virtual {v3, p1}, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$ConntionEventReceiver;->updateCallback(Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method static setAccount(Lcom/samsung/android/sdk/accessorymanager/SamAccount;)I
    .locals 13
    .param p0, "scsAccount"    # Lcom/samsung/android/sdk/accessorymanager/SamAccount;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 787
    sget-object v1, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->sOnlyInstance:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/accessory/api/SAGenericAdapter;->getInstance(Landroid/content/Context;)Lcom/samsung/accessory/api/SAGenericAdapter;

    move-result-object v0

    .line 788
    .local v0, "uAdapter":Lcom/samsung/accessory/api/SAGenericAdapter;
    if-eqz v0, :cond_2

    .line 789
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessorymanager/SamAccount;->getGuId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessorymanager/SamAccount;->getAppId()Ljava/lang/String;

    move-result-object v2

    .line 790
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessorymanager/SamAccount;->getTargetAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessorymanager/SamAccount;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessorymanager/SamAccount;->getCountryCode()Ljava/lang/String;

    move-result-object v5

    .line 791
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessorymanager/SamAccount;->getEmail()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessorymanager/SamAccount;->getAppSecret()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessorymanager/SamAccount;->isDataNetworkEnabled()Z

    move-result v8

    .line 792
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessorymanager/SamAccount;->getMcc()I

    move-result v9

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessorymanager/SamAccount;->getMnc()I

    move-result v10

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessorymanager/SamAccount;->getTokenSecret()Ljava/lang/String;

    move-result-object v11

    .line 789
    invoke-virtual/range {v0 .. v11}, Lcom/samsung/accessory/api/SAGenericAdapter;->setAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;)I

    move-result v12

    .line 793
    .local v12, "status":I
    if-nez v12, :cond_1

    .line 794
    sget-object v1, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->TAG:Ljava/lang/String;

    const-string v2, "Account details successfully set"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    :cond_0
    return v12

    .line 796
    :cond_1
    const/4 v1, 0x2

    if-ne v12, v1, :cond_0

    .line 797
    new-instance v1, Ljava/lang/SecurityException;

    .line 798
    const-string v2, "com.samsung.accessory.permission.ACCESSORY_FRAMEWORK_ADMIN Permission is required to set the Account info."

    .line 797
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 807
    .end local v12    # "status":I
    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "setAccount():Accessory Framework does not support Accessory Manager features."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;)I
    .locals 13
    .param p0, "guid"    # Ljava/lang/String;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "targetAppId"    # Ljava/lang/String;
    .param p3, "token"    # Ljava/lang/String;
    .param p4, "cc"    # Ljava/lang/String;
    .param p5, "email"    # Ljava/lang/String;
    .param p6, "appSecret"    # Ljava/lang/String;
    .param p7, "dataNetwork"    # Z
    .param p8, "mcc"    # I
    .param p9, "mnc"    # I
    .param p10, "tokenSecret"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 748
    sget-object v1, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->TAG:Ljava/lang/String;

    const-string v2, "Calling deprecated API"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    sget-object v1, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->sOnlyInstance:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/accessory/api/SAGenericAdapter;->getInstance(Landroid/content/Context;)Lcom/samsung/accessory/api/SAGenericAdapter;

    move-result-object v0

    .line 750
    .local v0, "uAdapter":Lcom/samsung/accessory/api/SAGenericAdapter;
    if-eqz v0, :cond_2

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    .line 751
    invoke-virtual/range {v0 .. v11}, Lcom/samsung/accessory/api/SAGenericAdapter;->setAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;)I

    move-result v12

    .line 753
    .local v12, "status":I
    if-nez v12, :cond_1

    .line 754
    sget-object v1, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->TAG:Ljava/lang/String;

    const-string v2, "Account details successfully set"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :cond_0
    return v12

    .line 756
    :cond_1
    const/4 v1, 0x2

    if-ne v12, v1, :cond_0

    .line 757
    new-instance v1, Ljava/lang/SecurityException;

    .line 758
    const-string v2, "com.samsung.accessory.permission.ACCESSORY_FRAMEWORK_ADMIN Permission is required to set the Account info."

    .line 757
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 767
    .end local v12    # "status":I
    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "setAccount():Accessory Framework does not support Accessory Manager features."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private validateTransportDetails(Ljava/lang/String;I)V
    .locals 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "transportType"    # I

    .prologue
    .line 1038
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 1039
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid transport address"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1041
    :cond_1
    sparse-switch p2, :sswitch_data_0

    .line 1056
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid transport type:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1043
    :sswitch_0
    const-string v0, "^([0-9A-F]{2}[:-]){5}([0-9A-F]{2})$"

    .line 1044
    .local v0, "addressPattern":Ljava/lang/String;
    const-string v3, "^([0-9A-F]{2}[:-]){5}([0-9A-F]{2})$"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 1045
    .local v2, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1046
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1047
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid BT Address:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1058
    .end local v0    # "addressPattern":Ljava/lang/String;
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    .end local v2    # "pattern":Ljava/util/regex/Pattern;
    :cond_2
    :sswitch_1
    return-void

    .line 1041
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_1
        0x10 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public connect(Ljava/lang/String;I)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "transportType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 596
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->connect(Ljava/lang/String;II)V

    .line 597
    return-void
.end method

.method public connect(Ljava/lang/String;II)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "transportType"    # I
    .param p3, "assistMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 637
    sget-object v2, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "connect:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Transport:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->validateTransportDetails(Ljava/lang/String;I)V

    .line 639
    sget-object v2, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->sOnlyInstance:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    iget-object v2, v2, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/accessory/api/SAGenericAdapter;->getInstance(Landroid/content/Context;)Lcom/samsung/accessory/api/SAGenericAdapter;

    move-result-object v1

    .line 640
    .local v1, "uAdapter":Lcom/samsung/accessory/api/SAGenericAdapter;
    if-eqz v1, :cond_3

    .line 641
    invoke-virtual {v1}, Lcom/samsung/accessory/api/SAGenericAdapter;->isAccessoryCallbackSet()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->sOnlyInstance:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    iget-object v2, v2, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->mConnectionEventReceiver:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$ConntionEventReceiver;

    if-eqz v2, :cond_0

    .line 642
    sget-object v2, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->sOnlyInstance:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    iget-object v2, v2, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->mConnectionEventReceiver:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$ConntionEventReceiver;

    invoke-virtual {v1, v2}, Lcom/samsung/accessory/api/SAGenericAdapter;->registerAccessoryCallback(Landroid/os/ResultReceiver;)Z

    .line 644
    :cond_0
    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/accessory/api/SAGenericAdapter;->connect(Ljava/lang/String;II)I

    move-result v0

    .line 645
    .local v0, "status":I
    if-nez v0, :cond_1

    .line 646
    sget-object v2, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Connect requested successfully for address:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Transport Type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 647
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 646
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    return-void

    .line 648
    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 649
    new-instance v2, Ljava/lang/SecurityException;

    .line 650
    const-string v3, "com.samsung.accessory.permission.ACCESSORY_FRAMEWORK_ADMIN Permission is required to call connect/disconnect"

    .line 649
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 652
    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Connect request failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 655
    .end local v0    # "status":I
    :cond_3
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Connect:Accessory Framework does not support Accessory Manager features."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public disconnect(Ljava/lang/String;I)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "transportType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 686
    sget-object v2, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "disconnect:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Transport:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->validateTransportDetails(Ljava/lang/String;I)V

    .line 688
    sget-object v2, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->sOnlyInstance:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    iget-object v2, v2, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/accessory/api/SAGenericAdapter;->getInstance(Landroid/content/Context;)Lcom/samsung/accessory/api/SAGenericAdapter;

    move-result-object v1

    .line 689
    .local v1, "uAdapter":Lcom/samsung/accessory/api/SAGenericAdapter;
    if-eqz v1, :cond_3

    .line 690
    invoke-virtual {v1}, Lcom/samsung/accessory/api/SAGenericAdapter;->isAccessoryCallbackSet()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->sOnlyInstance:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    iget-object v2, v2, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->mConnectionEventReceiver:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$ConntionEventReceiver;

    if-eqz v2, :cond_0

    .line 691
    sget-object v2, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->sOnlyInstance:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    iget-object v2, v2, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->mConnectionEventReceiver:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$ConntionEventReceiver;

    invoke-virtual {v1, v2}, Lcom/samsung/accessory/api/SAGenericAdapter;->registerAccessoryCallback(Landroid/os/ResultReceiver;)Z

    .line 693
    :cond_0
    invoke-virtual {v1, p1, p2}, Lcom/samsung/accessory/api/SAGenericAdapter;->disconnect(Ljava/lang/String;I)I

    move-result v0

    .line 694
    .local v0, "status":I
    if-nez v0, :cond_1

    .line 695
    sget-object v2, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Disconnect requested successfully for address:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Transport Type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 696
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 695
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    return-void

    .line 697
    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 698
    new-instance v2, Ljava/lang/SecurityException;

    .line 699
    const-string v3, "com.samsung.accessory.permission.ACCESSORY_FRAMEWORK_ADMIN Permission is required to call connect/disconnect"

    .line 698
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 701
    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Disconnect request failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 704
    .end local v0    # "status":I
    :cond_3
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Disconnect:Accessory Framework does not support Accessory Manager features."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getConnectedAccessories()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/accessorymanager/SamDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 820
    sget-object v1, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->TAG:Ljava/lang/String;

    const-string v2, "connectedAccessories"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    sget-object v1, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->sOnlyInstance:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/accessory/api/SAGenericAdapter;->getInstance(Landroid/content/Context;)Lcom/samsung/accessory/api/SAGenericAdapter;

    move-result-object v0

    .line 822
    .local v0, "uAdapter":Lcom/samsung/accessory/api/SAGenericAdapter;
    if-eqz v0, :cond_0

    .line 823
    invoke-virtual {v0}, Lcom/samsung/accessory/api/SAGenericAdapter;->getConnectedAccessories()Ljava/util/List;

    move-result-object v1

    .line 825
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 853
    sget-object v1, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->TAG:Ljava/lang/String;

    const-string v2, "release"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    sget-object v1, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->sOnlyInstance:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    iget-boolean v1, v1, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->mIsConnected:Z

    if-eqz v1, :cond_1

    .line 855
    sget-object v1, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->sOnlyInstance:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/accessory/api/SAGenericAdapter;->getInstance(Landroid/content/Context;)Lcom/samsung/accessory/api/SAGenericAdapter;

    move-result-object v0

    .line 856
    .local v0, "uAdapter":Lcom/samsung/accessory/api/SAGenericAdapter;
    if-eqz v0, :cond_0

    .line 857
    invoke-virtual {v0}, Lcom/samsung/accessory/api/SAGenericAdapter;->release()V

    .line 859
    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->sOnlyInstance:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->mIsConnected:Z

    .line 861
    .end local v0    # "uAdapter":Lcom/samsung/accessory/api/SAGenericAdapter;
    :cond_1
    return-void
.end method
