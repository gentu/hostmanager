.class synthetic Lcom/samsung/android/sdk/connectionmanager/ScmConnector$2;
.super Ljava/lang/Object;
.source "ScmConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/connectionmanager/ScmConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$samsung$android$sdk$connectionmanager$ScmConnector$ConnectorState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 96
    invoke-static {}, Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorState;->values()[Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmConnector$2;->$SwitchMap$com$samsung$android$sdk$connectionmanager$ScmConnector$ConnectorState:[I

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmConnector$2;->$SwitchMap$com$samsung$android$sdk$connectionmanager$ScmConnector$ConnectorState:[I

    sget-object v1, Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorState;->SERVICE_CONNECTED:Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorState;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmConnector$2;->$SwitchMap$com$samsung$android$sdk$connectionmanager$ScmConnector$ConnectorState:[I

    sget-object v1, Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorState;->SERVICE_DISCONNECTED:Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorState;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
