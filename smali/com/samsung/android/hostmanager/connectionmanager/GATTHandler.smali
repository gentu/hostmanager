.class public Lcom/samsung/android/hostmanager/connectionmanager/GATTHandler;
.super Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;
.source "GATTHandler.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "GATTHandler"

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/GATTHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)V
    .locals 1
    .param p1, "manager"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .prologue
    .line 14
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->GATT:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)V

    .line 16
    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/GATTHandler;->TAG:Ljava/lang/String;

    const-string v1, "initialize"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public onCancelRequested(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 52
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/GATTHandler;->TAG:Ljava/lang/String;

    const-string v1, "onCancelRequested"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    if-nez p1, :cond_0

    .line 55
    const/4 v0, 0x0

    .line 57
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onConnectRequested(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 41
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/GATTHandler;->TAG:Ljava/lang/String;

    const-string v1, "onConnectRequested"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    if-nez p1, :cond_0

    .line 44
    const/4 v0, 0x0

    .line 46
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onConnectionEventReceived(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public onDisconnectRequested(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 63
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/GATTHandler;->TAG:Ljava/lang/String;

    const-string v1, "onDisconnectRequested"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    if-nez p1, :cond_0

    .line 66
    const/4 v0, 0x0

    .line 68
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public terminate()V
    .locals 2

    .prologue
    .line 28
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/GATTHandler;->TAG:Ljava/lang/String;

    const-string v1, "terminate"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method
