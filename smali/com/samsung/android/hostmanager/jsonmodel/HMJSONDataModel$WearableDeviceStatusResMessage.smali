.class public final Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableDeviceStatusResMessage;
.super Lcom/samsung/android/hostmanager/jsonmodel/ResponseMessage;
.source "HMJSONDataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WearableDeviceStatusResMessage"
.end annotation


# static fields
.field public static final BATTERY_LEVEL:Ljava/lang/String; = "battery_level"

.field public static final EXTERNAL_MEMORY_REMAIN:Ljava/lang/String; = "external_memory_remain"

.field public static final EXTERNAL_MEMORY_TOTAL:Ljava/lang/String; = "external_memory_total"

.field public static final MEMORY_REMAIN:Ljava/lang/String; = "memory_remain"

.field public static final MEMORY_TOTAL:Ljava/lang/String; = "memory_total"


# instance fields
.field public batteryLevel:Ljava/lang/String;

.field public externalMemoryRemain:Ljava/lang/String;

.field public externalMemoryTotal:Ljava/lang/String;

.field public memoryRemain:Ljava/lang/String;

.field public memoryTotal:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2107
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/jsonmodel/ResponseMessage;-><init>()V

    .line 2108
    sget-object v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->MGR_WEARABLE_AUTO_PAIRING_REQ:Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableDeviceStatusResMessage;->msgId:Ljava/lang/String;

    .line 2109
    return-void
.end method


# virtual methods
.method public fromJSON(Ljava/lang/Object;)V
    .locals 3
    .param p1, "jsonObj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 2149
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "jsonObj":Ljava/lang/Object;
    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2150
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "msgId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableDeviceStatusResMessage;->msgId:Ljava/lang/String;

    .line 2151
    const-string v2, "battery_level"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableDeviceStatusResMessage;->batteryLevel:Ljava/lang/String;

    .line 2152
    const-string v2, "memory_remain"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableDeviceStatusResMessage;->memoryRemain:Ljava/lang/String;

    .line 2153
    const-string v2, "memory_total"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableDeviceStatusResMessage;->memoryTotal:Ljava/lang/String;

    .line 2154
    const-string v2, "external_memory_remain"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableDeviceStatusResMessage;->externalMemoryRemain:Ljava/lang/String;

    .line 2155
    const-string v2, "external_memory_total"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableDeviceStatusResMessage;->externalMemoryTotal:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2159
    .end local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 2156
    :catch_0
    move-exception v0

    .line 2157
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getBatteryLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2112
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableDeviceStatusResMessage;->batteryLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalMemoryRemain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2124
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableDeviceStatusResMessage;->externalMemoryRemain:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalMemoryTotal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2128
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableDeviceStatusResMessage;->externalMemoryTotal:Ljava/lang/String;

    return-object v0
.end method

.method public getMemoryRemain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2116
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableDeviceStatusResMessage;->memoryRemain:Ljava/lang/String;

    return-object v0
.end method

.method public getMemoryTotal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2120
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableDeviceStatusResMessage;->memoryTotal:Ljava/lang/String;

    return-object v0
.end method

.method public toJSON()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 2134
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 2135
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "msgId"

    iget-object v3, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableDeviceStatusResMessage;->msgId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2136
    const-string v2, "battery_level"

    iget-object v3, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableDeviceStatusResMessage;->batteryLevel:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2137
    const-string v2, "memory_remain"

    iget-object v3, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableDeviceStatusResMessage;->memoryRemain:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2138
    const-string v2, "memory_total"

    iget-object v3, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableDeviceStatusResMessage;->memoryTotal:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2142
    .end local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 2140
    :catch_0
    move-exception v0

    .line 2141
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 2142
    const/4 v1, 0x0

    goto :goto_0
.end method
