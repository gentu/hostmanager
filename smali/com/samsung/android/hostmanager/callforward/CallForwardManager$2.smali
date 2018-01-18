.class Lcom/samsung/android/hostmanager/callforward/CallForwardManager$2;
.super Ljava/lang/Object;
.source "CallForwardManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/callforward/CallForwardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$2;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 268
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CallFoward Service Connected.."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$2;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-static {p2}, Lcom/samsung/accessory/callprovider/ICallForwardingInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/callprovider/ICallForwardingInterface;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$102(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;Lcom/samsung/accessory/callprovider/ICallForwardingInterface;)Lcom/samsung/accessory/callprovider/ICallForwardingInterface;

    .line 270
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$2;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$200(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)V

    .line 271
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 275
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CallFoward Service Disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$2;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$102(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;Lcom/samsung/accessory/callprovider/ICallForwardingInterface;)Lcom/samsung/accessory/callprovider/ICallForwardingInterface;

    .line 277
    return-void
.end method
