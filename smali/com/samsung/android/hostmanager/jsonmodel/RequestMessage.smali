.class abstract Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;
.super Ljava/lang/Object;
.source "RequestMessage.java"


# static fields
.field public static final DEVICE_ID:Ljava/lang/String; = "deviceid"

.field public static final MSG_ID:Ljava/lang/String; = "msgId"


# instance fields
.field protected mDeviceId:Ljava/lang/String;

.field protected msgId:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract fromJSON(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;->msgId:Ljava/lang/String;

    return-object v0
.end method

.method public abstract toJSON()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method
