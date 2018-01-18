.class public final Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$privacyPolicyDataToGearRequestMessage;
.super Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;
.source "HMJSONDataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "privacyPolicyDataToGearRequestMessage"
.end annotation


# static fields
.field public static final ERROR_LOG:Ljava/lang/String; = "ErrorLog"

.field public static final FMDANDFMG:Ljava/lang/String; = "FMD&FMG"

.field public static final NEWS_BRIEFING:Ljava/lang/String; = "NewsBriefing"

.field public static final SIP:Ljava/lang/String; = "SIP"

.field public static final S_VOICE:Ljava/lang/String; = "S-Voice"


# instance fields
.field public inData:Ljava/lang/String;

.field public mErrorLog:Z

.field public mFmdAndFmg:Z

.field public mNewsBriefing:Z

.field public mSip:Z

.field public mSvoice:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceID"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 7492
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;-><init>()V

    .line 7481
    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$privacyPolicyDataToGearRequestMessage;->mSvoice:Z

    .line 7483
    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$privacyPolicyDataToGearRequestMessage;->mFmdAndFmg:Z

    .line 7485
    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$privacyPolicyDataToGearRequestMessage;->mSip:Z

    .line 7487
    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$privacyPolicyDataToGearRequestMessage;->mErrorLog:Z

    .line 7489
    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$privacyPolicyDataToGearRequestMessage;->mNewsBriefing:Z

    .line 7490
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$privacyPolicyDataToGearRequestMessage;->inData:Ljava/lang/String;

    .line 7493
    sget-object v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->MGR_APP_USER_AGREEMENT_REQ:Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$privacyPolicyDataToGearRequestMessage;->msgId:Ljava/lang/String;

    .line 7494
    iput-object p1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$privacyPolicyDataToGearRequestMessage;->mDeviceId:Ljava/lang/String;

    .line 7495
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "deviceID"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x31

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 7497
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;-><init>()V

    .line 7481
    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$privacyPolicyDataToGearRequestMessage;->mSvoice:Z

    .line 7483
    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$privacyPolicyDataToGearRequestMessage;->mFmdAndFmg:Z

    .line 7485
    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$privacyPolicyDataToGearRequestMessage;->mSip:Z

    .line 7487
    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$privacyPolicyDataToGearRequestMessage;->mErrorLog:Z

    .line 7489
    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$privacyPolicyDataToGearRequestMessage;->mNewsBriefing:Z

    .line 7490
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$privacyPolicyDataToGearRequestMessage;->inData:Ljava/lang/String;

    .line 7498
    iput-object p1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$privacyPolicyDataToGearRequestMessage;->inData:Ljava/lang/String;

    .line 7499
    sget-object v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->MGR_APP_USER_AGREEMENT_REQ:Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$privacyPolicyDataToGearRequestMessage;->msgId:Ljava/lang/String;

    .line 7500
    iput-object p2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$privacyPolicyDataToGearRequestMessage;->mDeviceId:Ljava/lang/String;

    .line 7501
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_0

    .line 7502
    iput-boolean v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$privacyPolicyDataToGearRequestMessage;->mSvoice:Z

    .line 7504
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_1

    .line 7505
    iput-boolean v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$privacyPolicyDataToGearRequestMessage;->mFmdAndFmg:Z

    .line 7507
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_2

    .line 7508
    iput-boolean v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$privacyPolicyDataToGearRequestMessage;->mSip:Z

    .line 7510
    :cond_2
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_3

    .line 7511
    iput-boolean v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$privacyPolicyDataToGearRequestMessage;->mErrorLog:Z

    .line 7513
    :cond_3
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_4

    .line 7514
    iput-boolean v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$privacyPolicyDataToGearRequestMessage;->mNewsBriefing:Z

    .line 7516
    :cond_4
    return-void
.end method


# virtual methods
.method public fromJSON(Ljava/lang/Object;)V
    .locals 6
    .param p1, "jsonObj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 7542
    new-instance v1, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "jsonObj":Ljava/lang/Object;
    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 7543
    .local v1, "json":Lorg/json/JSONObject;
    const-string v3, "msgId"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$privacyPolicyDataToGearRequestMessage;->msgId:Ljava/lang/String;

    .line 7544
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 7545
    .local v0, "iter":Ljava/util/Iterator;
    const/4 v2, 0x0

    .line 7546
    .local v2, "key":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7547
    sget-object v3, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inside While privacyPolicyDataToGearRequestMessage value of iter:: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7548
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "key":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 7560
    .restart local v2    # "key":Ljava/lang/String;
    const-string v3, "FMD&FMG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7561
    const-string v3, "FMD&FMG"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$privacyPolicyDataToGearRequestMessage;->mFmdAndFmg:Z

    goto :goto_0

    .line 7565
    :cond_1
    return-void
.end method

.method public bridge synthetic getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7478
    invoke-super {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMsgId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7478
    invoke-super {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;->getMsgId()Ljava/lang/String;

    move-result-object v0

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
    const/16 v3, 0x32

    .line 7520
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 7521
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "msgId"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$privacyPolicyDataToGearRequestMessage;->msgId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7523
    iget-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$privacyPolicyDataToGearRequestMessage;->inData:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$privacyPolicyDataToGearRequestMessage;->inData:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$privacyPolicyDataToGearRequestMessage;->inData:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    .line 7524
    const-string v1, "FMD&FMG"

    iget-boolean v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$privacyPolicyDataToGearRequestMessage;->mFmdAndFmg:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 7535
    :cond_0
    :goto_0
    const-string v1, "deviceid"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$privacyPolicyDataToGearRequestMessage;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7537
    return-object v0

    .line 7526
    :cond_1
    const-string v1, "S-Voice"

    iget-boolean v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$privacyPolicyDataToGearRequestMessage;->mSvoice:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 7527
    const-string v1, "FMD&FMG"

    iget-boolean v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$privacyPolicyDataToGearRequestMessage;->mFmdAndFmg:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 7528
    const-string v1, "SIP"

    iget-boolean v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$privacyPolicyDataToGearRequestMessage;->mSip:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 7529
    const-string v1, "ErrorLog"

    iget-boolean v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$privacyPolicyDataToGearRequestMessage;->mErrorLog:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 7531
    iget-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$privacyPolicyDataToGearRequestMessage;->inData:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v3, :cond_0

    .line 7532
    const-string v1, "NewsBriefing"

    iget-boolean v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$privacyPolicyDataToGearRequestMessage;->mNewsBriefing:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_0
.end method
