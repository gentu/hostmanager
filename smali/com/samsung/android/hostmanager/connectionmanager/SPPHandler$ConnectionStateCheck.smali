.class Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$ConnectionStateCheck;
.super Ljava/lang/Object;
.source "SPPHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectionStateCheck"
.end annotation


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mInitialState:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 905
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$ConnectionStateCheck;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 901
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$ConnectionStateCheck;->mAddress:Ljava/lang/String;

    .line 903
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->UNKNOWN:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$ConnectionStateCheck;->mInitialState:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    .line 906
    iput-object p2, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$ConnectionStateCheck;->mAddress:Ljava/lang/String;

    .line 907
    return-void
.end method


# virtual methods
.method resetInitialState(Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V
    .locals 0
    .param p1, "state"    # Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    .prologue
    .line 910
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$ConnectionStateCheck;->mInitialState:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    .line 911
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    .line 915
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Check for state change"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$ConnectionStateCheck;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v2

    .line 918
    .local v2, "serviceState":Lcom/samsung/android/hostmanager/connectionmanager/WearableState;
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$ConnectionStateCheck;->mAddress:Ljava/lang/String;

    invoke-static {v3}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v1

    .line 919
    .local v1, "device":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getServiceState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-result-object v0

    .line 921
    .local v0, "curState":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTING:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    if-eq v0, v3, :cond_0

    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTING:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    if-ne v0, v3, :cond_1

    .line 922
    :cond_0
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "State is still "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", reverting to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$ConnectionStateCheck;->mInitialState:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$ConnectionStateCheck;->mInitialState:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v2, v1, v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectedState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V

    .line 926
    :cond_1
    return-void
.end method
