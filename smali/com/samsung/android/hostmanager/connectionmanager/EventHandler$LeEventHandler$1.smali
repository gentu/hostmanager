.class Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler$1;
.super Ljava/lang/Object;
.source "EventHandler.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler;

    .prologue
    .line 1338
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 12
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "rssi"    # I
    .param p3, "scanRecord"    # [B

    .prologue
    const/4 v11, -0x1

    .line 1342
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1343
    .local v0, "addedDevice":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Added Device(LE): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "db"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1345
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler;

    invoke-static {v8, p1}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler;->access$1700(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v7

    .line 1347
    .local v7, "linkfeature":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1348
    .local v1, "appearance":I
    const/4 v3, 0x0

    .line 1349
    .local v3, "cod":I
    const/4 v5, 0x0

    .line 1351
    .local v5, "isWearableDevice":Z
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler;

    iget-object v8, v8, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    invoke-static {v8}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$1800(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;)Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v8

    .line 1352
    invoke-virtual {v8, p3}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->filterScanRecordforSupportedDevice([B)Z

    move-result v4

    .line 1353
    .local v4, "isSupported":Z
    if-nez v4, :cond_0

    .line 1354
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Device(LE): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is not suported"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    :goto_0
    return-void

    .line 1357
    :cond_0
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Device(LE): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is suported"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler;

    iget-object v8, v8, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    invoke-static {v8}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$1800(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;)Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v8

    invoke-virtual {v8, p3}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->checkAppearanceType([B)I

    move-result v1

    .line 1360
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Added device = appearance: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    if-eqz v1, :cond_2

    .line 1363
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler;

    iget-object v8, v8, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    invoke-static {v8}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$1800(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;)Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getCOD(I)I

    move-result v3

    .line 1364
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Added device = cod: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    if-nez v3, :cond_1

    const/16 v8, 0x40

    if-ne v1, v8, :cond_2

    .line 1367
    :cond_1
    const/4 v5, 0x1

    .line 1371
    :cond_2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1373
    .local v2, "bundle":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v6

    .line 1375
    .local v6, "itemBundle":Landroid/os/Bundle;
    const-string v8, "BUNDLE_INT_RSSI"

    invoke-virtual {v6, v8, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1376
    const-string v8, "BUNDLE_STRING_LINKFEATURE"

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1377
    const-string v8, "BUNDLE_INT_COD"

    invoke-virtual {v6, v8, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1378
    const-string v8, "BUNDLE_BOOLEAN_WEARABLECODE"

    invoke-virtual {v6, v8, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1380
    const-string v8, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v2, v8, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1382
    if-eq v1, v11, :cond_3

    .line 1383
    const-string v8, "BUNDLE_INT_APPEARANCE"

    invoke-virtual {v2, v8, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1385
    :cond_3
    if-eq v3, v11, :cond_4

    .line 1386
    const-string v8, "BUNDLE_INT_COD"

    invoke-virtual {v2, v8, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1390
    :cond_4
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler;

    iget-object v8, v8, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    const-string v9, "DISCOVERYCONTROLLER"

    const/16 v10, 0x211

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v2, v11}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$200(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
