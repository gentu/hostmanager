.class Lcom/samsung/android/hostmanager/service/IUHostManager$1;
.super Ljava/lang/Object;
.source "IUHostManager.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/service/IUHostManager;->forceConnectWifiDirect(Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/ConnectListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/service/IUHostManager;

.field final synthetic val$BTAddress:Ljava/lang/String;

.field final synthetic val$listener:Lcom/samsung/android/hostmanager/aidl/ConnectListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/service/IUHostManager;Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/ConnectListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/service/IUHostManager;

    .prologue
    .line 2147
    iput-object p1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager$1;->this$0:Lcom/samsung/android/hostmanager/service/IUHostManager;

    iput-object p2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager$1;->val$BTAddress:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/hostmanager/service/IUHostManager$1;->val$listener:Lcom/samsung/android/hostmanager/aidl/ConnectListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private waitAndConnectWifiDirect()V
    .locals 4

    .prologue
    .line 2162
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/hostmanager/service/IUHostManager$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/hostmanager/service/IUHostManager$1$1;-><init>(Lcom/samsung/android/hostmanager/service/IUHostManager$1;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2172
    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 2156
    invoke-static {}, Lcom/samsung/android/hostmanager/service/IUHostManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed removeGroup"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2157
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/service/IUHostManager$1;->waitAndConnectWifiDirect()V

    .line 2158
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 2150
    invoke-static {}, Lcom/samsung/android/hostmanager/service/IUHostManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Success removeGroup"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2151
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/service/IUHostManager$1;->waitAndConnectWifiDirect()V

    .line 2152
    return-void
.end method
