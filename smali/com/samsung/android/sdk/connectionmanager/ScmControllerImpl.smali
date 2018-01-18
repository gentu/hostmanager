.class final Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;
.super Lcom/samsung/android/sdk/connectionmanager/ScmController;
.source "ScmControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$SyncCommandInvoker;,
        Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SbcmControllerImpl"


# instance fields
.field private mConnector:Lcom/samsung/android/sdk/connectionmanager/IConnector;

.field private mEventHandler:Lcom/samsung/android/sdk/connectionmanager/EventHandler;

.field private mEventListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$EventListener;

.field private mResponseHandler:Lcom/samsung/android/sdk/connectionmanager/ResponseHandler;

.field private mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/connectionmanager/IConnector;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "connector"    # Lcom/samsung/android/sdk/connectionmanager/IConnector;

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Lcom/samsung/android/sdk/connectionmanager/ScmController;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mConnector:Lcom/samsung/android/sdk/connectionmanager/IConnector;

    .line 20
    iput-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    .line 22
    iput-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mEventListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$EventListener;

    .line 32
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$1;

    invoke-static {}, Lcom/samsung/android/sdk/connectionmanager/ScmConnector;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$1;-><init>(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mEventHandler:Lcom/samsung/android/sdk/connectionmanager/EventHandler;

    .line 262
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$2;

    invoke-static {}, Lcom/samsung/android/sdk/connectionmanager/ScmConnector;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$2;-><init>(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseHandler:Lcom/samsung/android/sdk/connectionmanager/ResponseHandler;

    .line 25
    iput-object p2, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mConnector:Lcom/samsung/android/sdk/connectionmanager/IConnector;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;)Lcom/samsung/android/sdk/connectionmanager/ScmController$EventListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mEventListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$EventListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;)Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;)Lcom/samsung/android/sdk/connectionmanager/IConnector;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mConnector:Lcom/samsung/android/sdk/connectionmanager/IConnector;

    return-object v0
.end method

