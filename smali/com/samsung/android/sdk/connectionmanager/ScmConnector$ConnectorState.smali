.class final enum Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorState;
.super Ljava/lang/Enum;
.source "ScmConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/connectionmanager/ScmConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ConnectorState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorState;

.field public static final enum SERVICE_CONNECTED:Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorState;

.field public static final enum SERVICE_DISCONNECTED:Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 165
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorState;

    const-string v1, "SERVICE_CONNECTED"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorState;->SERVICE_CONNECTED:Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorState;

    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorState;

    const-string v1, "SERVICE_DISCONNECTED"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorState;->SERVICE_DISCONNECTED:Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorState;

    .line 164
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorState;

    sget-object v1, Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorState;->SERVICE_CONNECTED:Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorState;->SERVICE_DISCONNECTED:Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorState;->$VALUES:[Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 164
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 164
    const-class v0, Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorState;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorState;
    .locals 1

    .prologue
    .line 164
    sget-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorState;->$VALUES:[Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorState;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorState;

    return-object v0
.end method
