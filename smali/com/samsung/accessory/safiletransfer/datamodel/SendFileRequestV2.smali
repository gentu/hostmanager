.class public Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;
.super Ljava/lang/Object;
.source "SendFileRequestV2.java"


# instance fields
.field private mAccessoryID:J

.field private mAgentClassName:Ljava/lang/String;

.field private mContainerID:Ljava/lang/String;

.field private mDestFilePath:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mFileSize:J

.field private mFileURI:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mPeerID:Ljava/lang/String;

.field private mSrcFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "dest"    # Ljava/lang/String;
    .param p3, "peerId"    # Ljava/lang/String;
    .param p4, "containerId"    # Ljava/lang/String;
    .param p5, "accId"    # J
    .param p7, "fileSize"    # J
    .param p9, "fileName"    # Ljava/lang/String;
    .param p10, "filePath"    # Ljava/lang/String;
    .param p11, "packageName"    # Ljava/lang/String;
    .param p12, "agentClassName"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mSrcFilePath:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mDestFilePath:Ljava/lang/String;

    .line 70
    iput-object p3, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mPeerID:Ljava/lang/String;

    .line 71
    iput-object p4, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mContainerID:Ljava/lang/String;

    .line 72
    iput-wide p5, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mAccessoryID:J

    .line 73
    iput-wide p7, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mFileSize:J

    .line 74
    iput-object p9, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mFileName:Ljava/lang/String;

    .line 75
    iput-object p10, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mFileURI:Ljava/lang/String;

    .line 77
    iput-object p11, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mPackageName:Ljava/lang/String;

    .line 78
    iput-object p12, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mAgentClassName:Ljava/lang/String;

    .line 79
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
    .line 99
    new-instance v0, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 101
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "SourcePath"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mSrcFilePath:Ljava/lang/String;

    .line 102
    const-string v1, "DestinationPath"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mDestFilePath:Ljava/lang/String;

    .line 103
    const-string v1, "PeerId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mPeerID:Ljava/lang/String;

    .line 104
    const-string v1, "ContainerId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mContainerID:Ljava/lang/String;

    .line 105
    const-string v1, "AccessoryId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mAccessoryID:J

    .line 106
    const-string v1, "FileSize"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mFileSize:J

    .line 107
    const-string v1, "FileName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mFileName:Ljava/lang/String;

    .line 108
    const-string v1, "FileURI"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mFileURI:Ljava/lang/String;

    .line 110
    const-string v1, "PackageName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 111
    const-string v1, "PackageName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mPackageName:Ljava/lang/String;

    .line 112
    const-string v1, "AgentClassName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mAgentClassName:Ljava/lang/String;

    .line 114
    :cond_0
    return-void
.end method

.method public getAccessoryID()J
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mAccessoryID:J

    return-wide v0
.end method

.method public getAgentClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mAgentClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getContainerID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mContainerID:Ljava/lang/String;

    return-object v0
.end method

.method public getDestFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mDestFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mFileSize:J

    return-wide v0
.end method

.method public getFileURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mFileURI:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPeerID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mPeerID:Ljava/lang/String;

    return-object v0
.end method

.method public getSrcFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mSrcFilePath:Ljava/lang/String;

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
    .line 82
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 83
    .local v0, "jsonMessage":Lorg/json/JSONObject;
    const-string v1, "SourcePath"

    iget-object v2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mSrcFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    const-string v1, "DestinationPath"

    iget-object v2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mDestFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    const-string v1, "PeerId"

    iget-object v2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mPeerID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    const-string v1, "ContainerId"

    iget-object v2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mContainerID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    const-string v1, "AccessoryId"

    iget-wide v2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mAccessoryID:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 88
    const-string v1, "FileSize"

    iget-wide v2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mFileSize:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 89
    const-string v1, "FileName"

    iget-object v2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    const-string v1, "FileURI"

    iget-object v2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mFileURI:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    const-string v1, "PackageName"

    iget-object v2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    const-string v1, "AgentClassName"

    iget-object v2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mAgentClassName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    return-object v0
.end method
