.class public Lcom/samsung/accessory/safiletransfer/datamodel/OnMultipleErrorMessage;
.super Ljava/lang/Object;
.source "OnMultipleErrorMessage.java"


# instance fields
.field private mErrorCode:I

.field private mErrorMsg:Ljava/lang/String;

.field private mTransactionId:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnMultipleErrorMessage;->mTransactionId:[I

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnMultipleErrorMessage;->mErrorCode:I

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnMultipleErrorMessage;->mErrorMsg:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>([IILjava/lang/String;)V
    .locals 0
    .param p1, "id"    # [I
    .param p2, "code"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnMultipleErrorMessage;->mTransactionId:[I

    .line 21
    iput p2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnMultipleErrorMessage;->mErrorCode:I

    .line 22
    iput-object p3, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnMultipleErrorMessage;->mErrorMsg:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public fromJSON(Ljava/lang/Object;)V
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 50
    new-instance v1, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 51
    .local v1, "json":Lorg/json/JSONObject;
    const-string v3, "id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 52
    .local v2, "jsonArray":Lorg/json/JSONArray;
    const-string v3, "errorCode"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnMultipleErrorMessage;->mErrorCode:I

    .line 53
    const-string v3, "errorMsg"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnMultipleErrorMessage;->mErrorMsg:Ljava/lang/String;

    .line 54
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnMultipleErrorMessage;->mTransactionId:[I

    .line 55
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 58
    return-void

    .line 56
    :cond_0
    iget-object v3, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnMultipleErrorMessage;->mTransactionId:[I

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    aput v4, v3, v0

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnMultipleErrorMessage;->mErrorCode:I

    return v0
.end method

.method getErrorMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnMultipleErrorMessage;->mErrorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionId()[I
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnMultipleErrorMessage;->mTransactionId:[I

    return-object v0
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 38
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 39
    .local v1, "jsonMessage":Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 40
    .local v0, "jsonArray":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnMultipleErrorMessage;->mTransactionId:[I

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v5, :cond_0

    .line 43
    const-string v3, "id"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    const-string v3, "errorCode"

    iget v4, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnMultipleErrorMessage;->mErrorCode:I

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 45
    const-string v3, "errorMsg"

    iget-object v4, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnMultipleErrorMessage;->mErrorMsg:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    return-object v1

    .line 40
    :cond_0
    aget v2, v4, v3

    .line 41
    .local v2, "trans":I
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 40
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