.method private createWearableDeviceList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1012
    .local p1, "bundleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    if-nez p1, :cond_1

    .line 1013
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1021
    :cond_0
    return-object v1

    .line 1015
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1017
    .local v1, "mDeviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 1018
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v3, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;

    invoke-direct {v3, v0}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public cancel(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;)V
    .locals 8
    .param p1, "device"    # Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 750
    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mConnector:Lcom/samsung/android/sdk/connectionmanager/IConnector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mConnector:Lcom/samsung/android/sdk/connectionmanager/IConnector;

    invoke-interface {v1}, Lcom/samsung/android/sdk/connectionmanager/IConnector;->isServiceConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 752
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    if-eqz v1, :cond_1

    .line 753
    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    invoke-interface {v1, p1, v6, v7}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;->onCancel(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;Ljava/util/ArrayList;I)V

    .line 781
    :cond_1
    :goto_0
    return-void

    .line 757
    :cond_2
    if-nez p1, :cond_3

    .line 758
    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    if-eqz v1, :cond_1

    .line 759
    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    invoke-interface {v1, p1, v6, v7}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;->onCancel(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 764
    :cond_3
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;

    const/16 v1, 0x24

    iget-object v4, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseHandler:Lcom/samsung/android/sdk/connectionmanager/ResponseHandler;

    invoke-direct {v0, p0, v1, v4, v6}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;-><init>(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;ILcom/samsung/android/sdk/connectionmanager/ResponseHandler;Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$1;)V

    .line 767
    .local v0, "invoker":Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;
    instance-of v1, p1, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;

    if-eqz v1, :cond_4

    .line 768
    const-string v4, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;

    .line 769
    invoke-virtual {v1}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;->getDeviceBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 768
    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 772
    :cond_4
    const-string v1, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    sget-object v4, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;->ALL:Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    invoke-virtual {v0}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;->invoke()J

    move-result-wide v2

    .line 777
    .local v2, "res":J
    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 778
    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    if-eqz v1, :cond_1

    .line 779
    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    invoke-interface {v1, p1, v6, v7}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;->onCancel(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method public cancel(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;I)V
    .locals 8
    .param p1, "device"    # Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    .param p2, "serviceType"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 785
    iget-object v4, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mConnector:Lcom/samsung/android/sdk/connectionmanager/IConnector;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mConnector:Lcom/samsung/android/sdk/connectionmanager/IConnector;

    invoke-interface {v4}, Lcom/samsung/android/sdk/connectionmanager/IConnector;->isServiceConnected()Z

    move-result v4

    if-nez v4, :cond_2

    .line 787
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    if-eqz v4, :cond_1

    .line 788
    iget-object v4, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    invoke-interface {v4, p1, v6, v7}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;->onCancel(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;Ljava/util/ArrayList;I)V

    .line 818
    :cond_1
    :goto_0
    return-void

    .line 792
    :cond_2
    if-nez p1, :cond_3

    .line 793
    iget-object v4, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    if-eqz v4, :cond_1

    .line 794
    iget-object v4, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    invoke-interface {v4, p1, v6, v7}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;->onCancel(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 799
    :cond_3
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;

    const/16 v4, 0x24

    iget-object v5, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseHandler:Lcom/samsung/android/sdk/connectionmanager/ResponseHandler;

    invoke-direct {v0, p0, v4, v5, v6}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;-><init>(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;ILcom/samsung/android/sdk/connectionmanager/ResponseHandler;Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$1;)V

    .line 802
    .local v0, "invoker":Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;
    instance-of v4, p1, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;

    if-eqz v4, :cond_4

    .line 803
    const-string v5, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    move-object v4, p1

    check-cast v4, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;

    .line 804
    invoke-virtual {v4}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;->getDeviceBundle()Landroid/os/Bundle;

    move-result-object v4

    .line 803
    invoke-virtual {v0, v5, v4}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 807
    :cond_4
    invoke-static {p2}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;->forValue(I)Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;

    move-result-object v1

    .line 809
    .local v1, "type":Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;
    const-string v4, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    invoke-virtual {v1}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    invoke-virtual {v0}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;->invoke()J

    move-result-wide v2

    .line 814
    .local v2, "res":J
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    .line 815
    iget-object v4, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    if-eqz v4, :cond_1

    .line 816
    iget-object v4, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    invoke-interface {v4, p1, v6, v7}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;->onCancel(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method public connect(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;)V
    .locals 8
    .param p1, "device"    # Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 673
    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mConnector:Lcom/samsung/android/sdk/connectionmanager/IConnector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mConnector:Lcom/samsung/android/sdk/connectionmanager/IConnector;

    invoke-interface {v1}, Lcom/samsung/android/sdk/connectionmanager/IConnector;->isServiceConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 675
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    if-eqz v1, :cond_1

    .line 676
    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    invoke-interface {v1, p1, v6, v7}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;->onConnect(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;Ljava/util/ArrayList;I)V

    .line 707
    :cond_1
    :goto_0
    return-void

    .line 681
    :cond_2
    if-nez p1, :cond_3

    .line 683
    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    if-eqz v1, :cond_1

    .line 684
    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    invoke-interface {v1, p1, v6, v7}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;->onConnect(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 690
    :cond_3
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;

    const/16 v1, 0x15

    iget-object v4, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseHandler:Lcom/samsung/android/sdk/connectionmanager/ResponseHandler;

    invoke-direct {v0, p0, v1, v4, v6}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;-><init>(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;ILcom/samsung/android/sdk/connectionmanager/ResponseHandler;Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$1;)V

    .line 693
    .local v0, "invoker":Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;
    instance-of v1, p1, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;

    if-eqz v1, :cond_4

    .line 694
    const-string v4, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;

    .line 695
    invoke-virtual {v1}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;->getDeviceBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 694
    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 698
    :cond_4
    const-string v1, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    sget-object v4, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;->ALL:Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    invoke-virtual {v0}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;->invoke()J

    move-result-wide v2

    .line 703
    .local v2, "res":J
    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 704
    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    if-eqz v1, :cond_1

    .line 705
    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    invoke-interface {v1, p1, v6, v7}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;->onConnect(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method public connect(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;I)V
    .locals 8
    .param p1, "device"    # Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    .param p2, "serviceType"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 591
    iget-object v4, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mConnector:Lcom/samsung/android/sdk/connectionmanager/IConnector;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mConnector:Lcom/samsung/android/sdk/connectionmanager/IConnector;

    invoke-interface {v4}, Lcom/samsung/android/sdk/connectionmanager/IConnector;->isServiceConnected()Z

    move-result v4

    if-nez v4, :cond_2

    .line 594
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    if-eqz v4, :cond_1

    .line 595
    iget-object v4, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    invoke-interface {v4, p1, v6, v7}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;->onConnect(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;Ljava/util/ArrayList;I)V

    .line 628
    :cond_1
    :goto_0
    return-void

    .line 600
    :cond_2
    if-nez p1, :cond_3

    .line 602
    iget-object v4, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    if-eqz v4, :cond_1

    .line 603
    iget-object v4, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    invoke-interface {v4, p1, v6, v7}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;->onConnect(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 609
    :cond_3
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;

    const/16 v4, 0x15

    iget-object v5, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseHandler:Lcom/samsung/android/sdk/connectionmanager/ResponseHandler;

    invoke-direct {v0, p0, v4, v5, v6}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;-><init>(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;ILcom/samsung/android/sdk/connectionmanager/ResponseHandler;Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$1;)V

    .line 612
    .local v0, "invoker":Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;
    instance-of v4, p1, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;

    if-eqz v4, :cond_4

    .line 613
    const-string v5, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    move-object v4, p1

    check-cast v4, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;

    .line 614
    invoke-virtual {v4}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;->getDeviceBundle()Landroid/os/Bundle;

    move-result-object v4

    .line 613
    invoke-virtual {v0, v5, v4}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 617
    :cond_4
    invoke-static {p2}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;->forValue(I)Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;

    move-result-object v1

    .line 619
    .local v1, "type":Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;
    const-string v4, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    invoke-virtual {v1}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    invoke-virtual {v0}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;->invoke()J

    move-result-wide v2

    .line 624
    .local v2, "res":J
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    .line 625
    iget-object v4, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    if-eqz v4, :cond_1

    .line 626
    iget-object v4, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    invoke-interface {v4, p1, v6, v7}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;->onConnect(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method public createBond(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;)V
    .locals 7
    .param p1, "device"    # Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;

    .prologue
    const/4 v6, 0x1

    .line 553
    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mConnector:Lcom/samsung/android/sdk/connectionmanager/IConnector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mConnector:Lcom/samsung/android/sdk/connectionmanager/IConnector;

    invoke-interface {v1}, Lcom/samsung/android/sdk/connectionmanager/IConnector;->isServiceConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 556
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    if-eqz v1, :cond_1

    .line 557
    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    invoke-interface {v1, p1, v6}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;->onCreateBond(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;I)V

    .line 587
    :cond_1
    :goto_0
    return-void

    .line 562
    :cond_2
    if-nez p1, :cond_3

    .line 564
    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    if-eqz v1, :cond_1

    .line 565
    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    invoke-interface {v1, p1, v6}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;->onCreateBond(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;I)V

    goto :goto_0

    .line 571
    :cond_3
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;

    const/16 v1, 0x13

    iget-object v4, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseHandler:Lcom/samsung/android/sdk/connectionmanager/ResponseHandler;

    const/4 v5, 0x0

    invoke-direct {v0, p0, v1, v4, v5}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;-><init>(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;ILcom/samsung/android/sdk/connectionmanager/ResponseHandler;Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$1;)V

    .line 574
    .local v0, "invoker":Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;
    instance-of v1, p1, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;

    if-eqz v1, :cond_4

    .line 575
    const-string v4, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;

    .line 576
    invoke-virtual {v1}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;->getDeviceBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 575
    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 579
    :cond_4
    invoke-virtual {v0}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;->invoke()J

    move-result-wide v2

    .line 582
    .local v2, "res":J
    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 583
    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    if-eqz v1, :cond_1

    .line 584
    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    invoke-interface {v1, p1, v6}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;->onCreateBond(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;I)V

    goto :goto_0
.end method

.method public disconnect(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;)V
    .locals 8
    .param p1, "device"    # Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 711
    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mConnector:Lcom/samsung/android/sdk/connectionmanager/IConnector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mConnector:Lcom/samsung/android/sdk/connectionmanager/IConnector;

    invoke-interface {v1}, Lcom/samsung/android/sdk/connectionmanager/IConnector;->isServiceConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 714
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    if-eqz v1, :cond_1

    .line 715
    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    invoke-interface {v1, p1, v6, v7}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;->onDisconnect(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;Ljava/util/ArrayList;I)V

    .line 746
    :cond_1
    :goto_0
    return-void

    .line 720
    :cond_2
    if-nez p1, :cond_3

    .line 722
    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    if-eqz v1, :cond_1

    .line 723
    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    invoke-interface {v1, p1, v6, v7}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;->onDisconnect(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 729
    :cond_3
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;

    const/16 v1, 0x16

    iget-object v4, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseHandler:Lcom/samsung/android/sdk/connectionmanager/ResponseHandler;

    invoke-direct {v0, p0, v1, v4, v6}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;-><init>(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;ILcom/samsung/android/sdk/connectionmanager/ResponseHandler;Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$1;)V

    .line 732
    .local v0, "invoker":Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;
    instance-of v1, p1, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;

    if-eqz v1, :cond_4

    .line 733
    const-string v4, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;

    .line 734
    invoke-virtual {v1}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;->getDeviceBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 733
    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 737
    :cond_4
    const-string v1, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    sget-object v4, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;->ALL:Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    invoke-virtual {v0}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;->invoke()J

    move-result-wide v2

    .line 742
    .local v2, "res":J
    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 743
    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    if-eqz v1, :cond_1

    .line 744
    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    invoke-interface {v1, p1, v6, v7}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;->onDisconnect(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method public disconnect(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;I)V
    .locals 8
    .param p1, "device"    # Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    .param p2, "serviceType"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 632
    iget-object v4, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mConnector:Lcom/samsung/android/sdk/connectionmanager/IConnector;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mConnector:Lcom/samsung/android/sdk/connectionmanager/IConnector;

    invoke-interface {v4}, Lcom/samsung/android/sdk/connectionmanager/IConnector;->isServiceConnected()Z

    move-result v4

    if-nez v4, :cond_2

    .line 635
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    if-eqz v4, :cond_1

    .line 636
    iget-object v4, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    invoke-interface {v4, p1, v6, v7}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;->onDisconnect(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;Ljava/util/ArrayList;I)V

    .line 669
    :cond_1
    :goto_0
    return-void

    .line 641
    :cond_2
    if-nez p1, :cond_3

    .line 643
    iget-object v4, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    if-eqz v4, :cond_1

    .line 644
    iget-object v4, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    invoke-interface {v4, p1, v6, v7}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;->onDisconnect(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 650
    :cond_3
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;

    const/16 v4, 0x16

    iget-object v5, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseHandler:Lcom/samsung/android/sdk/connectionmanager/ResponseHandler;

    invoke-direct {v0, p0, v4, v5, v6}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;-><init>(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;ILcom/samsung/android/sdk/connectionmanager/ResponseHandler;Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$1;)V

    .line 653
    .local v0, "invoker":Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;
    instance-of v4, p1, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;

    if-eqz v4, :cond_4

    .line 654
    const-string v5, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    move-object v4, p1

    check-cast v4, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;

    .line 655
    invoke-virtual {v4}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;->getDeviceBundle()Landroid/os/Bundle;

    move-result-object v4

    .line 654
    invoke-virtual {v0, v5, v4}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 658
    :cond_4
    invoke-static {p2}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;->forValue(I)Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;

    move-result-object v1

    .line 660
    .local v1, "type":Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;
    const-string v4, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    invoke-virtual {v1}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    invoke-virtual {v0}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;->invoke()J

    move-result-wide v2

    .line 665
    .local v2, "res":J
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    .line 666
    iget-object v4, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    if-eqz v4, :cond_1

    .line 667
    iget-object v4, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    invoke-interface {v4, p1, v6, v7}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;->onDisconnect(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method public getBondedDeviceList()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 866
    iget-object v3, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mConnector:Lcom/samsung/android/sdk/connectionmanager/IConnector;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mConnector:Lcom/samsung/android/sdk/connectionmanager/IConnector;

    invoke-interface {v3}, Lcom/samsung/android/sdk/connectionmanager/IConnector;->isServiceConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 868
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 884
    :goto_0
    return-object v3

    .line 871
    :cond_1
    new-instance v1, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$SyncCommandInvoker;

    const/16 v3, 0x113

    const/4 v4, 0x0

    invoke-direct {v1, p0, v3, v4}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$SyncCommandInvoker;-><init>(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;ILcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$1;)V

    .line 873
    .local v1, "invoker":Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$SyncCommandInvoker;
    invoke-virtual {v1}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$SyncCommandInvoker;->invoke()Landroid/os/Bundle;

    move-result-object v2

    .line 876
    .local v2, "resBundle":Landroid/os/Bundle;
    if-nez v2, :cond_2

    .line 877
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 881
    :cond_2
    const-string v3, "BUNDLE_CMKEY_BUNDLELIST_WEARABLEDEVICELIST"

    .line 882
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 884
    .local v0, "bundleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->createWearableDeviceList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_0
.end method

.method public getConnectedDeviceList(I)Ljava/util/ArrayList;
    .locals 6
    .param p1, "serviceType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 889
    iget-object v4, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mConnector:Lcom/samsung/android/sdk/connectionmanager/IConnector;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mConnector:Lcom/samsung/android/sdk/connectionmanager/IConnector;

    invoke-interface {v4}, Lcom/samsung/android/sdk/connectionmanager/IConnector;->isServiceConnected()Z

    move-result v4

    if-nez v4, :cond_1

    .line 891
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 911
    :goto_0
    return-object v4

    .line 894
    :cond_1
    new-instance v1, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$SyncCommandInvoker;

    const/16 v4, 0x115

    const/4 v5, 0x0

    invoke-direct {v1, p0, v4, v5}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$SyncCommandInvoker;-><init>(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;ILcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$1;)V

    .line 896
    .local v1, "invoker":Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$SyncCommandInvoker;
    invoke-static {p1}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;->forValue(I)Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;

    move-result-object v3

    .line 898
    .local v3, "type":Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;
    const-string v4, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    invoke-virtual {v3}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$SyncCommandInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    invoke-virtual {v1}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$SyncCommandInvoker;->invoke()Landroid/os/Bundle;

    move-result-object v2

    .line 903
    .local v2, "resBundle":Landroid/os/Bundle;
    if-nez v2, :cond_2

    .line 904
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 908
    :cond_2
    const-string v4, "BUNDLE_CMKEY_BUNDLELIST_WEARABLEDEVICELIST"

    .line 909
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 911
    .local v0, "bundleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->createWearableDeviceList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_0
.end method

.method public getConnector()Lcom/samsung/android/sdk/connectionmanager/IConnector;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mConnector:Lcom/samsung/android/sdk/connectionmanager/IConnector;

    return-object v0
.end method

.method public getServiceState(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;I)I
    .locals 7
    .param p1, "device"    # Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    .param p2, "serviceType"    # I

    .prologue
    .line 822
    iget-object v5, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mConnector:Lcom/samsung/android/sdk/connectionmanager/IConnector;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mConnector:Lcom/samsung/android/sdk/connectionmanager/IConnector;

    invoke-interface {v5}, Lcom/samsung/android/sdk/connectionmanager/IConnector;->isServiceConnected()Z

    move-result v5

    if-nez v5, :cond_1

    .line 824
    :cond_0
    sget-object v5, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;->DISCONNECTED:Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;->value()I

    move-result v5

    .line 861
    .end local p1    # "device":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    :goto_0
    return v5

    .line 827
    .restart local p1    # "device":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    :cond_1
    if-nez p1, :cond_2

    .line 828
    sget-object v5, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;->DISCONNECTED:Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;->value()I

    move-result v5

    goto :goto_0

    .line 832
    :cond_2
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$SyncCommandInvoker;

    const/16 v5, 0x112

    const/4 v6, 0x0

    invoke-direct {v0, p0, v5, v6}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$SyncCommandInvoker;-><init>(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;ILcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$1;)V

    .line 834
    .local v0, "invoker":Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$SyncCommandInvoker;
    instance-of v5, p1, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;

    if-eqz v5, :cond_3

    .line 835
    const-string v5, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    check-cast p1, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;

    .line 836
    .end local p1    # "device":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    invoke-virtual {p1}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;->getDeviceBundle()Landroid/os/Bundle;

    move-result-object v6

    .line 835
    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$SyncCommandInvoker;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 839
    :cond_3
    invoke-static {p2}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;->forValue(I)Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;

    move-result-object v3

    .line 841
    .local v3, "type":Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;
    const-string v5, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    invoke-virtual {v3}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$SyncCommandInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    invoke-virtual {v0}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$SyncCommandInvoker;->invoke()Landroid/os/Bundle;

    move-result-object v1

    .line 846
    .local v1, "resBundle":Landroid/os/Bundle;
    if-nez v1, :cond_4

    .line 847
    sget-object v5, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;->DISCONNECTED:Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;->value()I

    move-result v5

    goto :goto_0

    .line 851
    :cond_4
    const-string v5, "BUNDLE_CMKEY_STRING_SERVICESTATE"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 854
    .local v4, "value":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;->valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;

    move-result-object v2

    .line 856
    .local v2, "state":Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;
    invoke-virtual {v2}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;->value()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_0

    .line 857
    .end local v2    # "state":Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;
    :catch_0
    move-exception v5

    .line 861
    sget-object v5, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;->DISCONNECTED:Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;->value()I

    move-result v5

    goto :goto_0
.end method

.method public removeBond(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;)V
    .locals 7
    .param p1, "device"    # Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;

    .prologue
    const/4 v6, 0x1

    .line 516
    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mConnector:Lcom/samsung/android/sdk/connectionmanager/IConnector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mConnector:Lcom/samsung/android/sdk/connectionmanager/IConnector;

    invoke-interface {v1}, Lcom/samsung/android/sdk/connectionmanager/IConnector;->isServiceConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 519
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    if-eqz v1, :cond_1

    .line 520
    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    invoke-interface {v1, p1, v6}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;->onRemoveBond(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;I)V

    .line 549
    :cond_1
    :goto_0
    return-void

    .line 525
    :cond_2
    if-nez p1, :cond_3

    .line 527
    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    if-eqz v1, :cond_1

    .line 528
    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    invoke-interface {v1, p1, v6}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;->onRemoveBond(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;I)V

    goto :goto_0

    .line 534
    :cond_3
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;

    const/16 v1, 0x14

    iget-object v4, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseHandler:Lcom/samsung/android/sdk/connectionmanager/ResponseHandler;

    const/4 v5, 0x0

    invoke-direct {v0, p0, v1, v4, v5}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;-><init>(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;ILcom/samsung/android/sdk/connectionmanager/ResponseHandler;Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$1;)V

    .line 537
    .local v0, "invoker":Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;
    instance-of v1, p1, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;

    if-eqz v1, :cond_4

    .line 538
    const-string v4, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;

    .line 539
    invoke-virtual {v1}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;->getDeviceBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 538
    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 542
    :cond_4
    invoke-virtual {v0}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;->invoke()J

    move-result-wide v2

    .line 545
    .local v2, "res":J
    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 546
    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    if-eqz v1, :cond_1

    .line 547
    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    invoke-interface {v1, p1, v6}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;->onRemoveBond(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;I)V

    goto :goto_0
.end method

.method public setAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;)V
    .locals 8
    .param p1, "guid"    # Ljava/lang/String;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "targetAppId"    # Ljava/lang/String;
    .param p4, "token"    # Ljava/lang/String;
    .param p5, "cc"    # Ljava/lang/String;
    .param p6, "email"    # Ljava/lang/String;
    .param p7, "appSecret"    # Ljava/lang/String;
    .param p8, "dataNetwork"    # Z
    .param p9, "mcc"    # I
    .param p10, "mnc"    # I
    .param p11, "tokenSecret"    # Ljava/lang/String;

    .prologue
    .line 970
    iget-object v3, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mConnector:Lcom/samsung/android/sdk/connectionmanager/IConnector;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mConnector:Lcom/samsung/android/sdk/connectionmanager/IConnector;

    invoke-interface {v3}, Lcom/samsung/android/sdk/connectionmanager/IConnector;->isServiceConnected()Z

    move-result v3

    if-nez v3, :cond_2

    .line 972
    :cond_0
    const-string v3, "SbcmControllerImpl"

    const-string v6, "service is not available.."

    invoke-static {v3, v6}, Lcom/samsung/android/sdk/connectionmanager/DLog;->v_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    iget-object v3, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    if-eqz v3, :cond_1

    .line 976
    iget-object v3, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    const/4 v6, 0x1

    invoke-interface {v3, v6}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;->onSetAccount(I)V

    .line 1006
    :cond_1
    :goto_0
    return-void

    .line 981
    :cond_2
    new-instance v2, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;

    const/16 v3, 0x26

    iget-object v6, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseHandler:Lcom/samsung/android/sdk/connectionmanager/ResponseHandler;

    const/4 v7, 0x0

    invoke-direct {v2, p0, v3, v6, v7}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;-><init>(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;ILcom/samsung/android/sdk/connectionmanager/ResponseHandler;Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$1;)V

    .line 984
    .local v2, "invoker":Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;
    const-string v3, "BUNDLE_CMKEY_STRING_SCS_GUID"

    invoke-virtual {v2, v3, p1}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    const-string v3, "BUNDLE_CMKEY_STRING_SCS_APPID"

    invoke-virtual {v2, v3, p2}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    const-string v3, "BUNDLE_CMKEY_STRING_SCS_TARGETAPPID"

    invoke-virtual {v2, v3, p3}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    const-string v3, "BUNDLE_CMKEY_STRING_SCS_TOKEN"

    invoke-virtual {v2, v3, p4}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    const-string v3, "BUNDLE_CMKEY_STRING_SCS_CC"

    invoke-virtual {v2, v3, p5}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    const-string v3, "BUNDLE_CMKEY_STRING_SCS_EMAILID"

    invoke-virtual {v2, v3, p6}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    const-string v3, "BUNDLE_CMKEY_STRING_SCS_APPSECRET"

    invoke-virtual {v2, v3, p7}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    const-string v3, "BUNDLE_CMKEY_BOOLEAN_SCS_DATANETWORK"

    move/from16 v0, p8

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;->putBoolean(Ljava/lang/String;Z)V

    .line 992
    const-string v3, "BUNDLE_CMKEY_INT_SCS_MCC"

    move/from16 v0, p9

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;->putInt(Ljava/lang/String;I)V

    .line 993
    const-string v3, "BUNDLE_CMKEY_INT_SCS_MNC"

    move/from16 v0, p10

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;->putInt(Ljava/lang/String;I)V

    .line 994
    const-string v3, "BUNDLE_CMKEY_SES_TOKENSECRET"

    move-object/from16 v0, p11

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    invoke-virtual {v2}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;->invoke()J

    move-result-wide v4

    .line 999
    .local v4, "res":J
    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 1001
    const-string v3, "SbcmControllerImpl"

    const-string v6, "request fail!"

    invoke-static {v3, v6}, Lcom/samsung/android/sdk/connectionmanager/DLog;->v_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    iget-object v3, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    if-eqz v3, :cond_1

    .line 1004
    iget-object v3, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    const/4 v6, 0x1

    invoke-interface {v3, v6}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;->onSetAccount(I)V

    goto :goto_0
.end method

.method public setEventListener(Lcom/samsung/android/sdk/connectionmanager/ScmController$EventListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/samsung/android/sdk/connectionmanager/ScmController$EventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/connectionmanager/ScmException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 447
    iget-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mConnector:Lcom/samsung/android/sdk/connectionmanager/IConnector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mConnector:Lcom/samsung/android/sdk/connectionmanager/IConnector;

    invoke-interface {v0}, Lcom/samsung/android/sdk/connectionmanager/IConnector;->isServiceConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 449
    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmException;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/connectionmanager/ScmException;-><init>(I)V

    throw v0

    .line 453
    :cond_1
    if-nez p1, :cond_2

    .line 454
    const-string v0, "SbcmControllerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MSG] setEventListener - listener : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/connectionmanager/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    iget-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mConnector:Lcom/samsung/android/sdk/connectionmanager/IConnector;

    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mEventHandler:Lcom/samsung/android/sdk/connectionmanager/EventHandler;

    invoke-interface {v0, v4, v3, v1}, Lcom/samsung/android/sdk/connectionmanager/IConnector;->unsubscribeEvent(ILandroid/os/Bundle;Lcom/samsung/android/sdk/connectionmanager/EventHandler;)V

    .line 456
    iput-object v3, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mEventListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$EventListener;

    .line 468
    :goto_0
    return-void

    .line 461
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mEventListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$EventListener;

    if-nez v0, :cond_3

    .line 462
    const-string v0, "SbcmControllerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MSG] setEventListener - mEventListener : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mEventListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$EventListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/connectionmanager/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mConnector:Lcom/samsung/android/sdk/connectionmanager/IConnector;

    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mEventHandler:Lcom/samsung/android/sdk/connectionmanager/EventHandler;

    invoke-interface {v0, v4, v3, v1}, Lcom/samsung/android/sdk/connectionmanager/IConnector;->subscribeEvent(ILandroid/os/Bundle;Lcom/samsung/android/sdk/connectionmanager/EventHandler;)Z

    .line 467
    :cond_3
    iput-object p1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mEventListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$EventListener;

    goto :goto_0
.end method

.method public setResponseListener(Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/connectionmanager/ScmException;
        }
    .end annotation

    .prologue
    .line 435
    iget-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mConnector:Lcom/samsung/android/sdk/connectionmanager/IConnector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mConnector:Lcom/samsung/android/sdk/connectionmanager/IConnector;

    invoke-interface {v0}, Lcom/samsung/android/sdk/connectionmanager/IConnector;->isServiceConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 437
    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmException;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/connectionmanager/ScmException;-><init>(I)V

    throw v0

    .line 441
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    .line 442
    return-void
.end method

.method public setScsPreference(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;Z)Z
    .locals 5
    .param p1, "device"    # Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    .param p2, "value"    # Z

    .prologue
    const/4 v2, 0x0

    .line 937
    iget-object v3, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mConnector:Lcom/samsung/android/sdk/connectionmanager/IConnector;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mConnector:Lcom/samsung/android/sdk/connectionmanager/IConnector;

    invoke-interface {v3}, Lcom/samsung/android/sdk/connectionmanager/IConnector;->isServiceConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 963
    .end local p1    # "device":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    :cond_0
    :goto_0
    return v2

    .line 942
    .restart local p1    # "device":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    :cond_1
    if-eqz p1, :cond_0

    .line 947
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$SyncCommandInvoker;

    const/16 v3, 0x117

    const/4 v4, 0x0

    invoke-direct {v0, p0, v3, v4}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$SyncCommandInvoker;-><init>(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;ILcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$1;)V

    .line 949
    .local v0, "invoker":Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$SyncCommandInvoker;
    instance-of v3, p1, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;

    if-eqz v3, :cond_2

    .line 950
    const-string v3, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    check-cast p1, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;

    .line 951
    .end local p1    # "device":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    invoke-virtual {p1}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;->getDeviceBundle()Landroid/os/Bundle;

    move-result-object v4

    .line 950
    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$SyncCommandInvoker;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 954
    :cond_2
    const-string v3, "BUNDLE_CMKEY_BOOLEAN_SCS_PREFERENCE"

    invoke-virtual {v0, v3, p2}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$SyncCommandInvoker;->putBoolean(Ljava/lang/String;Z)V

    .line 956
    invoke-virtual {v0}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$SyncCommandInvoker;->invoke()Landroid/os/Bundle;

    move-result-object v1

    .line 959
    .local v1, "resBundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 963
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public shutDown()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 917
    iget-object v3, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mConnector:Lcom/samsung/android/sdk/connectionmanager/IConnector;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mConnector:Lcom/samsung/android/sdk/connectionmanager/IConnector;

    invoke-interface {v3}, Lcom/samsung/android/sdk/connectionmanager/IConnector;->isServiceConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 931
    :cond_0
    :goto_0
    return v2

    .line 922
    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$SyncCommandInvoker;

    const/16 v3, 0x116

    const/4 v4, 0x0

    invoke-direct {v0, p0, v3, v4}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$SyncCommandInvoker;-><init>(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;ILcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$1;)V

    .line 924
    .local v0, "invoker":Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$SyncCommandInvoker;
    invoke-virtual {v0}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$SyncCommandInvoker;->invoke()Landroid/os/Bundle;

    move-result-object v1

    .line 927
    .local v1, "resBundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 931
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public startScan()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 472
    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mConnector:Lcom/samsung/android/sdk/connectionmanager/IConnector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mConnector:Lcom/samsung/android/sdk/connectionmanager/IConnector;

    invoke-interface {v1}, Lcom/samsung/android/sdk/connectionmanager/IConnector;->isServiceConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 474
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    if-eqz v1, :cond_1

    .line 475
    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    invoke-interface {v1, v6}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;->onStartScan(I)V

    .line 490
    :cond_1
    :goto_0
    return-void

    .line 480
    :cond_2
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;

    const/16 v1, 0x11

    iget-object v4, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseHandler:Lcom/samsung/android/sdk/connectionmanager/ResponseHandler;

    const/4 v5, 0x0

    invoke-direct {v0, p0, v1, v4, v5}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;-><init>(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;ILcom/samsung/android/sdk/connectionmanager/ResponseHandler;Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$1;)V

    .line 483
    .local v0, "invoker":Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;
    invoke-virtual {v0}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;->invoke()J

    move-result-wide v2

    .line 486
    .local v2, "res":J
    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 487
    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    if-eqz v1, :cond_1

    .line 488
    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    invoke-interface {v1, v6}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;->onStartScan(I)V

    goto :goto_0
.end method

.method public stopScan()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 494
    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mConnector:Lcom/samsung/android/sdk/connectionmanager/IConnector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mConnector:Lcom/samsung/android/sdk/connectionmanager/IConnector;

    invoke-interface {v1}, Lcom/samsung/android/sdk/connectionmanager/IConnector;->isServiceConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 496
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    if-eqz v1, :cond_1

    .line 497
    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    invoke-interface {v1, v6}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;->onStopScan(I)V

    .line 512
    :cond_1
    :goto_0
    return-void

    .line 502
    :cond_2
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;

    const/16 v1, 0x12

    iget-object v4, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseHandler:Lcom/samsung/android/sdk/connectionmanager/ResponseHandler;

    const/4 v5, 0x0

    invoke-direct {v0, p0, v1, v4, v5}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;-><init>(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;ILcom/samsung/android/sdk/connectionmanager/ResponseHandler;Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$1;)V

    .line 505
    .local v0, "invoker":Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;
    invoke-virtual {v0}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;->invoke()J

    move-result-wide v2

    .line 508
    .local v2, "res":J
    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 509
    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    if-eqz v1, :cond_1

    .line 510
    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->mResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    invoke-interface {v1, v6}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;->onStopScan(I)V

    goto :goto_0
.end method
