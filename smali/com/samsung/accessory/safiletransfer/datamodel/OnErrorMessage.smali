.class public Lcom/samsung/accessory/safiletransfer/datamodel/OnErrorMessage;
.super Ljava/lang/Object;
.source "OnErrorMessage.java"


# instance fields
.field private mErrorCode:I

.field private mErrorMsg:Ljava/lang/String;

.field private mTransactionId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnErrorMessage;->mTransactionId:I

    .line 14
    iput v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnErrorMessage;->mErrorCode:I

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnErrorMessage;->mErrorMsg:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "code"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnErrorMessage;->mTransactionId:I

    .line 20
    iput p2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnErrorMessage;->mErrorCode:I

    .line 21
    iput-object p3, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnErrorMessage;->mErrorMsg:Ljava/lang/String;

    .line 22
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
    .line 45
    new-instance v0, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 46
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnErrorMessage;->mTransactionId:I

    .line 47
    const-string v1, "errorCode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnErrorMessage;->mErrorCode:I

    .line 48
    const-string v1, "errorMsg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnErrorMessage;->mErrorMsg:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnErrorMessage;->mErrorCode:I

    return v0
.end method

.method getErrorMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnErrorMessage;->mErrorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionId()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnErrorMessage;->mTransactionId:I

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
    .line 37
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 38
    .local v0, "jsonMessage":Lorg/json/JSONObject;
    const-string v1, "id"

    iget v2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnErrorMessage;->mTransactionId:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 39
    const-string v1, "errorCode"

    iget v2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnErrorMessage;->mErrorCode:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 40
    const-string v1, "errorMsg"

    iget-object v2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnErrorMessage;->mErrorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    return-object v0
.end method
