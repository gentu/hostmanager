.class public abstract Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;
.super Ljava/lang/Object;
.source "ProfileHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler$ConnectionRetryTask;
    }
.end annotation


# static fields
.field protected static TAG:Ljava/lang/String;


# instance fields
.field private mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

.field private mStateMachine:Lcom/samsung/android/hostmanager/connectionmanager/StateMachine;

.field private mType:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "ProfileHandler"

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)V
    .locals 3
    .param p1, "manager"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;
    .param p2, "type"    # Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .line 20
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;->mType:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    .line 22
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;->mStateMachine:Lcom/samsung/android/hostmanager/connectionmanager/StateMachine;

    .line 26
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .line 27
    iput-object p2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;->mType:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    .line 29
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/StateMachine;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;->mType:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/StateMachine;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;->mStateMachine:Lcom/samsung/android/hostmanager/connectionmanager/StateMachine;

    .line 30
    return-void
.end method


# virtual methods
.method public getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    if-nez v0, :cond_0

    .line 34
    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method public abstract initialize()V
.end method

.method public abstract onCancelRequested(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Landroid/os/Bundle;)Z
.end method

.method public abstract onConnectRequested(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Landroid/os/Bundle;)Z
.end method

.method public abstract onConnectionEventReceived(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Landroid/os/Bundle;)Z
.end method

.method public abstract onDisconnectRequested(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Landroid/os/Bundle;)Z
.end method

.method public final requestMessage(Lcom/sec/android/api/iface/CVMessage;)Z
    .locals 14
    .param p1, "cvm"    # Lcom/sec/android/api/iface/CVMessage;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 51
    invoke-virtual {p1}, Lcom/sec/android/api/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 52
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v12, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    .line 54
    .local v7, "itemBundle":Landroid/os/Bundle;
    invoke-static {v7}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Landroid/os/Bundle;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v3

    .line 56
    .local v3, "device":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    if-nez v3, :cond_0

    .line 111
    :goto_0
    return v11

    .line 59
    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/api/iface/CVMessage;->getCmdID()I

    move-result v2

    .line 60
    .local v2, "cmd":I
    const/4 v8, 0x0

    .line 62
    .local v8, "result":Z
    const-string v12, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    sget-object v13, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ALL:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    .line 63
    invoke-virtual {v13}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v13

    .line 62
    invoke-virtual {v1, v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 65
    .local v9, "sType":Ljava/lang/String;
    sget-object v12, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v12}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    move v5, v10

    .line 66
    .local v5, "isSCS":Z
    :goto_1
    sget-object v12, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->WIFIP2P:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v12}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    move v6, v10

    .line 67
    .local v6, "isSupplement":Z
    :goto_2
    sget-object v10, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[CMAC] requestMessage : checkIsAvailableCommand type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;->mStateMachine:Lcom/samsung/android/hostmanager/connectionmanager/StateMachine;

    invoke-virtual {v10, v3, v2, v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/StateMachine;->checkIsAvailableCommand(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;IZZ)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 72
    sparse-switch v2, :sswitch_data_0

    .line 94
    const/4 v8, 0x0

    :goto_3
    move v11, v8

    .line 111
    goto :goto_0

    .end local v5    # "isSCS":Z
    .end local v6    # "isSupplement":Z
    :cond_1
    move v5, v11

    .line 65
    goto :goto_1

    .restart local v5    # "isSCS":Z
    :cond_2
    move v6, v11

    .line 66
    goto :goto_2

    .line 76
    .restart local v6    # "isSupplement":Z
    :sswitch_0
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;->onConnectRequested(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Landroid/os/Bundle;)Z

    move-result v8

    .line 78
    goto :goto_3

    .line 82
    :sswitch_1
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;->onCancelRequested(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Landroid/os/Bundle;)Z

    move-result v8

    .line 84
    goto :goto_3

    .line 88
    :sswitch_2
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;->onDisconnectRequested(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Landroid/os/Bundle;)Z

    move-result v8

    .line 90
    goto :goto_3

    .line 101
    :cond_3
    sget-object v10, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->WIFIP2P:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v10}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 102
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 103
    .local v0, "b":Landroid/os/Bundle;
    invoke-static {v3}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Landroid/os/Bundle;

    move-result-object v4

    .line 104
    .local v4, "deviceBundle":Landroid/os/Bundle;
    const-string v10, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v0, v10, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 105
    const-string v10, "BUNDLE_CMKEY_STRING_ERRORCODE"

    const-string v11, "WIFIP2P_CONNECT_ERROR"

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    const/16 v11, 0x242

    invoke-virtual {v10, v11, v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->publishEvent(ILandroid/os/Bundle;)V

    .line 108
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v4    # "deviceBundle":Landroid/os/Bundle;
    :cond_4
    const/4 v8, 0x1

    goto :goto_3

    .line 72
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_2
        0x24 -> :sswitch_1
    .end sparse-switch
.end method

.method public abstract terminate()V
.end method
