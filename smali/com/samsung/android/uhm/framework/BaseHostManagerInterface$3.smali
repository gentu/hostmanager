.class Lcom/samsung/android/uhm/framework/BaseHostManagerInterface$3;
.super Ljava/lang/Object;
.source "BaseHostManagerInterface.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;


# direct methods
.method constructor <init>(Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;

    .prologue
    .line 396
    iput-object p1, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface$3;->this$0:Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 406
    const-string v0, "BaseHostManagerInterface"

    const-string v1, "IU::onServiceConnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface$3;->this$0:Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;

    invoke-static {p2}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->mIUHostManager:Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface;

    .line 408
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface$3;->this$0:Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;

    iget-object v0, v0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->connectCallback:Lcom/samsung/android/uhm/framework/BaseHostManagerInterface$OnConnectedCb;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface$3;->this$0:Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;

    iget-object v0, v0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->connectCallback:Lcom/samsung/android/uhm/framework/BaseHostManagerInterface$OnConnectedCb;

    invoke-interface {v0}, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface$OnConnectedCb;->onConnected()V

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface$3;->this$0:Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;

    invoke-virtual {v0}, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->getHMListener()Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 412
    const-string v0, "BaseHostManagerInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IU::onServiceConnected() getHMListener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface$3;->this$0:Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;

    invoke-virtual {v2}, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->getHMListener()Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface$3;->this$0:Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;

    invoke-virtual {v0}, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 414
    const-string v0, "BaseHostManagerInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IU::onServiceConnected() getPackageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface$3;->this$0:Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;

    invoke-virtual {v2}, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface$3;->this$0:Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;

    iget-object v1, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface$3;->this$0:Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;

    invoke-virtual {v1}, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface$3;->this$0:Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;

    invoke-virtual {v2}, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->getHMListener()Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->registerListenerByPackageName(Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;)Z

    .line 420
    :cond_1
    :goto_0
    return-void

    .line 417
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface$3;->this$0:Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;

    iget-object v1, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface$3;->this$0:Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;

    invoke-virtual {v1}, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->getHMListener()Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->registerListener(Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;)Z

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 399
    const-string v0, "BaseHostManagerInterface"

    const-string v1, "IU::onServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface$3;->this$0:Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;

    invoke-virtual {v0}, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->unregisterListener()V

    .line 401
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface$3;->this$0:Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->mIUHostManager:Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface;

    .line 402
    return-void
.end method
