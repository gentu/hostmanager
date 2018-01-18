.class public abstract Lcom/samsung/android/sdk/accessorymanager/AccessoryStateChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AccessoryStateChangedReceiver.java"


# static fields
.field private static final ACTION_ACCESSORY_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "com.samsung.accessory.device.action.ACCESSORY_CONNECTION_STATE_CHANGED"

.field private static final DEFAULT_ERROR_STATE:I = -0x1

.field private static final EXTRA_ACCESSORY:Ljava/lang/String; = "accessory"

.field private static final EXTRA_DEVICE_STATE:Ljava/lang/String; = "deviceState"

.field private static final STATE_CHANGE_INTENT:Ljava/lang/String; = "android.accessory.device.action.STATE_CHANGED"

.field private static final TAG:Ljava/lang/String; = "SAIntentReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, -0x1

    .line 27
    const-string v5, "android.accessory.device.action.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 28
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 29
    .local v1, "b":Landroid/os/Bundle;
    const/4 v0, 0x0

    .line 30
    .local v0, "accessory":Lcom/samsung/android/sdk/accessorymanager/SamDevice;
    const-string v5, "accessory"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 31
    .local v4, "unmarshalledParcel":[B
    if-nez v4, :cond_1

    .line 32
    const-string v5, "SAIntentReceiver"

    const-string v6, "Parcel cannot be unmarshalled"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .end local v0    # "accessory":Lcom/samsung/android/sdk/accessorymanager/SamDevice;
    .end local v1    # "b":Landroid/os/Bundle;
    .end local v4    # "unmarshalledParcel":[B
    :cond_0
    :goto_0
    return-void

    .line 35
    .restart local v0    # "accessory":Lcom/samsung/android/sdk/accessorymanager/SamDevice;
    .restart local v1    # "b":Landroid/os/Bundle;
    .restart local v4    # "unmarshalledParcel":[B
    :cond_1
    const/4 v2, 0x0

    .line 37
    .local v2, "parcel":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 38
    if-eqz v2, :cond_2

    .line 39
    const/4 v5, 0x0

    array-length v6, v4

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 40
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 41
    sget-object v5, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "accessory":Lcom/samsung/android/sdk/accessorymanager/SamDevice;
    check-cast v0, Lcom/samsung/android/sdk/accessorymanager/SamDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .restart local v0    # "accessory":Lcom/samsung/android/sdk/accessorymanager/SamDevice;
    :cond_2
    if-eqz v2, :cond_3

    .line 45
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 48
    :cond_3
    const-string v5, "deviceState"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 49
    .local v3, "status":I
    const-string v5, "SAIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "State Change Intent Received with state:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    if-eq v3, v8, :cond_5

    .line 51
    invoke-virtual {p0, p1, v0, v3}, Lcom/samsung/android/sdk/accessorymanager/AccessoryStateChangedReceiver;->onStateChanged(Landroid/content/Context;Lcom/samsung/android/sdk/accessorymanager/SamDevice;I)V

    goto :goto_0

    .line 43
    .end local v0    # "accessory":Lcom/samsung/android/sdk/accessorymanager/SamDevice;
    .end local v3    # "status":I
    :catchall_0
    move-exception v5

    .line 44
    if-eqz v2, :cond_4

    .line 45
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 47
    :cond_4
    throw v5

    .line 53
    .restart local v0    # "accessory":Lcom/samsung/android/sdk/accessorymanager/SamDevice;
    .restart local v3    # "status":I
    :cond_5
    const-string v5, "SAIntentReceiver"

    const-string v6, "Invalid State Received"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 55
    .end local v0    # "accessory":Lcom/samsung/android/sdk/accessorymanager/SamDevice;
    .end local v1    # "b":Landroid/os/Bundle;
    .end local v2    # "parcel":Landroid/os/Parcel;
    .end local v3    # "status":I
    .end local v4    # "unmarshalledParcel":[B
    :cond_6
    const-string v5, "com.samsung.accessory.device.action.ACCESSORY_CONNECTION_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 56
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 57
    .restart local v1    # "b":Landroid/os/Bundle;
    const/4 v0, 0x0

    .line 58
    .restart local v0    # "accessory":Lcom/samsung/android/sdk/accessorymanager/SamDevice;
    const-string v5, "accessory"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 59
    .restart local v4    # "unmarshalledParcel":[B
    if-nez v4, :cond_7

    .line 60
    const-string v5, "SAIntentReceiver"

    const-string v6, "Parcel cannot be unmarshalled"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 63
    :cond_7
    const/4 v2, 0x0

    .line 65
    .restart local v2    # "parcel":Landroid/os/Parcel;
    :try_start_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 66
    if-eqz v2, :cond_8

    .line 67
    const/4 v5, 0x0

    array-length v6, v4

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 68
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 69
    sget-object v5, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "accessory":Lcom/samsung/android/sdk/accessorymanager/SamDevice;
    check-cast v0, Lcom/samsung/android/sdk/accessorymanager/SamDevice;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 72
    .restart local v0    # "accessory":Lcom/samsung/android/sdk/accessorymanager/SamDevice;
    :cond_8
    if-eqz v2, :cond_9

    .line 73
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 76
    :cond_9
    const-string v5, "deviceState"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 77
    .restart local v3    # "status":I
    const-string v5, "SAIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "State Change Intent Received with state:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    if-eq v3, v8, :cond_b

    .line 79
    invoke-virtual {p0, p1, v0, v3}, Lcom/samsung/android/sdk/accessorymanager/AccessoryStateChangedReceiver;->onStateChanged(Landroid/content/Context;Lcom/samsung/android/sdk/accessorymanager/SamDevice;I)V

    goto/16 :goto_0

    .line 71
    .end local v0    # "accessory":Lcom/samsung/android/sdk/accessorymanager/SamDevice;
    .end local v3    # "status":I
    :catchall_1
    move-exception v5

    .line 72
    if-eqz v2, :cond_a

    .line 73
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 75
    :cond_a
    throw v5

    .line 81
    .restart local v0    # "accessory":Lcom/samsung/android/sdk/accessorymanager/SamDevice;
    .restart local v3    # "status":I
    :cond_b
    const-string v5, "SAIntentReceiver"

    const-string v6, "Invalid State Received"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public abstract onStateChanged(Landroid/content/Context;Lcom/samsung/android/sdk/accessorymanager/SamDevice;I)V
.end method
