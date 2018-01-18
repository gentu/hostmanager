.class public Lcom/samsung/accessory/safiletransfer/datamodel/CancelFileRequest;
.super Ljava/lang/Object;
.source "CancelFileRequest.java"


# instance fields
.field private mTransactionId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "transId"    # I

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/CancelFileRequest;->mTransactionId:I

    .line 16
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
    .line 29
    new-instance v0, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 30
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "TransactionId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/CancelFileRequest;->mTransactionId:I

    .line 31
    return-void
.end method

.method public getTransactionId()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/CancelFileRequest;->mTransactionId:I

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
    .line 23
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 24
    .local v0, "jsonMessage":Lorg/json/JSONObject;
    const-string v1, "TransactionId"

    iget v2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/CancelFileRequest;->mTransactionId:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 25
    return-object v0
.end method
