.class Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$4;
.super Ljava/lang/Object;
.source "ConnectionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->onReceivedEvent(ILandroid/os/Bundle;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

.field final synthetic val$request:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    .prologue
    .line 1313
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$4;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    iput-object p2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$4;->val$request:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1315
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$4;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v0

    const/16 v1, 0x17

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$4;->val$request:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    .line 1317
    return-void
.end method
