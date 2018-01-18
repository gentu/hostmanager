.class Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$SyncCommandInvoker;
.super Ljava/lang/Object;
.source "ScmControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncCommandInvoker"
.end annotation


# instance fields
.field private mMessage:Lcom/sec/android/api/iface/CVMessage;

.field final synthetic this$0:Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;)V
    .locals 1

    .prologue
    .line 1065
    iput-object p1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$SyncCommandInvoker;->this$0:Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1063
    new-instance v0, Lcom/sec/android/api/iface/CVMessage;

    invoke-direct {v0}, Lcom/sec/android/api/iface/CVMessage;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$SyncCommandInvoker;->mMessage:Lcom/sec/android/api/iface/CVMessage;

    .line 1066
    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;I)V
    .locals 1
    .param p2, "cmd"    # I

    .prologue
    .line 1068
    iput-object p1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$SyncCommandInvoker;->this$0:Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1063
    new-instance v0, Lcom/sec/android/api/iface/CVMessage;

    invoke-direct {v0}, Lcom/sec/android/api/iface/CVMessage;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$SyncCommandInvoker;->mMessage:Lcom/sec/android/api/iface/CVMessage;

    .line 1069
    iget-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$SyncCommandInvoker;->mMessage:Lcom/sec/android/api/iface/CVMessage;

    invoke-virtual {v0, p2}, Lcom/sec/android/api/iface/CVMessage;->setCmdID(I)V

    .line 1070
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;ILcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$1;

    .prologue
    .line 1062
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$SyncCommandInvoker;-><init>(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;I)V

    return-void
.end method


# virtual methods
.method invoke()Landroid/os/Bundle;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1092
    iget-object v2, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$SyncCommandInvoker;->this$0:Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;

    invoke-static {v2}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->access$400(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;)Lcom/samsung/android/sdk/connectionmanager/IConnector;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$SyncCommandInvoker;->this$0:Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;

    invoke-static {v2}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->access$400(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;)Lcom/samsung/android/sdk/connectionmanager/IConnector;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/sdk/connectionmanager/IConnector;->isServiceConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1102
    :cond_0
    :goto_0
    return-object v1

    .line 1096
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$SyncCommandInvoker;->this$0:Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;

    invoke-static {v2}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->access$400(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;)Lcom/samsung/android/sdk/connectionmanager/IConnector;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$SyncCommandInvoker;->mMessage:Lcom/sec/android/api/iface/CVMessage;

    invoke-interface {v2, v3}, Lcom/samsung/android/sdk/connectionmanager/IConnector;->requestSync(Lcom/sec/android/api/iface/CVMessage;)Lcom/sec/android/api/iface/CVMessage;

    move-result-object v0

    .line 1098
    .local v0, "resMsg":Lcom/sec/android/api/iface/CVMessage;
    if-eqz v0, :cond_0

    .line 1102
    invoke-virtual {v0}, Lcom/sec/android/api/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0
.end method

.method putBoolean(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$SyncCommandInvoker;->mMessage:Lcom/sec/android/api/iface/CVMessage;

    invoke-virtual {v0}, Lcom/sec/android/api/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1082
    return-void
.end method

.method putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/Parcelable;

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$SyncCommandInvoker;->mMessage:Lcom/sec/android/api/iface/CVMessage;

    invoke-virtual {v0}, Lcom/sec/android/api/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1074
    return-void
.end method

.method putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$SyncCommandInvoker;->mMessage:Lcom/sec/android/api/iface/CVMessage;

    invoke-virtual {v0}, Lcom/sec/android/api/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    return-void
.end method
