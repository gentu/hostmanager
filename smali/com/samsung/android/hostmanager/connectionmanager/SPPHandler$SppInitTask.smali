.class Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$SppInitTask;
.super Ljava/lang/Object;
.source "SPPHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SppInitTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;

    .prologue
    .line 494
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$SppInitTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 495
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 499
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SppInitTask start initilize task"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$SppInitTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->access$300(Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;)Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$SppInitTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->initialize()V

    .line 507
    :goto_0
    return-void

    .line 505
    :cond_0
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, " SppInitTask : mAccessoryManager is not null, ignore "

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
