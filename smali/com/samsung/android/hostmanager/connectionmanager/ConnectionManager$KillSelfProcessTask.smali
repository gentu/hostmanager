.class Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager$KillSelfProcessTask;
.super Ljava/lang/Object;
.source "ConnectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KillSelfProcessTask"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mStartIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 2
    .param p1, "startIntent"    # Landroid/content/Intent;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 801
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 798
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager$KillSelfProcessTask;->mStartIntent:Landroid/content/Intent;

    .line 799
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager$KillSelfProcessTask;->mContext:Landroid/content/Context;

    .line 802
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Create Kill Self Process Task"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager$KillSelfProcessTask;->mStartIntent:Landroid/content/Intent;

    .line 804
    iput-object p2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager$KillSelfProcessTask;->mContext:Landroid/content/Context;

    .line 805
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 810
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Now Killing Self Process..."

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager$KillSelfProcessTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager$KillSelfProcessTask;->mStartIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 812
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 813
    return-void
.end method
