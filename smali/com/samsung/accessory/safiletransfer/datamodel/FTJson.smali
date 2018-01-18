.class public Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;
.super Ljava/lang/Object;
.source "FTJson.java"


# instance fields
.field private opCode:I

.field private params:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(ILorg/json/JSONObject;)V
    .locals 0
    .param p1, "opCode"    # I
    .param p2, "params"    # Lorg/json/JSONObject;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;->opCode:I

    .line 25
    iput-object p2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;->params:Lorg/json/JSONObject;

    .line 26
    return-void
.end method


# virtual methods
.method public fromJSON(Ljava/lang/String;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 37
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "OpCode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;->opCode:I

    .line 38
    const-string v1, "Parameters"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;->params:Lorg/json/JSONObject;

    .line 39
    return-void
.end method

.method public getOpCode()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;->opCode:I

    return v0
.end method

.method public getParams()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;->params:Lorg/json/JSONObject;

    return-object v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 29
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 30
    .local v0, "jsonMessage":Lorg/json/JSONObject;
    const-string v1, "OpCode"

    iget v2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;->opCode:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 31
    const-string v1, "Parameters"

    iget-object v2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;->params:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    return-object v0
.end method
