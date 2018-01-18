.class Lcom/samsung/android/hostmanager/service/HostManager$9;
.super Ljava/lang/Thread;
.source "HostManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/service/HostManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/service/HostManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/service/HostManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/service/HostManager;

    .prologue
    .line 3120
    iput-object p1, p0, Lcom/samsung/android/hostmanager/service/HostManager$9;->this$0:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3123
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HostManager$9;->this$0:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->access$1000(Lcom/samsung/android/hostmanager/service/HostManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3124
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Copy log file failed!!!"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 3126
    :cond_0
    return-void
.end method
