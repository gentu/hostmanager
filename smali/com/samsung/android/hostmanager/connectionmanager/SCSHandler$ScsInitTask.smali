.class Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler$ScsInitTask;
.super Ljava/lang/Object;
.source "SCSHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScsInitTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler$ScsInitTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 243
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScsInitTask start initilize task"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler$ScsInitTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->access$300(Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;)Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler$ScsInitTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->initialize()V

    .line 251
    :goto_0
    return-void

    .line 249
    :cond_0
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, " ScsInitTask : mAccessoryManager is not null, ignore "

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
