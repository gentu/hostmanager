.class Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;
.super Ljava/lang/Object;
.source "ScmControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncCommandInvoker"
.end annotation


# instance fields
.field private handler:Lcom/samsung/android/sdk/connectionmanager/ResponseHandler;

.field private mMessage:Lcom/sec/android/api/iface/CVMessage;

.field final synthetic this$0:Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;)V
    .locals 1

    .prologue
    .line 1029
    iput-object p1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;->this$0:Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1025
    new-instance v0, Lcom/sec/android/api/iface/CVMessage;

    invoke-direct {v0}, Lcom/sec/android/api/iface/CVMessage;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;->mMessage:Lcom/sec/android/api/iface/CVMessage;

    .line 1027
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;->handler:Lcom/samsung/android/sdk/connectionmanager/ResponseHandler;

    .line 1030
    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;ILcom/samsung/android/sdk/connectionmanager/ResponseHandler;)V
    .locals 1
    .param p2, "cmd"    # I
    .param p3, "handler"    # Lcom/samsung/android/sdk/connectionmanager/ResponseHandler;

    .prologue
    .line 1032
    iput-object p1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;->this$0:Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1025
    new-instance v0, Lcom/sec/android/api/iface/CVMessage;

    invoke-direct {v0}, Lcom/sec/android/api/iface/CVMessage;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;->mMessage:Lcom/sec/android/api/iface/CVMessage;

    .line 1027
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;->handler:Lcom/samsung/android/sdk/connectionmanager/ResponseHandler;

    .line 1033
    iget-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;->mMessage:Lcom/sec/android/api/iface/CVMessage;

    invoke-virtual {v0, p2}, Lcom/sec/android/api/iface/CVMessage;->setCmdID(I)V

    .line 1034
    iput-object p3, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;->handler:Lcom/samsung/android/sdk/connectionmanager/ResponseHandler;

    .line 1035
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;ILcom/samsung/android/sdk/connectionmanager/ResponseHandler;Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/samsung/android/sdk/connectionmanager/ResponseHandler;
    .param p4, "x3"    # Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$1;

    .prologue
    .line 1024
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;-><init>(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;ILcom/samsung/android/sdk/connectionmanager/ResponseHandler;)V

    return-void
.end method


# virtual methods
.method invoke()J
    .locals 3

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;->this$0:Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;

    invoke-static {v0}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->access$400(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;)Lcom/samsung/android/sdk/connectionmanager/IConnector;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;->this$0:Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;

    invoke-static {v0}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->access$400(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;)Lcom/samsung/android/sdk/connectionmanager/IConnector;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sdk/connectionmanager/IConnector;->isServiceConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1055
    :cond_0
    const-wide/16 v0, -0x1

    .line 1058
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;->this$0:Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;

    invoke-static {v0}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->access$400(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;)Lcom/samsung/android/sdk/connectionmanager/IConnector;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;->mMessage:Lcom/sec/android/api/iface/CVMessage;

    iget-object v2, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;->handler:Lcom/samsung/android/sdk/connectionmanager/ResponseHandler;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/sdk/connectionmanager/IConnector;->requestAsync(Lcom/sec/android/api/iface/CVMessage;Lcom/samsung/android/sdk/connectionmanager/ResponseHandler;)J

    move-result-wide v0

    goto :goto_0
.end method

.method putBoolean(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;->mMessage:Lcom/sec/android/api/iface/CVMessage;

    invoke-virtual {v0}, Lcom/sec/android/api/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1047
    return-void
.end method

.method putInt(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;->mMessage:Lcom/sec/android/api/iface/CVMessage;

    invoke-virtual {v0}, Lcom/sec/android/api/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1051
    return-void
.end method

.method putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/Parcelable;

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;->mMessage:Lcom/sec/android/api/iface/CVMessage;

    invoke-virtual {v0}, Lcom/sec/android/api/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1039
    return-void
.end method

.method putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$AsyncCommandInvoker;->mMessage:Lcom/sec/android/api/iface/CVMessage;

    invoke-virtual {v0}, Lcom/sec/android/api/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    return-void
.end method
