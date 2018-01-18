.class public Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJsonV2;
.super Ljava/lang/Object;
.source "ReceiveFileJsonV2.java"


# instance fields
.field private mAccept:Z

.field private mFileURI:Ljava/lang/String;

.field private mId:I

.field private mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "uri"    # Ljava/lang/String;
    .param p4, "accept"    # Z

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJsonV2;->mId:I

    .line 35
    iput-object p2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJsonV2;->mPath:Ljava/lang/String;

    .line 36
    iput-boolean p4, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJsonV2;->mAccept:Z

    .line 37
    iput-object p3, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJsonV2;->mFileURI:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public fromJSON(Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJsonV2;->mId:I

    .line 52
    const-string v1, "path"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJsonV2;->mPath:Ljava/lang/String;

    .line 53
    const-string v1, "fileuri"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJsonV2;->mFileURI:Ljava/lang/String;

    .line 54
    const-string v1, "accepted"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJsonV2;->mAccept:Z

    .line 55
    return-void
.end method

.method public getFileUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJsonV2;->mFileURI:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 9
    iget v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJsonV2;->mId:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJsonV2;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public isAccept()Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJsonV2;->mAccept:Z

    return v0
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 42
    .local v0, "jsonMessage":Lorg/json/JSONObject;
    const-string v1, "id"

    iget v2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJsonV2;->mId:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 43
    const-string v1, "path"

    iget-object v2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJsonV2;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    const-string v1, "fileuri"

    iget-object v2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJsonV2;->mFileURI:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    const-string v1, "accepted"

    iget-boolean v2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJsonV2;->mAccept:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 46
    return-object v0
.end method
