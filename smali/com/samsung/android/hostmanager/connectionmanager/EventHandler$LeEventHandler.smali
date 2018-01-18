.class Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler;
.super Ljava/lang/Object;
.source "EventHandler.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LeEventHandler"
.end annotation


# instance fields
.field public mGattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

.field public mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    .prologue
    .line 1335
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1338
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler$1;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 1399
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler$2;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler;->mGattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    return-void
.end method

.method static synthetic access$1700(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1335
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler;->getLinkFeature(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLinkFeature(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1458
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1469
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;->UNKOWN:Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;->name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1460
    :pswitch_0
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;->UNKOWN:Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1462
    :pswitch_1
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;->LINK_EDR:Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1464
    :pswitch_2
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;->LINK_LE:Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1466
    :pswitch_3
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;->LINK_DUAL:Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1458
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
