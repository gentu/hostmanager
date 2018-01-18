.class final Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;
.super Lcom/samsung/accessory/api/ISAServiceConnectionIndicationCallback$Stub;
.source "SAAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SAAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceConnectionIndicationCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/accessory/SAAdapter;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/accessory/SAAdapter;)V
    .locals 0

    .prologue
    .line 683
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-direct {p0}, Lcom/samsung/accessory/api/ISAServiceConnectionIndicationCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/accessory/SAAdapter;Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;)V
    .locals 0

    .prologue
    .line 683
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;-><init>(Lcom/samsung/android/sdk/accessory/SAAdapter;)V

    return-void
.end method


# virtual methods
.method public onServiceConnectionRequested(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "indication"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 686
    const/4 v1, 0x0

    .line 687
    .local v1, "initiatorAgent":Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    const-string v9, "peerAgent"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v8

    .line 688
    .local v8, "unmarshalledParcel":[B
    if-eqz v8, :cond_2

    .line 689
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 690
    .local v4, "parcel":Landroid/os/Parcel;
    if-eqz v4, :cond_1

    .line 691
    array-length v9, v8

    invoke-virtual {v4, v8, v10, v9}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 692
    invoke-virtual {v4, v10}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 693
    sget-object v9, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, v4}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "initiatorAgent":Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    check-cast v1, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .line 694
    .restart local v1    # "initiatorAgent":Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 704
    const-string v9, "transactionId"

    const-wide/16 v10, 0x0

    invoke-virtual {p1, v9, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 705
    .local v6, "transactionId":J
    const-string v9, "agentId"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 706
    .local v3, "localAgentId":Ljava/lang/String;
    const-string v9, "agentImplclass"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 707
    .local v0, "agentImplClass":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 708
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$1()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Implementation class not available in intent. Ignoring request"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    .end local v0    # "agentImplClass":Ljava/lang/String;
    .end local v3    # "localAgentId":Ljava/lang/String;
    .end local v4    # "parcel":Landroid/os/Parcel;
    .end local v6    # "transactionId":J
    :cond_0
    :goto_0
    return-void

    .line 696
    .restart local v4    # "parcel":Landroid/os/Parcel;
    :cond_1
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$1()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Failed to obtain parcel"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 700
    .end local v4    # "parcel":Landroid/os/Parcel;
    :cond_2
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$1()Ljava/lang/String;

    move-result-object v9

    const-string v10, "marshalled accessory byte[] is null!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 712
    .restart local v0    # "agentImplClass":Ljava/lang/String;
    .restart local v3    # "localAgentId":Ljava/lang/String;
    .restart local v4    # "parcel":Landroid/os/Parcel;
    .restart local v6    # "transactionId":J
    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-string v9, "com.samsung.accessory.action.SERVICE_CONNECTION_REQUESTED"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 713
    .local v2, "intent":Landroid/content/Intent;
    const-string v9, "transactionId"

    invoke-virtual {v2, v9, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 714
    const-string v9, "agentId"

    invoke-virtual {v2, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 715
    const-string v9, "peerAgent"

    invoke-virtual {v2, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 716
    iget-object v9, p0, Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-static {v9}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$4(Lcom/samsung/android/sdk/accessory/SAAdapter;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v2, v9, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 717
    iget-object v9, p0, Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-static {v9}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$4(Lcom/samsung/android/sdk/accessory/SAAdapter;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v5

    .line 718
    .local v5, "serviceAgent":Landroid/content/ComponentName;
    if-nez v5, :cond_0

    .line 719
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$1()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Agent "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 720
    const-string v11, " not found in recepient application. Check your Accessory Service XML for serviceImpl attribute"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 719
    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
