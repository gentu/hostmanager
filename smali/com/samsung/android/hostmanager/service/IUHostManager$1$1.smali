.class Lcom/samsung/android/hostmanager/service/IUHostManager$1$1;
.super Ljava/lang/Object;
.source "IUHostManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/service/IUHostManager$1;->waitAndConnectWifiDirect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/hostmanager/service/IUHostManager$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/service/IUHostManager$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/hostmanager/service/IUHostManager$1;

    .prologue
    .line 2162
    iput-object p1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager$1$1;->this$1:Lcom/samsung/android/hostmanager/service/IUHostManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2166
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager$1$1;->this$1:Lcom/samsung/android/hostmanager/service/IUHostManager$1;

    iget-object v1, v1, Lcom/samsung/android/hostmanager/service/IUHostManager$1;->this$0:Lcom/samsung/android/hostmanager/service/IUHostManager;

    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager$1$1;->this$1:Lcom/samsung/android/hostmanager/service/IUHostManager$1;

    iget-object v2, v2, Lcom/samsung/android/hostmanager/service/IUHostManager$1;->val$BTAddress:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/IUHostManager$1$1;->this$1:Lcom/samsung/android/hostmanager/service/IUHostManager$1;

    iget-object v3, v3, Lcom/samsung/android/hostmanager/service/IUHostManager$1;->val$listener:Lcom/samsung/android/hostmanager/aidl/ConnectListener;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/hostmanager/service/IUHostManager;->connectWifiDirect(Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/ConnectListener;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2170
    :goto_0
    return-void

    .line 2167
    :catch_0
    move-exception v0

    .line 2168
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
