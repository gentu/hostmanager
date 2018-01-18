.class public Lcom/samsung/accessory/safiletransfer/datamodel/OnTransferProgressMsg;
.super Ljava/lang/Object;
.source "OnTransferProgressMsg.java"


# instance fields
.field private mProgress:J

.field private mTransactionId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnTransferProgressMsg;->mTransactionId:I

    .line 13
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnTransferProgressMsg;->mProgress:J

    .line 14
    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "progress"    # J

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnTransferProgressMsg;->mTransactionId:I

    .line 18
    iput-wide p2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnTransferProgressMsg;->mProgress:J

    .line 19
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
    .line 37
    new-instance v0, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 38
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnTransferProgressMsg;->mTransactionId:I

    .line 39
    const-string v1, "progress"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnTransferProgressMsg;->mProgress:J

    .line 40
    return-void
.end method

.method public getProgress()J
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnTransferProgressMsg;->mProgress:J

    return-wide v0
.end method

.method public getTransactionId()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnTransferProgressMsg;->mTransactionId:I

    return v0
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 30
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 31
    .local v0, "jsonMessage":Lorg/json/JSONObject;
    const-string v1, "id"

    iget v2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnTransferProgressMsg;->mTransactionId:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 32
    const-string v1, "progress"

    iget-wide v2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnTransferProgressMsg;->mProgress:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 33
    return-object v0
.end method
