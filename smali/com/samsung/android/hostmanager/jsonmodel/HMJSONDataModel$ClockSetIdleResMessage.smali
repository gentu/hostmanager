.class public final Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ClockSetIdleResMessage;
.super Lcom/samsung/android/hostmanager/jsonmodel/ResponseMessage;
.source "HMJSONDataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClockSetIdleResMessage"
.end annotation


# static fields
.field public static final CLOCK_PKG_NAME:Ljava/lang/String; = "pkgName"


# instance fields
.field public clockPkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 1614
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/jsonmodel/ResponseMessage;-><init>()V

    .line 1615
    sget-object v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->MGR_CLOCKS_SET_IDLE_RES:Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ClockSetIdleResMessage;->msgId:Ljava/lang/String;

    .line 1616
    iput-object p1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ClockSetIdleResMessage;->mDeviceId:Ljava/lang/String;

    .line 1617
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "clockPkgName"    # Ljava/lang/String;
    .param p2, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 1619
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/jsonmodel/ResponseMessage;-><init>()V

    .line 1620
    sget-object v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->MGR_CLOCKS_SET_IDLE_RES:Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ClockSetIdleResMessage;->msgId:Ljava/lang/String;

    .line 1621
    iput-object p1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ClockSetIdleResMessage;->clockPkgName:Ljava/lang/String;

    .line 1622
    iput-object p2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ClockSetIdleResMessage;->mDeviceId:Ljava/lang/String;

    .line 1623
    return-void
.end method


# virtual methods
.method public fromJSON(Ljava/lang/Object;)V
    .locals 2
    .param p1, "jsonObj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1640
    new-instance v0, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "jsonObj":Ljava/lang/Object;
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1641
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "msgId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ClockSetIdleResMessage;->msgId:Ljava/lang/String;

    .line 1642
    const-string v1, "pkgName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ClockSetIdleResMessage;->clockPkgName:Ljava/lang/String;

    .line 1643
    return-void
.end method

.method public getClockPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1626
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ClockSetIdleResMessage;->clockPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public toJSON()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1631
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1632
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "msgId"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ClockSetIdleResMessage;->msgId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1633
    const-string v1, "pkgName"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ClockSetIdleResMessage;->clockPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1634
    const-string v1, "deviceid"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ClockSetIdleResMessage;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1635
    return-object v0
.end method
