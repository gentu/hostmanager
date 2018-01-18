.class final Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$ConntionEventReceiver;
.super Landroid/os/ResultReceiver;
.source "SamAccessoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConntionEventReceiver"
.end annotation


# instance fields
.field private mEventCallback:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "eventCallback"    # Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;

    .prologue
    .line 926
    invoke-direct {p0, p1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 927
    iput-object p2, p0, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$ConntionEventReceiver;->mEventCallback:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;

    .line 928
    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 9
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 932
    invoke-static {}, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->access$0()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " onReceiveResult: resultCode="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    const/16 v5, 0x64

    if-ne p1, v5, :cond_1

    .line 934
    const-string v5, "errorcode"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 935
    .local v2, "error":I
    invoke-static {}, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->access$0()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Error in Account Config: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    iget-object v5, p0, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$ConntionEventReceiver;->mEventCallback:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;

    invoke-interface {v5, v8, v2}, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;->onError(Lcom/samsung/android/sdk/accessorymanager/SamDevice;I)V

    .line 1016
    .end local v2    # "error":I
    :cond_0
    :goto_0
    return-void

    .line 941
    :cond_1
    const-string v5, "accessory"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 942
    .local v4, "unmarshalledParcel":[B
    if-eqz v4, :cond_b

    .line 943
    const/4 v3, 0x0

    .line 944
    .local v3, "parcel":Landroid/os/Parcel;
    const/4 v0, 0x0

    .line 946
    .local v0, "accessory":Lcom/samsung/android/sdk/accessorymanager/SamDevice;
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 947
    if-eqz v3, :cond_2

    .line 948
    const/4 v5, 0x0

    array-length v6, v4

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 949
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 950
    sget-object v5, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "accessory":Lcom/samsung/android/sdk/accessorymanager/SamDevice;
    check-cast v0, Lcom/samsung/android/sdk/accessorymanager/SamDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 953
    .restart local v0    # "accessory":Lcom/samsung/android/sdk/accessorymanager/SamDevice;
    :cond_2
    if-eqz v3, :cond_3

    .line 954
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 957
    :cond_3
    if-eqz v0, :cond_a

    .line 958
    iget-object v5, p0, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$ConntionEventReceiver;->mEventCallback:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;

    if-eqz v5, :cond_0

    .line 959
    sparse-switch p1, :sswitch_data_0

    .line 1000
    invoke-static {}, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->access$0()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " onReceiveResult: onError and result code 0x"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1001
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1000
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    iget-object v5, p0, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$ConntionEventReceiver;->mEventCallback:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;

    invoke-interface {v5, v0, p1}, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;->onError(Lcom/samsung/android/sdk/accessorymanager/SamDevice;I)V

    goto :goto_0

    .line 952
    .end local v0    # "accessory":Lcom/samsung/android/sdk/accessorymanager/SamDevice;
    :catchall_0
    move-exception v5

    .line 953
    if-eqz v3, :cond_4

    .line 954
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 956
    :cond_4
    throw v5

    .line 961
    .restart local v0    # "accessory":Lcom/samsung/android/sdk/accessorymanager/SamDevice;
    :sswitch_0
    invoke-static {}, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->access$0()Ljava/lang/String;

    move-result-object v5

    const-string v6, " onReceiveResult: DEVICE_ATTACHED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    iget-object v5, p0, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$ConntionEventReceiver;->mEventCallback:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;

    invoke-interface {v5, v0}, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;->onAccessoryConnected(Lcom/samsung/android/sdk/accessorymanager/SamDevice;)V

    goto :goto_0

    .line 965
    :sswitch_1
    const-string v5, "errorcode"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 966
    .local v1, "code":I
    invoke-static {}, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->access$0()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " onReceiveResult: DEVICE_DETACHED and error code 0x"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 967
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 966
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    iget-object v5, p0, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$ConntionEventReceiver;->mEventCallback:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;

    invoke-interface {v5, v0, v1}, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;->onAccessoryDisconnected(Lcom/samsung/android/sdk/accessorymanager/SamDevice;I)V

    goto/16 :goto_0

    .line 971
    .end local v1    # "code":I
    :sswitch_2
    const-string v5, "errorcode"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 972
    .restart local v1    # "code":I
    invoke-static {}, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->access$0()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " onReceiveResult: DEVICE_STATE_CHANGED and code: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    const/4 v5, 0x2

    if-ne v1, v5, :cond_5

    .line 974
    iget-object v5, p0, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$ConntionEventReceiver;->mEventCallback:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;

    invoke-interface {v5, v0}, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;->onAccountLoggedIn(Lcom/samsung/android/sdk/accessorymanager/SamDevice;)V

    goto/16 :goto_0

    .line 975
    :cond_5
    if-nez v1, :cond_0

    .line 976
    iget-object v5, p0, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$ConntionEventReceiver;->mEventCallback:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;

    invoke-interface {v5, v0}, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;->onAccountLoggedOut(Lcom/samsung/android/sdk/accessorymanager/SamDevice;)V

    goto/16 :goto_0

    .line 980
    .end local v1    # "code":I
    :sswitch_3
    invoke-static {}, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->access$0()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Accessory Framework has died / disconnetced"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    iget-object v5, p0, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$ConntionEventReceiver;->mEventCallback:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;

    invoke-interface {v5, v8, p1}, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;->onError(Lcom/samsung/android/sdk/accessorymanager/SamDevice;I)V

    goto/16 :goto_0

    .line 984
    :sswitch_4
    const-string v5, "errorcode"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 985
    .restart local v2    # "error":I
    invoke-static {}, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->access$0()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onReceiveResult: onError and result code 0x "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 986
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; error(Hex) = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 987
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 985
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    const/16 v5, 0x68

    if-eq v2, v5, :cond_6

    const v5, -0x6ffffff5

    if-ne v2, v5, :cond_8

    .line 989
    :cond_6
    const v2, -0x4ffffffa

    .line 997
    :cond_7
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$ConntionEventReceiver;->mEventCallback:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;

    invoke-interface {v5, v0, v2}, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;->onError(Lcom/samsung/android/sdk/accessorymanager/SamDevice;I)V

    goto/16 :goto_0

    .line 993
    :cond_8
    const v5, -0x3fffffff    # -2.0000002f

    if-eq v2, v5, :cond_9

    .line 994
    const v5, -0x3ffffffe    # -2.0000005f

    if-ne v2, v5, :cond_7

    .line 995
    :cond_9
    const v2, -0x3fffffff    # -2.0000002f

    goto :goto_1

    .line 1006
    .end local v2    # "error":I
    :cond_a
    invoke-static {}, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->access$0()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Unamrshalling accessory instance failed."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1009
    .end local v0    # "accessory":Lcom/samsung/android/sdk/accessorymanager/SamDevice;
    .end local v3    # "parcel":Landroid/os/Parcel;
    :cond_b
    const/16 v5, 0x800

    if-ne p1, v5, :cond_c

    .line 1010
    invoke-static {}, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->access$0()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Accessory Framework has died / disconnetced"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    iget-object v5, p0, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$ConntionEventReceiver;->mEventCallback:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;

    invoke-interface {v5, v8, p1}, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;->onError(Lcom/samsung/android/sdk/accessorymanager/SamDevice;I)V

    goto/16 :goto_0

    .line 1013
    :cond_c
    invoke-static {}, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->access$0()Ljava/lang/String;

    move-result-object v5

    const-string v6, "No accessory instance to unmarshall."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 959
    nop

    :sswitch_data_0
    .sparse-switch
        -0x2fffffff -> :sswitch_4
        0x6d -> :sswitch_2
        0x72 -> :sswitch_0
        0x73 -> :sswitch_1
        0x800 -> :sswitch_3
    .end sparse-switch
.end method

.method public updateCallback(Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;)V
    .locals 1
    .param p1, "newCallback"    # Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;

    .prologue
    .line 1019
    if-nez p1, :cond_1

    .line 1020
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$ConntionEventReceiver;->mEventCallback:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;

    .line 1027
    :cond_0
    :goto_0
    return-void

    .line 1022
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$ConntionEventReceiver;->mEventCallback:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1025
    iput-object p1, p0, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$ConntionEventReceiver;->mEventCallback:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;

    goto :goto_0
.end method
