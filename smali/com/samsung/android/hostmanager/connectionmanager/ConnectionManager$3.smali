.class Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager$3;
.super Ljava/lang/Thread;
.source "ConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .prologue
    .line 826
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager$3;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 828
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager$3;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->access$1000(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 829
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Copy log file failed!!!"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    :cond_0
    return-void
.end method
