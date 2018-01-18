.class public Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;
.super Ljava/lang/Object;
.source "SendFileRequest.java"


# instance fields
.field private mAccessoryID:J

.field private mAgentClassName:Ljava/lang/String;

.field private mContainerID:Ljava/lang/String;

.field private mDestFilePath:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mPeerID:Ljava/lang/String;

.field private mSrcFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "dest"    # Ljava/lang/String;
    .param p3, "peerId"    # Ljava/lang/String;
    .param p4, "containerId"    # Ljava/lang/String;
    .param p5, "accId"    # J
    .param p7, "packageName"    # Ljava/lang/String;
    .param p8, "agentClassName"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mSrcFilePath:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mDestFilePath:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mPeerID:Ljava/lang/String;

    .line 55
    iput-object p4, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mContainerID:Ljava/lang/String;

    .line 56
    iput-wide p5, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mAccessoryID:J

    .line 58
    iput-object p7, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mPackageName:Ljava/lang/String;

    .line 59
    iput-object p8, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mAgentClassName:Ljava/lang/String;

    .line 60
    return-void
.end method


# virtual methods
.method public fromJSON(Ljava/lang/Object;)V
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 78
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "SourcePath"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mSrcFilePath:Ljava/lang/String;

    .line 79
    const-string v1, "DestinationPath"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mDestFilePath:Ljava/lang/String;

    .line 80
    const-string v1, "PeerId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mPeerID:Ljava/lang/String;

    .line 81
    const-string v1, "ContainerId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mContainerID:Ljava/lang/String;

    .line 82
    const-string v1, "AccessoryId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mAccessoryID:J

    .line 84
    const-string v1, "PackageName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 85
    const-string v1, "PackageName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mPackageName:Ljava/lang/String;

    .line 86
    const-string v1, "AgentClassName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mAgentClassName:Ljava/lang/String;

    .line 88
    :cond_0
    return-void
.end method

.method public getAccessoryID()J
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mAccessoryID:J

    return-wide v0
.end method

.method public getAgentClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mAgentClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getContainerID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mContainerID:Ljava/lang/String;

    return-object v0
.end method

.method public getDestFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mDestFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPeerID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mPeerID:Ljava/lang/String;

    return-object v0
.end method

.method public getSrcFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mSrcFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 64
    .local v0, "jsonMessage":Lorg/json/JSONObject;
    const-string v1, "SourcePath"

    iget-object v2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mSrcFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    const-string v1, "DestinationPath"

    iget-object v2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mDestFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    const-string v1, "PeerId"

    iget-object v2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mPeerID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    const-string v1, "ContainerId"

    iget-object v2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mContainerID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    const-string v1, "AccessoryId"

    iget-wide v2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mAccessoryID:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 70
    const-string v1, "PackageName"

    iget-object v2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    const-string v1, "AgentClassName"

    iget-object v2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mAgentClassName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    return-object v0
.end method
