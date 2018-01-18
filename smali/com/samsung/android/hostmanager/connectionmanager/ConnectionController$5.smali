.class Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$5;
.super Ljava/lang/Object;
.source "ConnectionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->showToast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    .prologue
    .line 2273
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$5;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    iput-object p2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$5;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2275
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$5;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->access$600(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;)Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$5;->val$msg:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 2276
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
