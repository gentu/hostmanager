.class public final Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HomeBGWallpaperResMessage;
.super Lcom/samsung/android/hostmanager/jsonmodel/ResponseMessage;
.source "HMJSONDataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HomeBGWallpaperResMessage"
.end annotation


# static fields
.field public static final WALLPAPER_DATA_ARRAY:Ljava/lang/String; = "wallpaperdataarray"

.field public static final WALLPAPER_NAME_ARRAY:Ljava/lang/String; = "wallpapernamearray"


# instance fields
.field private wallpaperDataArray:[Ljava/lang/String;

.field private wallpaperNameArray:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6336
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/jsonmodel/ResponseMessage;-><init>()V

    .line 6337
    sget-object v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->MGR_BG_WALLPAPER_IMG_REQ:Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HomeBGWallpaperResMessage;->msgId:Ljava/lang/String;

    .line 6338
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "fileName"    # [Ljava/lang/String;
    .param p2, "imageData"    # [Ljava/lang/String;
    .param p3, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 6340
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/jsonmodel/ResponseMessage;-><init>()V

    .line 6341
    sget-object v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->MGR_BG_WALLPAPER_IMG_REQ:Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HomeBGWallpaperResMessage;->msgId:Ljava/lang/String;

    .line 6342
    iput-object p1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HomeBGWallpaperResMessage;->wallpaperNameArray:[Ljava/lang/String;

    .line 6343
    iput-object p2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HomeBGWallpaperResMessage;->wallpaperDataArray:[Ljava/lang/String;

    .line 6344
    iput-object p3, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HomeBGWallpaperResMessage;->mDeviceId:Ljava/lang/String;

    .line 6345
    return-void
.end method


# virtual methods
.method public fromJSON(Ljava/lang/Object;)V
    .locals 8
    .param p1, "jsonObj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 6370
    new-instance v1, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "jsonObj":Ljava/lang/Object;
    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6371
    .local v1, "json":Lorg/json/JSONObject;
    const-string v6, "msgId"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HomeBGWallpaperResMessage;->msgId:Ljava/lang/String;

    .line 6373
    const-string v6, "wallpapernamearray"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 6374
    .local v4, "wallpaper_names":Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HomeBGWallpaperResMessage;->wallpaperNameArray:[Ljava/lang/String;

    .line 6375
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 6376
    .local v5, "wallpaper_names_count":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 6377
    iget-object v7, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HomeBGWallpaperResMessage;->wallpaperNameArray:[Ljava/lang/String;

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v7, v0

    .line 6376
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6380
    :cond_0
    const-string v6, "wallpaperdataarray"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 6381
    .local v2, "wallpaper_images":Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HomeBGWallpaperResMessage;->wallpaperDataArray:[Ljava/lang/String;

    .line 6382
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 6383
    .local v3, "wallpaper_images_count":I
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    .line 6384
    iget-object v7, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HomeBGWallpaperResMessage;->wallpaperDataArray:[Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v7, v0

    .line 6383
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6386
    :cond_1
    return-void
.end method

.method public getWallpaperDataArray()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 6393
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HomeBGWallpaperResMessage;->wallpaperDataArray:[Ljava/lang/String;

    return-object v0
.end method

.method public getWallpaperNameArray()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 6389
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HomeBGWallpaperResMessage;->wallpaperNameArray:[Ljava/lang/String;

    return-object v0
.end method

.method public toJSON()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 6349
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6350
    .local v0, "json":Lorg/json/JSONObject;
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 6351
    .local v3, "wallpaper_names":Lorg/json/JSONArray;
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 6353
    .local v2, "wallpaper_images":Lorg/json/JSONArray;
    iget-object v6, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HomeBGWallpaperResMessage;->wallpaperNameArray:[Ljava/lang/String;

    array-length v7, v6

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v1, v6, v5

    .line 6354
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 6353
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 6357
    .end local v1    # "s":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HomeBGWallpaperResMessage;->wallpaperDataArray:[Ljava/lang/String;

    array-length v6, v5

    :goto_1
    if-ge v4, v6, :cond_1

    aget-object v1, v5, v4

    .line 6358
    .restart local v1    # "s":Ljava/lang/String;
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 6357
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 6361
    .end local v1    # "s":Ljava/lang/String;
    :cond_1
    const-string v4, "msgId"

    iget-object v5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HomeBGWallpaperResMessage;->msgId:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6362
    const-string v4, "wallpapernamearray"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6363
    const-string v4, "wallpaperdataarray"

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6364
    const-string v4, "deviceid"

    iget-object v5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HomeBGWallpaperResMessage;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6365
    return-object v0
.end method
