.class public Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJson;
.super Ljava/lang/Object;
.source "ReceiveFileJson.java"


# instance fields
.field private mAccept:Z

.field private mId:I

.field private mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "accept"    # Z

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJson;->mId:I

    .line 30
    iput-object p2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJson;->mPath:Ljava/lang/String;

    .line 31
    iput-boolean p3, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJson;->mAccept:Z

    .line 32
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
    .line 43
    new-instance v0, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 44
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJson;->mId:I

    .line 45
    const-string v1, "path"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJson;->mPath:Ljava/lang/String;

    .line 46
    const-string v1, "accepted"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJson;->mAccept:Z

    .line 47
    return-void
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 9
    iget v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJson;->mId:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJson;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public isAccept()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJson;->mAccept:Z

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
    .line 35
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 36
    .local v0, "jsonMessage":Lorg/json/JSONObject;
    const-string v1, "id"

    iget v2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJson;->mId:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 37
    const-string v1, "path"

    iget-object v2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJson;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    const-string v1, "accepted"

    iget-boolean v2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJson;->mAccept:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 39
    return-object v0
.end method
