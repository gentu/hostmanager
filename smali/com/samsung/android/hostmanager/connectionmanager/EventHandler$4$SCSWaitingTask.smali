.class Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4$SCSWaitingTask;
.super Ljava/lang/Object;
.source "EventHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SCSWaitingTask"
.end annotation


# instance fields
.field private address:Ljava/lang/String;

.field final synthetic this$1:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;

    .prologue
    .line 1257
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4$SCSWaitingTask;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1266
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[jdub] Request SCS Connection"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1269
    .local v2, "reqBundle":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4$SCSWaitingTask;->address:Ljava/lang/String;

    invoke-static {v4}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 1270
    .local v1, "itemBundle":Landroid/os/Bundle;
    const-string v4, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1271
    const-string v4, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4$SCSWaitingTask;->address:Ljava/lang/String;

    invoke-static {v4}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v3

    .line 1274
    .local v3, "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    if-nez v3, :cond_0

    .line 1287
    :goto_0
    return-void

    .line 1277
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4$SCSWaitingTask;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;

    iget-object v4, v4, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    invoke-static {v4}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$1800(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;)Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v4, v3, v5}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnected(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z

    move-result v0

    .line 1279
    .local v0, "isSCSConnected":Z
    if-nez v0, :cond_1

    .line 1281
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[jdub] Request SCS Connection"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4$SCSWaitingTask;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;

    iget-object v4, v4, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    invoke-static {v4}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$1800(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;)Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v4

    const/16 v5, 0x15

    invoke-virtual {v4, v5, v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 1285
    :cond_1
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[jdub] SCS Already Connected"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "addr"    # Ljava/lang/String;

    .prologue
    .line 1262
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4$SCSWaitingTask;->address:Ljava/lang/String;

    .line 1263
    return-void
.end method
