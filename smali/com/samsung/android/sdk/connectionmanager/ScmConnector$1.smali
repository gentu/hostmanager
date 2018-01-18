.class final Lcom/samsung/android/sdk/connectionmanager/ScmConnector$1;
.super Ljava/lang/Object;
.source "ScmConnector.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/connectionmanager/ScmConnector;->createController(Landroid/content/Context;Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private mListener:Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorListener;

.field private mServiceProvider:Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;

.field final synthetic val$connector:Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorListener;Landroid/content/Context;Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;)V
    .locals 3

    .prologue
    .line 83
    iput-object p1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmConnector$1;->val$listener:Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorListener;

    iput-object p2, p0, Lcom/samsung/android/sdk/connectionmanager/ScmConnector$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/sdk/connectionmanager/ScmConnector$1;->val$connector:Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iget-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmConnector$1;->val$listener:Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmConnector$1;->mListener:Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorListener;

    .line 86
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;

    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmConnector$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/sdk/connectionmanager/ScmConnector$1;->val$connector:Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/connectionmanager/IConnector;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmConnector$1;->mServiceProvider:Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 91
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorState;

    if-nez v1, :cond_1

    .line 92
    :cond_0
    const/4 v1, 0x0

    .line 119
    :goto_0
    return v1

    .line 94
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorState;

    .line 96
    .local v0, "state":Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorState;
    sget-object v1, Lcom/samsung/android/sdk/connectionmanager/ScmConnector$2;->$SwitchMap$com$samsung$android$sdk$connectionmanager$ScmConnector$ConnectorState:[I

    invoke-virtual {v0}, Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 119
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 100
    :pswitch_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmConnector$1;->mListener:Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorListener;

    iget-object v2, p0, Lcom/samsung/android/sdk/connectionmanager/ScmConnector$1;->mServiceProvider:Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;

    invoke-interface {v1, v2}, Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorListener;->onCreated(Lcom/samsung/android/sdk/connectionmanager/ScmController;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_1

    .line 101
    :catch_0
    move-exception v1

    goto :goto_1

    .line 111
    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmConnector$1;->mListener:Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorListener;

    iget-object v2, p0, Lcom/samsung/android/sdk/connectionmanager/ScmConnector$1;->mServiceProvider:Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;

    invoke-interface {v1, v2}, Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorListener;->onDeleted(Lcom/samsung/android/sdk/connectionmanager/ScmController;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 112
    :catch_1
    move-exception v1

    goto :goto_1

    .line 114
    :catch_2
    move-exception v1

    goto :goto_1

    .line 103
    :catch_3
    move-exception v1

    goto :goto_1

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
