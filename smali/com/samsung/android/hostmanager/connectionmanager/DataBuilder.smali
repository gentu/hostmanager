.class public Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;
.super Ljava/lang/Object;
.source "DataBuilder.java"


# static fields
.field public static final BLUETOOTH_VER_30:I = 0x1

.field public static final BLUETOOTH_VER_40_DUAL:I = 0x3

.field public static final BLUETOOTH_VER_40_LE:I = 0x2

.field public static final BLUETOOTH_VER_40_P:I = 0x4

.field public static final BLUETOOTH_VER_41:I = 0x5

.field public static final BLUETOOTH_VER_UNKOWN:I = 0x0

.field public static final MAIN_BLUETOOTH_CONTROL:I = 0x2

.field public static final MAIN_GENERIC_INFORMATION:I = 0x1

.field public static final MAIN_WIFIP2P_CONTROL:I = 0x6

.field public static final NOTIFICATION:I = 0x4

.field private static PACKAGE_NAME:Ljava/lang/String; = null

.field public static final REQUEST:I = 0x1

.field public static final RESPONSE:I = 0x2

.field public static final RESPONSE_ERROR:I = 0x3

.field private static final STR_DEVICE_TYPE_CLASSIC:Ljava/lang/String; = "DEVICE_TYPE_CLASSIC"

.field private static final STR_DEVICE_TYPE_DUAL:Ljava/lang/String; = "DEVICE_TYPE_DUAL"

.field private static final STR_DEVICE_TYPE_DUAL_4_1:Ljava/lang/String; = "DEVICE_TYPE_DUAL_4_1"

.field private static final STR_DEVICE_TYPE_DUAL_SAMSUNG:Ljava/lang/String; = "DEVICE_TYPE_DUAL_SAMSUNG"

.field private static final STR_DEVICE_TYPE_LE:Ljava/lang/String; = "DEVICE_TYPE_LE"

.field public static final SUB_BLUETOOTH_COD:I = 0x4

.field public static final SUB_BLUETOOTH_PROFILES:I = 0x3

.field public static final SUB_BLUETOOTH_RSSI:I = 0x7

.field public static final SUB_BLUETOOTH_VERSION:I = 0x1

.field public static final SUB_GET_RANDOM_LE_ADDRESS:I = 0x6

.field public static final SUB_MAC_ADDRESS:I = 0x2

.field public static final SUB_MANUALLAY_DISCONNECTED:I = 0x14

.field public static final SUB_MANUFACTURER:I = 0x3

.field public static final SUB_PAN_CONFIGURATION_OFF:I = 0x12

.field public static final SUB_PAN_CONFIGURATION_ON:I = 0x11

.field public static final SUB_PAN_CONNETION:I = 0x13

.field public static final SUB_PDU_VERSION:I = 0x4

.field public static final SUB_PLATFORM_NAME:I = 0x1

.field public static final SUB_PLATFORM_VERSION:I = 0x2

.field public static final SUB_SUPPORTED_NETWORK_TYPES:I = 0x5

.field public static final SUB_SUPPORTED_SERVICES:I = 0x5

.field public static final SUB_WIFIP2P_CANCEL_CONNECTION:I = 0x13

.field public static final SUB_WIFIP2P_CONNECTION:I = 0x11

.field public static final SUB_WIFIP2P_DISCONNECTION:I = 0x12

.field public static final SUB_WIFIP2P_IP_ADDRESS:I = 0x3

.field public static final SUB_WIFIP2P_MAC_ADDRESS:I = 0x2

.field public static final SUB_WIFIP2P_PROTOCOL_VERSION:I = 0x1

.field private static TAG:Ljava/lang/String;

.field private static mServiceProfileVersion:Ljava/lang/String;


# instance fields
.field private COD:I

.field private bluetoothVersion:I

.field private mDataExchanger:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

.field private macAddress:Ljava/lang/String;

.field private manufacturer:Ljava/lang/String;

.field private pduVersion:Ljava/lang/String;

.field private platformName:Ljava/lang/String;

.field private platformVersion:Ljava/lang/String;

.field private profiles:[Ljava/lang/String;

.field private rssi:[Ljava/lang/String;

.field private supportedNetworkTypes:[Ljava/lang/String;

.field private supportedServices:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "DataBuilder"

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    .line 27
    const-string v0, "com.samsung.ble.BleAutoConnectService"

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->PACKAGE_NAME:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->mServiceProfileVersion:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;)V
    .locals 2
    .param p1, "de"    # Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->mDataExchanger:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    .line 35
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->platformName:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->platformVersion:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->manufacturer:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->pduVersion:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->supportedNetworkTypes:[Ljava/lang/String;

    .line 45
    iput v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->bluetoothVersion:I

    .line 47
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->macAddress:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->profiles:[Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->rssi:[Ljava/lang/String;

    .line 56
    iput v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->COD:I

    .line 58
    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->supportedServices:[Z

    .line 178
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->mDataExchanger:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    .line 179
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->getServiceProfileVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->mServiceProfileVersion:Ljava/lang/String;

    .line 180
    return-void
.end method

.method private configurePan()V
    .locals 1

    .prologue
    .line 1437
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->mDataExchanger:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->configurePan()V

    .line 1438
    return-void
.end method

.method private connectWifiP2p(I)V
    .locals 1
    .param p1, "reqOrRes"    # I

    .prologue
    .line 1498
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->mDataExchanger:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->connectWifiP2p(I)V

    .line 1499
    return-void
.end method

.method private static convertBluetoothVersionType(I)Ljava/lang/String;
    .locals 3
    .param p0, "type"    # I

    .prologue
    .line 933
    const-string v0, "UNKOWN"

    .line 935
    .local v0, "str":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 962
    :goto_0
    const-string v1, "UNKOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 963
    const-string v0, "DEVICE_TYPE_DUAL_SAMSUNG"

    .line 965
    :cond_0
    return-object v0

    .line 937
    :pswitch_0
    const-string v0, "DEVICE_TYPE_UNKOWN"

    .line 938
    goto :goto_0

    .line 941
    :pswitch_1
    const-string v0, "DEVICE_TYPE_CLASSIC"

    .line 942
    goto :goto_0

    .line 945
    :pswitch_2
    const-string v0, "DEVICE_TYPE_LE"

    .line 946
    goto :goto_0

    .line 949
    :pswitch_3
    const-string v0, "DEVICE_TYPE_DUAL"

    .line 950
    goto :goto_0

    .line 953
    :pswitch_4
    const-string v0, "DEVICE_TYPE_DUAL_SAMSUNG"

    .line 954
    goto :goto_0

    .line 957
    :pswitch_5
    const-string v0, "DEVICE_TYPE_DUAL_4_1"

    goto :goto_0

    .line 935
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private disconnectPan()V
    .locals 1

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->mDataExchanger:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->disconnectPan()V

    .line 1442
    return-void
.end method

.method private getBluetoothVersion()[B
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 1255
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->getLocalBluetoothVersion()I

    move-result v0

    .line 1257
    .local v0, "_bluetoothVersion":I
    new-array v1, v5, [B

    .line 1258
    .local v1, "btVer":[B
    const/4 v2, 0x0

    aput-byte v5, v1, v2

    .line 1259
    aput-byte v3, v1, v4

    .line 1260
    aput-byte v4, v1, v3

    .line 1261
    const/4 v2, 0x3

    aput-byte v3, v1, v2

    .line 1262
    const/4 v2, 0x4

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 1264
    return-object v1
.end method

.method private getBytes(Ljava/util/List;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;)[B"
        }
    .end annotation

    .prologue
    .line 398
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v0, 0x0

    .line 400
    .local v0, "bytes":[B
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 402
    const/4 v6, 0x0

    .line 403
    .local v6, "size":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 404
    .local v4, "listSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 405
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 406
    .local v2, "item":[B
    array-length v7, v2

    add-int/2addr v6, v7

    .line 404
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 409
    .end local v2    # "item":[B
    :cond_0
    new-array v0, v6, [B

    .line 410
    const/4 v5, 0x0

    .line 412
    .local v5, "pointer":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 414
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_2

    .line 415
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 417
    .restart local v2    # "item":[B
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    array-length v7, v2

    if-ge v3, v7, :cond_1

    .line 418
    aget-byte v7, v2, v3

    aput-byte v7, v0, v5

    .line 419
    add-int/lit8 v5, v5, 0x1

    .line 417
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 414
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 424
    .end local v1    # "i":I
    .end local v2    # "item":[B
    .end local v3    # "j":I
    .end local v4    # "listSize":I
    .end local v5    # "pointer":I
    .end local v6    # "size":I
    :cond_2
    return-object v0
.end method

.method private getCOD()[B
    .locals 6

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x4

    const/4 v3, 0x2

    .line 1324
    const v1, -0x554434

    .line 1326
    .local v1, "localCOD":I
    new-array v0, v5, [B

    .line 1327
    .local v0, "_localCOD":[B
    const/4 v2, 0x0

    aput-byte v5, v0, v2

    .line 1328
    const/4 v2, 0x1

    aput-byte v3, v0, v2

    .line 1329
    aput-byte v4, v0, v3

    .line 1330
    const/4 v2, 0x3

    aput-byte v3, v0, v2

    .line 1331
    const/16 v2, 0xcc

    int-to-byte v2, v2

    aput-byte v2, v0, v4

    .line 1332
    const/4 v2, 0x5

    const/16 v3, 0xbb

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1333
    const/4 v2, 0x6

    const/16 v3, 0xaa

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1335
    return-object v0
.end method

.method private getCellularNetworkTypeString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1016
    const-string v3, ""

    .line 1018
    .local v3, "str":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1020
    .local v2, "result":Z
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->supportedNetworkTypes:[Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 1022
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->supportedNetworkTypes:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 1023
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->supportedNetworkTypes:[Ljava/lang/String;

    aget-object v4, v4, v0

    const-string v5, "cellular"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v6, :cond_1

    .line 1024
    const/4 v2, 0x1

    .line 1031
    .end local v0    # "i":I
    :cond_0
    if-ne v2, v6, :cond_2

    .line 1032
    const-string v1, "CELLULAR#"

    .line 1034
    .local v1, "prefix":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "TRUE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1041
    :goto_1
    return-object v3

    .line 1022
    .end local v1    # "prefix":Ljava/lang/String;
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1036
    .end local v0    # "i":I
    :cond_2
    const-string v1, "CELLULAR#"

    .line 1038
    .restart local v1    # "prefix":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "FALSE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private getHostP2pMacAddress()Ljava/lang/String;
    .locals 13

    .prologue
    .line 1596
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->getHostWifiMacAddress()Ljava/lang/String;

    move-result-object v3

    .line 1597
    .local v3, "macAddress":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 1598
    const/4 v6, 0x0

    .line 1627
    :cond_0
    :goto_0
    return-object v6

    .line 1600
    :cond_1
    const-string v6, ""

    .line 1601
    .local v6, "result":Ljava/lang/String;
    new-instance v4, Ljava/util/Formatter;

    invoke-direct {v4}, Ljava/util/Formatter;-><init>()V

    .line 1602
    .local v4, "partialMacAddr1":Ljava/util/Formatter;
    new-instance v5, Ljava/util/Formatter;

    invoke-direct {v5}, Ljava/util/Formatter;-><init>()V

    .line 1605
    .local v5, "partialMacAddr2":Ljava/util/Formatter;
    const/4 v9, 0x0

    const/4 v10, 0x2

    :try_start_0
    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1606
    .local v7, "subString1":Ljava/lang/String;
    const/16 v9, 0x10

    invoke-static {v7, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 1607
    .local v1, "enable1":I
    or-int/lit8 v1, v1, 0x2

    .line 1608
    const-string v9, "%02x"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v4, v9, v10}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 1610
    const/16 v9, 0xc

    const/16 v10, 0xe

    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 1611
    .local v8, "subString2":Ljava/lang/String;
    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 1612
    .local v2, "enable2":I
    xor-int/lit16 v2, v2, 0x80

    .line 1613
    const-string v9, "%02x"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v5, v9, v10}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 1614
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x2

    const/16 v11, 0xc

    invoke-virtual {v3, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1615
    invoke-virtual {v5}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xe

    .line 1616
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v3, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1617
    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 1622
    if-eqz v4, :cond_2

    .line 1623
    invoke-virtual {v4}, Ljava/util/Formatter;->close()V

    .line 1624
    :cond_2
    if-eqz v5, :cond_0

    .line 1625
    invoke-virtual {v5}, Ljava/util/Formatter;->close()V

    goto/16 :goto_0

    .line 1618
    .end local v1    # "enable1":I
    .end local v2    # "enable2":I
    .end local v7    # "subString1":Ljava/lang/String;
    .end local v8    # "subString2":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1620
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1622
    if-eqz v4, :cond_3

    .line 1623
    invoke-virtual {v4}, Ljava/util/Formatter;->close()V

    .line 1624
    :cond_3
    if-eqz v5, :cond_0

    .line 1625
    invoke-virtual {v5}, Ljava/util/Formatter;->close()V

    goto/16 :goto_0

    .line 1622
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    if-eqz v4, :cond_4

    .line 1623
    invoke-virtual {v4}, Ljava/util/Formatter;->close()V

    .line 1624
    :cond_4
    if-eqz v5, :cond_5

    .line 1625
    invoke-virtual {v5}, Ljava/util/Formatter;->close()V

    :cond_5
    throw v9
.end method

.method private getHostWifiMacAddress()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1588
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "wifi"

    .line 1589
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 1590
    .local v2, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 1591
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 1592
    .local v1, "wifiMac":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1591
    .end local v1    # "wifiMac":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getLocalBluetoothVersion()I
    .locals 2

    .prologue
    .line 1268
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->PACKAGE_NAME:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->isServiceExisting(Ljava/lang/String;)Z

    move-result v0

    .line 1269
    .local v0, "serviceExistance":Z
    invoke-static {v0}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->getLocalBluetoothVersion(Z)I

    move-result v1

    return v1
.end method

.method private static getLocalBluetoothVersion(Z)I
    .locals 10
    .param p0, "serviceExistance"    # Z

    .prologue
    const/4 v7, 0x1

    .line 1095
    const/4 v6, 0x0

    .line 1098
    .local v6, "version":I
    const/4 v6, 0x0

    .line 1100
    if-ne p0, v7, :cond_1

    .line 1101
    const/4 v6, 0x4

    .line 1108
    :goto_0
    :try_start_0
    const-string v7, "android.os.SystemProperties"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1109
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    .line 1111
    .local v4, "obj":Ljava/lang/Object;
    const/4 v7, 0x1

    new-array v5, v7, [Ljava/lang/Class;

    .line 1112
    .local v5, "paramString":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v5, v7

    .line 1114
    const-string v7, "get"

    invoke-virtual {v1, v7, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1115
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "persist.service.bdroid.version"

    aput-object v9, v7, v8

    invoke-virtual {v3, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1119
    .local v0, "_version":Ljava/lang/String;
    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[SystemProperties] BT version(system): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    .line 1132
    .end local v0    # "_version":Ljava/lang/String;
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "obj":Ljava/lang/Object;
    .end local v5    # "paramString":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_0
    :goto_1
    return v6

    .line 1103
    :cond_1
    const/4 v6, 0x3

    goto :goto_0

    .line 1123
    .restart local v0    # "_version":Ljava/lang/String;
    .restart local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "method":Ljava/lang/reflect/Method;
    .restart local v4    # "obj":Ljava/lang/Object;
    .restart local v5    # "paramString":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_2
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v8, 0x16

    if-le v7, v8, :cond_3

    .line 1124
    const/4 v6, 0x4

    goto :goto_1

    .line 1126
    :cond_3
    const/4 v6, 0x5

    goto :goto_1

    .line 1128
    .end local v0    # "_version":Ljava/lang/String;
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "obj":Ljava/lang/Object;
    .end local v5    # "paramString":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 1129
    .local v2, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    const-string v8, "[SystemProperties] Exception"

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getLocalBluetoothVersionStringSet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1273
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->getLocalBluetoothVersion()I

    move-result v1

    .line 1275
    .local v1, "localBluetoothVersion":I
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1277
    .local v0, "array":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v1}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->convertBluetoothVersionType(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1279
    return-object v0
.end method

.method private getMacAddress()[B
    .locals 11

    .prologue
    const/4 v10, 0x2

    .line 1283
    const/4 v1, 0x0

    .line 1285
    .local v1, "address":[B
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1286
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v6

    .line 1287
    .local v6, "localAddress":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 1288
    const/4 v3, 0x0

    .line 1290
    .local v3, "encoded":[B
    :try_start_0
    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1297
    :goto_0
    if-nez v3, :cond_0

    .line 1298
    const/4 v7, 0x0

    .line 1313
    .end local v3    # "encoded":[B
    :goto_1
    return-object v7

    .line 1291
    .restart local v3    # "encoded":[B
    :catch_0
    move-exception v2

    .line 1294
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "catched * "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1301
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    .line 1303
    .local v5, "length":I
    add-int/lit8 v7, v5, 0x4

    new-array v1, v7, [B

    .line 1304
    const/4 v7, 0x0

    add-int/lit8 v8, v5, 0x4

    int-to-byte v8, v8

    aput-byte v8, v1, v7

    .line 1305
    const/4 v7, 0x1

    aput-byte v10, v1, v7

    .line 1306
    aput-byte v10, v1, v10

    .line 1307
    const/4 v7, 0x3

    aput-byte v10, v1, v7

    .line 1308
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v5, :cond_1

    .line 1309
    add-int/lit8 v7, v4, 0x4

    aget-byte v8, v3, v4

    aput-byte v8, v1, v7

    .line 1308
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v3    # "encoded":[B
    .end local v4    # "i":I
    .end local v5    # "length":I
    :cond_1
    move-object v7, v1

    .line 1313
    goto :goto_1
.end method

.method private getManufacturer()[B
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 1194
    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 1195
    .local v4, "mf":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1197
    .local v1, "encoded":[B
    :try_start_0
    const-string v6, "UTF-8"

    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1204
    :goto_0
    if-nez v1, :cond_1

    .line 1205
    const/4 v5, 0x0

    .line 1219
    :cond_0
    return-object v5

    .line 1198
    :catch_0
    move-exception v0

    .line 1201
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "catched * "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1208
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    array-length v3, v1

    .line 1210
    .local v3, "length":I
    add-int/lit8 v6, v3, 0x4

    new-array v5, v6, [B

    .line 1211
    .local v5, "stream":[B
    const/4 v6, 0x0

    add-int/lit8 v7, v3, 0x4

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1212
    aput-byte v9, v5, v9

    .line 1213
    aput-byte v11, v5, v10

    .line 1214
    aput-byte v10, v5, v11

    .line 1215
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 1216
    add-int/lit8 v6, v2, 0x4

    aget-byte v7, v1, v2

    aput-byte v7, v5, v6

    .line 1215
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private getPDUVersion()[B
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 1223
    const/4 v5, 0x0

    .line 1224
    .local v5, "version":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1225
    .local v1, "encoded":[B
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->getLocalBluetoothVersion()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_1

    .line 1226
    const-string v5, "1.6"

    .line 1231
    :goto_0
    iput-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->pduVersion:Ljava/lang/String;

    .line 1232
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getPDUVersion, PDU Version : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->pduVersion:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->pduVersion:Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1239
    :goto_1
    if-nez v1, :cond_2

    .line 1240
    const/4 v4, 0x0

    .line 1252
    :cond_0
    return-object v4

    .line 1228
    :cond_1
    const-string v5, "1.5"

    goto :goto_0

    .line 1235
    :catch_0
    move-exception v0

    .line 1236
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "catched * "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1243
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_2
    array-length v3, v1

    .line 1244
    .local v3, "length":I
    add-int/lit8 v6, v3, 0x4

    new-array v4, v6, [B

    .line 1245
    .local v4, "stream":[B
    const/4 v6, 0x0

    add-int/lit8 v7, v3, 0x4

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    .line 1246
    aput-byte v9, v4, v9

    .line 1247
    const/4 v6, 0x4

    aput-byte v6, v4, v10

    .line 1248
    const/4 v6, 0x3

    aput-byte v10, v4, v6

    .line 1249
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v3, :cond_0

    .line 1250
    add-int/lit8 v6, v2, 0x4

    aget-byte v7, v1, v2

    aput-byte v7, v4, v6

    .line 1249
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private getPlatformName()[B
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 1136
    const-string v4, "Android"

    .line 1137
    .local v4, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1139
    .local v1, "encoded":[B
    :try_start_0
    const-string v6, "UTF-8"

    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1146
    :goto_0
    if-nez v1, :cond_1

    .line 1147
    const/4 v5, 0x0

    .line 1161
    :cond_0
    return-object v5

    .line 1140
    :catch_0
    move-exception v0

    .line 1143
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "catched * "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1150
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    array-length v3, v1

    .line 1152
    .local v3, "length":I
    add-int/lit8 v6, v3, 0x4

    new-array v5, v6, [B

    .line 1153
    .local v5, "stream":[B
    const/4 v6, 0x0

    add-int/lit8 v7, v3, 0x4

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1154
    aput-byte v9, v5, v9

    .line 1155
    aput-byte v9, v5, v10

    .line 1156
    const/4 v6, 0x3

    aput-byte v10, v5, v6

    .line 1157
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 1158
    add-int/lit8 v6, v2, 0x4

    aget-byte v7, v1, v2

    aput-byte v7, v5, v6

    .line 1157
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private getPlatformVersion()[B
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x2

    .line 1165
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1166
    .local v0, "androidVersion":I
    const/4 v2, 0x0

    .line 1168
    .local v2, "encoded":[B
    :try_start_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1175
    :goto_0
    if-nez v2, :cond_1

    .line 1176
    const/4 v5, 0x0

    .line 1190
    :cond_0
    return-object v5

    .line 1169
    :catch_0
    move-exception v1

    .line 1172
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "catched * "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1179
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    array-length v4, v2

    .line 1181
    .local v4, "length":I
    add-int/lit8 v6, v4, 0x4

    new-array v5, v6, [B

    .line 1182
    .local v5, "stream":[B
    const/4 v6, 0x0

    add-int/lit8 v7, v4, 0x4

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1183
    aput-byte v10, v5, v10

    .line 1184
    aput-byte v9, v5, v9

    .line 1185
    const/4 v6, 0x3

    aput-byte v9, v5, v6

    .line 1186
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_0

    .line 1187
    add-int/lit8 v6, v3, 0x4

    aget-byte v7, v2, v3

    aput-byte v7, v5, v6

    .line 1186
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private getProfiles()[B
    .locals 1

    .prologue
    .line 1319
    const/4 v0, 0x0

    return-object v0
.end method

.method private getRandomLEAddress()[B
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x2

    .line 1368
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->mDataExchanger:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getHostLEAddress()Ljava/lang/String;

    move-result-object v3

    .line 1369
    .local v3, "leAddr":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 1370
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    const-string v7, "Random LE Address is null"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    :cond_0
    return-object v5

    .line 1373
    :cond_1
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Random LE Address is : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    const/4 v1, 0x0

    .line 1376
    .local v1, "encoded":[B
    :try_start_0
    const-string v6, "UTF-8"

    invoke-virtual {v3, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1381
    :goto_0
    if-eqz v1, :cond_0

    .line 1385
    array-length v4, v1

    .line 1387
    .local v4, "length":I
    add-int/lit8 v6, v4, 0x4

    new-array v5, v6, [B

    .line 1388
    .local v5, "stream":[B
    const/4 v6, 0x0

    add-int/lit8 v7, v4, 0x4

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1389
    const/4 v6, 0x1

    aput-byte v9, v5, v6

    .line 1390
    const/4 v6, 0x6

    aput-byte v6, v5, v9

    .line 1391
    const/4 v6, 0x3

    aput-byte v9, v5, v6

    .line 1392
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_0

    .line 1393
    add-int/lit8 v6, v2, 0x4

    aget-byte v7, v1, v2

    aput-byte v7, v5, v6

    .line 1392
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1377
    .end local v2    # "i":I
    .end local v4    # "length":I
    .end local v5    # "stream":[B
    :catch_0
    move-exception v0

    .line 1378
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "catched * "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getSupportedServices()[B
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x5

    .line 1340
    const/4 v1, 0x0

    .line 1344
    .local v1, "services":B
    int-to-byte v1, v7

    .line 1345
    or-int/lit8 v2, v1, 0x2

    int-to-byte v1, v2

    .line 1346
    or-int/lit8 v2, v1, 0x4

    int-to-byte v1, v2

    .line 1348
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->getLocalBluetoothVersion()I

    move-result v2

    if-ne v2, v5, :cond_0

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->mDataExchanger:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->isRandomLESupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1349
    or-int/lit8 v2, v1, 0x8

    int-to-byte v1, v2

    .line 1352
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->mDataExchanger:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->setIsGearNotifiedRandomLeTrueFlag()V

    .line 1355
    :cond_0
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Feature Exchange, Supported Services : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    new-array v0, v5, [B

    .line 1358
    .local v0, "_services":[B
    const/4 v2, 0x0

    aput-byte v5, v0, v2

    .line 1359
    aput-byte v6, v0, v7

    .line 1360
    aput-byte v5, v0, v6

    .line 1361
    const/4 v2, 0x3

    aput-byte v6, v0, v2

    .line 1362
    const/4 v2, 0x4

    aput-byte v1, v0, v2

    .line 1364
    return-object v0
.end method

.method private getWifiNetworkTypeString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1045
    const-string v3, ""

    .line 1047
    .local v3, "str":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1049
    .local v2, "result":Z
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->supportedNetworkTypes:[Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 1051
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->supportedNetworkTypes:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 1052
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->supportedNetworkTypes:[Ljava/lang/String;

    aget-object v4, v4, v0

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v6, :cond_1

    .line 1053
    const/4 v2, 0x1

    .line 1060
    .end local v0    # "i":I
    :cond_0
    if-ne v2, v6, :cond_2

    .line 1061
    const-string v1, "WIFI_SERVICE#"

    .line 1063
    .local v1, "prefix":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "TRUE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1070
    :goto_1
    return-object v3

    .line 1051
    .end local v1    # "prefix":Ljava/lang/String;
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1065
    .end local v0    # "i":I
    :cond_2
    const-string v1, "WIFI_SERVICE#"

    .line 1067
    .restart local v1    # "prefix":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "FALSE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private getWifiP2pMacAddress()[B
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x2

    .line 1557
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->getHostP2pMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 1558
    .local v0, "Wifip2pMac":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1559
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    const-string v7, "getWifiP2pMacAddress : WifiP2pMac is null"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1584
    :cond_0
    return-object v5

    .line 1562
    :cond_1
    const/4 v2, 0x0

    .line 1564
    .local v2, "encoded":[B
    :try_start_0
    const-string v6, "UTF-8"

    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1569
    :goto_0
    if-eqz v2, :cond_0

    .line 1573
    array-length v4, v2

    .line 1575
    .local v4, "length":I
    add-int/lit8 v6, v4, 0x4

    new-array v5, v6, [B

    .line 1576
    .local v5, "stream":[B
    const/4 v6, 0x0

    add-int/lit8 v7, v4, 0x4

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1577
    const/4 v6, 0x1

    const/4 v7, 0x6

    aput-byte v7, v5, v6

    .line 1578
    aput-byte v9, v5, v9

    .line 1579
    const/4 v6, 0x3

    aput-byte v9, v5, v6

    .line 1580
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_0

    .line 1581
    add-int/lit8 v6, v3, 0x4

    aget-byte v7, v2, v3

    aput-byte v7, v5, v6

    .line 1580
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1565
    .end local v3    # "i":I
    .end local v4    # "length":I
    .end local v5    # "stream":[B
    :catch_0
    move-exception v1

    .line 1566
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "catched * "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static isServiceExisting(Ljava/lang/String;)Z
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1074
    const/4 v2, 0x0

    .line 1076
    .local v2, "result":Z
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 1078
    .local v1, "manager":Landroid/app/ActivityManager;
    const v4, 0x7fffffff

    invoke-virtual {v1, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    .line 1079
    .local v0, "ServiceList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 1085
    .local v3, "service":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v5, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1086
    const/4 v2, 0x1

    .line 1091
    .end local v3    # "service":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_1
    return v2
.end method

.method private manualDisconnect()V
    .locals 1

    .prologue
    .line 1445
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->mDataExchanger:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->manualDisconnect()V

    .line 1446
    return-void
.end method

.method private process(IIII[BLjava/util/List;)I
    .locals 16
    .param p1, "length"    # I
    .param p2, "mainCommand"    # I
    .param p3, "subCommand"    # I
    .param p4, "typeOfCommand"    # I
    .param p5, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII[B",
            "Ljava/util/List",
            "<[B>;)I"
        }
    .end annotation

    .prologue
    .line 525
    .local p6, "list":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v7, 0x0

    .line 527
    .local v7, "featureExchangeSuccessCount":I
    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_b

    .line 528
    const/4 v12, 0x1

    move/from16 v0, p3

    if-ne v0, v12, :cond_2

    .line 529
    const/4 v12, 0x2

    move/from16 v0, p4

    if-ne v0, v12, :cond_1

    .line 530
    if-eqz p5, :cond_0

    .line 531
    const/4 v4, 0x0

    .line 533
    .local v4, "decoded":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/lang/String;

    const-string v12, "UTF-8"

    move-object/from16 v0, p5

    invoke-direct {v5, v0, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "decoded":Ljava/lang/String;
    .local v5, "decoded":Ljava/lang/String;
    move-object v4, v5

    .line 538
    .end local v5    # "decoded":Ljava/lang/String;
    .restart local v4    # "decoded":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->platformName:Ljava/lang/String;

    .line 539
    sget-object v12, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[jdub] platformName: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    .end local v4    # "decoded":Ljava/lang/String;
    :cond_0
    :goto_1
    return v7

    .line 534
    .restart local v4    # "decoded":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 536
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v12, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "catched * "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 541
    .end local v4    # "decoded":Ljava/lang/String;
    .end local v6    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    const/4 v12, 0x1

    move/from16 v0, p4

    if-ne v0, v12, :cond_0

    .line 542
    sget-object v12, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    const-string v13, "[jdub] platformName requested"

    invoke-static {v12, v13}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->getPlatformName()[B

    move-result-object v3

    .line 545
    .local v3, "bytes":[B
    if-eqz v3, :cond_0

    .line 546
    move-object/from16 v0, p6

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 548
    .end local v3    # "bytes":[B
    :cond_2
    const/4 v12, 0x2

    move/from16 v0, p3

    if-ne v0, v12, :cond_4

    .line 549
    const/4 v12, 0x2

    move/from16 v0, p4

    if-ne v0, v12, :cond_3

    .line 550
    if-eqz p5, :cond_0

    .line 551
    const/4 v4, 0x0

    .line 553
    .restart local v4    # "decoded":Ljava/lang/String;
    :try_start_1
    new-instance v5, Ljava/lang/String;

    const-string v12, "UTF-8"

    move-object/from16 v0, p5

    invoke-direct {v5, v0, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v4    # "decoded":Ljava/lang/String;
    .restart local v5    # "decoded":Ljava/lang/String;
    move-object v4, v5

    .line 558
    .end local v5    # "decoded":Ljava/lang/String;
    .restart local v4    # "decoded":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->platformVersion:Ljava/lang/String;

    .line 559
    sget-object v12, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[jdub] platformVersion: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 554
    :catch_1
    move-exception v6

    .line 556
    .restart local v6    # "e":Ljava/io/UnsupportedEncodingException;
    sget-object v12, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "catched * "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 561
    .end local v4    # "decoded":Ljava/lang/String;
    .end local v6    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_3
    const/4 v12, 0x1

    move/from16 v0, p4

    if-ne v0, v12, :cond_0

    .line 562
    sget-object v12, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    const-string v13, "[jdub] platformVersion requested"

    invoke-static {v12, v13}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->getPlatformVersion()[B

    move-result-object v3

    .line 565
    .restart local v3    # "bytes":[B
    if-eqz v3, :cond_0

    .line 566
    move-object/from16 v0, p6

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 568
    .end local v3    # "bytes":[B
    :cond_4
    const/4 v12, 0x3

    move/from16 v0, p3

    if-ne v0, v12, :cond_6

    .line 569
    const/4 v12, 0x2

    move/from16 v0, p4

    if-ne v0, v12, :cond_5

    .line 570
    if-eqz p5, :cond_0

    .line 571
    const/4 v4, 0x0

    .line 573
    .restart local v4    # "decoded":Ljava/lang/String;
    :try_start_2
    new-instance v5, Ljava/lang/String;

    const-string v12, "UTF-8"

    move-object/from16 v0, p5

    invoke-direct {v5, v0, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .end local v4    # "decoded":Ljava/lang/String;
    .restart local v5    # "decoded":Ljava/lang/String;
    move-object v4, v5

    .line 578
    .end local v5    # "decoded":Ljava/lang/String;
    .restart local v4    # "decoded":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->manufacturer:Ljava/lang/String;

    .line 579
    sget-object v12, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[jdub] manufacturer: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 574
    :catch_2
    move-exception v6

    .line 576
    .restart local v6    # "e":Ljava/io/UnsupportedEncodingException;
    sget-object v12, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "catched * "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 581
    .end local v4    # "decoded":Ljava/lang/String;
    .end local v6    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_5
    const/4 v12, 0x1

    move/from16 v0, p4

    if-ne v0, v12, :cond_0

    .line 582
    sget-object v12, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    const-string v13, "[jdub] manufacturer requested"

    invoke-static {v12, v13}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->getManufacturer()[B

    move-result-object v3

    .line 585
    .restart local v3    # "bytes":[B
    if-eqz v3, :cond_0

    .line 586
    move-object/from16 v0, p6

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 588
    .end local v3    # "bytes":[B
    :cond_6
    const/4 v12, 0x4

    move/from16 v0, p3

    if-ne v0, v12, :cond_7

    .line 607
    const/4 v12, 0x1

    move/from16 v0, p4

    if-ne v0, v12, :cond_0

    .line 608
    sget-object v12, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    const-string v13, "[jdub] PDU Version requested"

    invoke-static {v12, v13}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->getPDUVersion()[B

    move-result-object v3

    .line 611
    .restart local v3    # "bytes":[B
    if-eqz v3, :cond_0

    .line 612
    move-object/from16 v0, p6

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 614
    .end local v3    # "bytes":[B
    :cond_7
    const/4 v12, 0x5

    move/from16 v0, p3

    if-ne v0, v12, :cond_0

    .line 615
    const/4 v12, 0x2

    move/from16 v0, p4

    if-ne v0, v12, :cond_9

    .line 616
    if-eqz p5, :cond_8

    .line 617
    const/4 v4, 0x0

    .line 620
    .restart local v4    # "decoded":Ljava/lang/String;
    :try_start_3
    new-instance v5, Ljava/lang/String;

    const-string v12, "UTF-8"

    move-object/from16 v0, p5

    invoke-direct {v5, v0, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_3

    .end local v4    # "decoded":Ljava/lang/String;
    .restart local v5    # "decoded":Ljava/lang/String;
    move-object v4, v5

    .line 625
    .end local v5    # "decoded":Ljava/lang/String;
    .restart local v4    # "decoded":Ljava/lang/String;
    :goto_4
    sget-object v12, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[jdub] supportedNetworkTypes: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    const-string v12, " "

    invoke-virtual {v4, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->supportedNetworkTypes:[Ljava/lang/String;

    .line 629
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->mDataExchanger:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->getCellularNetworkTypeString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->setCellularNetworkType(Ljava/lang/String;)V

    .line 630
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->mDataExchanger:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->getWifiNetworkTypeString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->setWifiNetworkType(Ljava/lang/String;)V

    .line 639
    .end local v4    # "decoded":Ljava/lang/String;
    :cond_8
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 621
    .restart local v4    # "decoded":Ljava/lang/String;
    :catch_3
    move-exception v6

    .line 622
    .restart local v6    # "e":Ljava/io/UnsupportedEncodingException;
    sget-object v12, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "catched * "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 633
    .end local v4    # "decoded":Ljava/lang/String;
    .end local v6    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_9
    const/4 v12, 0x1

    move/from16 v0, p4

    if-ne v0, v12, :cond_a

    .line 634
    sget-object v12, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    const-string v13, "SUB_SUPPORTED_NETWORK_TYPES :Currently not supported, add support"

    invoke-static {v12, v13}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 635
    :cond_a
    const/4 v12, 0x3

    move/from16 v0, p4

    if-ne v0, v12, :cond_8

    .line 636
    sget-object v12, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    const-string v13, "SUB_SUPPORTED_NETWORK_TYPES : RESPONSE_ERROR"

    invoke-static {v12, v13}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 641
    :cond_b
    const/4 v12, 0x2

    move/from16 v0, p2

    if-ne v0, v12, :cond_21

    .line 642
    const/4 v12, 0x1

    move/from16 v0, p3

    if-ne v0, v12, :cond_d

    .line 643
    const/4 v12, 0x2

    move/from16 v0, p4

    if-ne v0, v12, :cond_c

    .line 644
    if-eqz p5, :cond_0

    .line 645
    const/4 v12, 0x0

    aget-byte v12, p5, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->bluetoothVersion:I

    .line 646
    sget-object v12, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[jdub] bluetoothVersion: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    aget-byte v14, p5, v14

    .line 647
    invoke-static {v14}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->convertBluetoothVersionType(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 646
    invoke-static {v12, v13}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->bluetoothVersion:I

    if-eqz v12, :cond_0

    .line 650
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->getBluetoothVersionString()Ljava/lang/String;

    move-result-object v2

    .line 651
    .local v2, "bluetoothVersionString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->mDataExchanger:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-virtual {v12, v2}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->setBluetoothVersion(Ljava/lang/String;)V

    .line 653
    add-int/lit8 v7, v7, 0x1

    .line 654
    goto/16 :goto_1

    .line 656
    .end local v2    # "bluetoothVersionString":Ljava/lang/String;
    :cond_c
    const/4 v12, 0x1

    move/from16 v0, p4

    if-ne v0, v12, :cond_0

    .line 657
    sget-object v12, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    const-string v13, "[jdub] bluetoothVersion requested"

    invoke-static {v12, v13}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->getBluetoothVersion()[B

    move-result-object v3

    .line 660
    .restart local v3    # "bytes":[B
    if-eqz v3, :cond_0

    .line 661
    move-object/from16 v0, p6

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 663
    .end local v3    # "bytes":[B
    :cond_d
    const/4 v12, 0x2

    move/from16 v0, p3

    if-ne v0, v12, :cond_f

    .line 664
    const/4 v12, 0x2

    move/from16 v0, p4

    if-ne v0, v12, :cond_e

    .line 665
    if-eqz p5, :cond_0

    .line 666
    const/4 v4, 0x0

    .line 668
    .restart local v4    # "decoded":Ljava/lang/String;
    :try_start_4
    new-instance v5, Ljava/lang/String;

    const-string v12, "UTF-8"

    move-object/from16 v0, p5

    invoke-direct {v5, v0, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_4

    .end local v4    # "decoded":Ljava/lang/String;
    .restart local v5    # "decoded":Ljava/lang/String;
    move-object v4, v5

    .line 673
    .end local v5    # "decoded":Ljava/lang/String;
    .restart local v4    # "decoded":Ljava/lang/String;
    :goto_6
    if-eqz v4, :cond_0

    .line 675
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->macAddress:Ljava/lang/String;

    .line 676
    sget-object v12, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[jdub] macAddress: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 669
    :catch_4
    move-exception v6

    .line 671
    .restart local v6    # "e":Ljava/io/UnsupportedEncodingException;
    sget-object v12, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "catched * "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 679
    .end local v4    # "decoded":Ljava/lang/String;
    .end local v6    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_e
    const/4 v12, 0x1

    move/from16 v0, p4

    if-ne v0, v12, :cond_0

    .line 680
    sget-object v12, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    const-string v13, "[jdub] macAddress requested"

    invoke-static {v12, v13}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->getMacAddress()[B

    move-result-object v3

    .line 683
    .restart local v3    # "bytes":[B
    if-eqz v3, :cond_0

    .line 684
    move-object/from16 v0, p6

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 686
    .end local v3    # "bytes":[B
    :cond_f
    const/4 v12, 0x3

    move/from16 v0, p3

    if-ne v0, v12, :cond_11

    .line 687
    const/4 v12, 0x2

    move/from16 v0, p4

    if-ne v0, v12, :cond_10

    .line 688
    if-eqz p5, :cond_0

    .line 689
    const/4 v4, 0x0

    .line 691
    .restart local v4    # "decoded":Ljava/lang/String;
    :try_start_5
    new-instance v5, Ljava/lang/String;

    const-string v12, "UTF-8"

    move-object/from16 v0, p5

    invoke-direct {v5, v0, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_5

    .end local v4    # "decoded":Ljava/lang/String;
    .restart local v5    # "decoded":Ljava/lang/String;
    move-object v4, v5

    .line 696
    .end local v5    # "decoded":Ljava/lang/String;
    .restart local v4    # "decoded":Ljava/lang/String;
    :goto_7
    if-eqz v4, :cond_0

    .line 697
    const-string v12, " "

    invoke-virtual {v4, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->profiles:[Ljava/lang/String;

    .line 699
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->profiles:[Ljava/lang/String;

    array-length v12, v12

    if-ge v8, v12, :cond_0

    .line 700
    sget-object v12, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[jdub] profiles["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->profiles:[Ljava/lang/String;

    aget-object v14, v14, v8

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 692
    .end local v8    # "i":I
    :catch_5
    move-exception v6

    .line 694
    .restart local v6    # "e":Ljava/io/UnsupportedEncodingException;
    sget-object v12, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "catched * "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 704
    .end local v4    # "decoded":Ljava/lang/String;
    .end local v6    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_10
    const/4 v12, 0x1

    move/from16 v0, p4

    if-ne v0, v12, :cond_0

    .line 705
    sget-object v12, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    const-string v13, "[jdub] profiles requested"

    invoke-static {v12, v13}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->getProfiles()[B

    move-result-object v3

    .line 708
    .restart local v3    # "bytes":[B
    if-eqz v3, :cond_0

    .line 709
    move-object/from16 v0, p6

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 711
    .end local v3    # "bytes":[B
    :cond_11
    const/4 v12, 0x4

    move/from16 v0, p3

    if-ne v0, v12, :cond_13

    .line 712
    const/4 v12, 0x2

    move/from16 v0, p4

    if-ne v0, v12, :cond_12

    .line 713
    if-eqz p5, :cond_0

    .line 714
    const/4 v12, 0x0

    aget-byte v12, p5, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->COD:I

    .line 715
    sget-object v12, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[jdub] COD: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    aget-byte v14, p5, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 717
    :cond_12
    const/4 v12, 0x1

    move/from16 v0, p4

    if-ne v0, v12, :cond_0

    .line 718
    sget-object v12, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    const-string v13, "[jdub] COD requested"

    invoke-static {v12, v13}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->getCOD()[B

    move-result-object v3

    .line 721
    .restart local v3    # "bytes":[B
    if-eqz v3, :cond_0

    .line 722
    move-object/from16 v0, p6

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 724
    .end local v3    # "bytes":[B
    :cond_13
    const/4 v12, 0x5

    move/from16 v0, p3

    if-ne v0, v12, :cond_19

    .line 726
    const/4 v12, 0x2

    move/from16 v0, p4

    if-ne v0, v12, :cond_18

    .line 727
    if-eqz p5, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->supportedServices:[Z

    if-eqz v12, :cond_0

    .line 728
    const/4 v12, 0x0

    aget-byte v1, p5, v12

    .line 729
    .local v1, "bits":B
    const/4 v10, 0x0

    .line 731
    .local v10, "tmp":I
    and-int/lit8 v10, v1, 0x1

    .line 732
    if-eqz v10, :cond_14

    .line 733
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->supportedServices:[Z

    const/4 v13, 0x0

    const/4 v14, 0x1

    aput-boolean v14, v12, v13

    .line 738
    :goto_9
    and-int/lit8 v10, v1, 0x2

    .line 739
    if-eqz v10, :cond_15

    .line 740
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->supportedServices:[Z

    const/4 v13, 0x1

    const/4 v14, 0x1

    aput-boolean v14, v12, v13

    .line 745
    :goto_a
    and-int/lit8 v10, v1, 0x4

    .line 746
    if-eqz v10, :cond_16

    .line 747
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->supportedServices:[Z

    const/4 v13, 0x2

    const/4 v14, 0x1

    aput-boolean v14, v12, v13

    .line 752
    :goto_b
    and-int/lit8 v10, v1, 0x8

    .line 753
    if-eqz v10, :cond_17

    .line 754
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->supportedServices:[Z

    const/4 v13, 0x3

    const/4 v14, 0x1

    aput-boolean v14, v12, v13

    .line 760
    :goto_c
    sget-object v12, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[jdub] supported services [0]: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->supportedServices:[Z

    const/4 v15, 0x0

    aget-boolean v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    sget-object v12, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[jdub] supported services [1]: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->supportedServices:[Z

    const/4 v15, 0x1

    aget-boolean v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    sget-object v12, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[jdub] supported services [2]: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->supportedServices:[Z

    const/4 v15, 0x2

    aget-boolean v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    sget-object v12, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[jdub] supported services [3]: Random LE Address :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->supportedServices:[Z

    const/4 v15, 0x3

    aget-boolean v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->mDataExchanger:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->getAutoLockServiceString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->setAutoLockService(Ljava/lang/String;)V

    .line 771
    add-int/lit8 v7, v7, 0x1

    .line 772
    goto/16 :goto_1

    .line 735
    :cond_14
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->supportedServices:[Z

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput-boolean v14, v12, v13

    goto/16 :goto_9

    .line 742
    :cond_15
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->supportedServices:[Z

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput-boolean v14, v12, v13

    goto/16 :goto_a

    .line 749
    :cond_16
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->supportedServices:[Z

    const/4 v13, 0x2

    const/4 v14, 0x0

    aput-boolean v14, v12, v13

    goto/16 :goto_b

    .line 756
    :cond_17
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->supportedServices:[Z

    const/4 v13, 0x3

    const/4 v14, 0x0

    aput-boolean v14, v12, v13

    goto/16 :goto_c

    .line 773
    .end local v1    # "bits":B
    .end local v10    # "tmp":I
    :cond_18
    const/4 v12, 0x1

    move/from16 v0, p4

    if-ne v0, v12, :cond_0

    .line 774
    sget-object v12, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    const-string v13, "[jdub] supportedServices requested"

    invoke-static {v12, v13}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->getSupportedServices()[B

    move-result-object v3

    .line 777
    .restart local v3    # "bytes":[B
    if-eqz v3, :cond_0

    .line 778
    move-object/from16 v0, p6

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 780
    .end local v3    # "bytes":[B
    :cond_19
    const/4 v12, 0x6

    move/from16 v0, p3

    if-ne v0, v12, :cond_1b

    .line 781
    const/4 v12, 0x1

    move/from16 v0, p4

    if-ne v0, v12, :cond_1a

    .line 782
    sget-object v12, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    const-string v13, "[jdub] Random LE address Requested"

    invoke-static {v12, v13}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->mDataExchanger:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-virtual {v12}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->isRandomLESupported()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 785
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->getRandomLEAddress()[B

    move-result-object v3

    .line 786
    .restart local v3    # "bytes":[B
    if-eqz v3, :cond_0

    .line 787
    move-object/from16 v0, p6

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 789
    .end local v3    # "bytes":[B
    :cond_1a
    const/4 v12, 0x2

    move/from16 v0, p4

    if-ne v0, v12, :cond_0

    .line 790
    sget-object v12, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    const-string v13, "[jdub] If Random LE address supported by wearable, add support"

    invoke-static {v12, v13}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 795
    :cond_1b
    const/4 v12, 0x7

    move/from16 v0, p3

    if-ne v0, v12, :cond_1e

    .line 796
    const/4 v12, 0x2

    move/from16 v0, p4

    if-ne v0, v12, :cond_0

    .line 797
    if-eqz p5, :cond_0

    .line 798
    const/4 v4, 0x0

    .line 800
    .restart local v4    # "decoded":Ljava/lang/String;
    :try_start_6
    new-instance v5, Ljava/lang/String;

    const-string v12, "UTF-8"

    move-object/from16 v0, p5

    invoke-direct {v5, v0, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_8

    .end local v4    # "decoded":Ljava/lang/String;
    .restart local v5    # "decoded":Ljava/lang/String;
    move-object v4, v5

    .line 805
    .end local v5    # "decoded":Ljava/lang/String;
    .restart local v4    # "decoded":Ljava/lang/String;
    :goto_d
    if-eqz v4, :cond_1c

    .line 806
    const-string v12, " "

    invoke-virtual {v4, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->rssi:[Ljava/lang/String;

    .line 809
    :cond_1c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->rssi:[Ljava/lang/String;

    if-eqz v12, :cond_0

    .line 811
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->rssi:[Ljava/lang/String;

    array-length v12, v12

    if-ge v8, v12, :cond_1d

    .line 812
    sget-object v12, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[jdub] received rssi["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->rssi:[Ljava/lang/String;

    aget-object v14, v14, v8

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    .line 817
    :cond_1d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->rssi:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->getRssiOffsetString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 818
    .local v9, "rssiOffsetString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->mDataExchanger:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-virtual {v12, v9}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->setRssiOffset(Ljava/lang/String;)V

    .line 820
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 826
    .end local v4    # "decoded":Ljava/lang/String;
    .end local v8    # "i":I
    .end local v9    # "rssiOffsetString":Ljava/lang/String;
    :cond_1e
    const/16 v12, 0x11

    move/from16 v0, p3

    if-ne v0, v12, :cond_1f

    .line 827
    const/4 v12, 0x1

    move/from16 v0, p4

    if-ne v0, v12, :cond_0

    .line 828
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->configurePan()V

    goto/16 :goto_1

    .line 835
    :cond_1f
    const/16 v12, 0x12

    move/from16 v0, p3

    if-ne v0, v12, :cond_20

    .line 836
    const/4 v12, 0x1

    move/from16 v0, p4

    if-ne v0, v12, :cond_0

    .line 837
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->disconnectPan()V

    goto/16 :goto_1

    .line 839
    :cond_20
    const/16 v12, 0x14

    move/from16 v0, p3

    if-ne v0, v12, :cond_0

    .line 840
    const/4 v12, 0x2

    move/from16 v0, p4

    if-ne v0, v12, :cond_0

    .line 841
    sget-object v12, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    const-string v13, "[jdub] manually-disconnected"

    invoke-static {v12, v13}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->manualDisconnect()V

    goto/16 :goto_1

    .line 846
    :cond_21
    const/4 v12, 0x6

    move/from16 v0, p2

    if-ne v0, v12, :cond_0

    .line 847
    const/4 v12, 0x2

    move/from16 v0, p3

    if-ne v0, v12, :cond_24

    .line 848
    const/4 v12, 0x1

    move/from16 v0, p4

    if-ne v0, v12, :cond_22

    .line 849
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->getWifiP2pMacAddress()[B

    move-result-object v3

    .line 850
    .restart local v3    # "bytes":[B
    if-eqz v3, :cond_0

    .line 851
    move-object/from16 v0, p6

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 852
    .end local v3    # "bytes":[B
    :cond_22
    const/4 v12, 0x2

    move/from16 v0, p4

    if-ne v0, v12, :cond_23

    .line 853
    if-eqz p5, :cond_0

    .line 854
    const/4 v4, 0x0

    .line 856
    .restart local v4    # "decoded":Ljava/lang/String;
    :try_start_7
    new-instance v5, Ljava/lang/String;

    const-string v12, "UTF-8"

    move-object/from16 v0, p5

    invoke-direct {v5, v0, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_6

    .end local v4    # "decoded":Ljava/lang/String;
    .restart local v5    # "decoded":Ljava/lang/String;
    move-object v4, v5

    .line 861
    .end local v5    # "decoded":Ljava/lang/String;
    .restart local v4    # "decoded":Ljava/lang/String;
    :goto_f
    sget-object v12, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[wifip2p] wifip2p mac : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->generateWifiP2pMacAddressString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 864
    .local v11, "wifiP2pMacAddressString":Ljava/lang/String;
    sget-object v12, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[wifip2p] wifip2p mac wifiP2pMacAddressString : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->mDataExchanger:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-virtual {v12, v11}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->setWifiP2pMacAddress(Ljava/lang/String;)V

    .line 867
    add-int/lit8 v7, v7, 0x1

    .line 868
    goto/16 :goto_1

    .line 857
    .end local v11    # "wifiP2pMacAddressString":Ljava/lang/String;
    :catch_6
    move-exception v6

    .line 859
    .restart local v6    # "e":Ljava/io/UnsupportedEncodingException;
    sget-object v12, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "catched * "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 869
    .end local v4    # "decoded":Ljava/lang/String;
    .end local v6    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_23
    const/4 v12, 0x3

    move/from16 v0, p4

    if-ne v0, v12, :cond_0

    .line 870
    sget-object v12, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    const-string v13, "RESPONSE_ERROR of wifi p2p mac exchange received."

    invoke-static {v12, v13}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->mDataExchanger:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    const-string v13, ""

    invoke-virtual {v12, v13}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->setWifiP2pMacAddress(Ljava/lang/String;)V

    .line 872
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 874
    :cond_24
    const/16 v12, 0x11

    move/from16 v0, p3

    if-ne v0, v12, :cond_26

    .line 875
    const/4 v12, 0x1

    move/from16 v0, p4

    if-ne v0, v12, :cond_25

    .line 876
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->connectWifiP2p(I)V

    goto/16 :goto_1

    .line 878
    :cond_25
    const/4 v12, 0x2

    move/from16 v0, p4

    if-ne v0, v12, :cond_0

    .line 880
    sget-object v12, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    const-string v13, "Response of wifi p2p connection received."

    invoke-static {v12, v13}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 882
    :cond_26
    const/16 v12, 0x12

    move/from16 v0, p3

    if-ne v0, v12, :cond_2a

    .line 883
    const/4 v12, 0x1

    move/from16 v0, p4

    if-ne v0, v12, :cond_28

    .line 884
    sget-object v12, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    const-string v13, "Request of wifi p2p disconnection received."

    invoke-static {v12, v13}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->mDataExchanger:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-virtual {v12}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->isPermitDisconnect()Z

    move-result v12

    if-eqz v12, :cond_27

    .line 886
    const/4 v12, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->sendResDisconnectWifiP2p(I)V

    goto/16 :goto_1

    .line 888
    :cond_27
    const/4 v12, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->sendResDisconnectWifiP2p(I)V

    goto/16 :goto_1

    .line 890
    :cond_28
    const/4 v12, 0x2

    move/from16 v0, p4

    if-ne v0, v12, :cond_29

    .line 891
    sget-object v12, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    const-string v13, "Response of wifi p2p disconnection received."

    invoke-static {v12, v13}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->mDataExchanger:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->wifiP2pDisconnectResponse(I)V

    goto/16 :goto_1

    .line 893
    :cond_29
    const/4 v12, 0x3

    move/from16 v0, p4

    if-ne v0, v12, :cond_0

    .line 894
    sget-object v12, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    const-string v13, "RESPONSE_ERROR of wifi p2p disconnection received."

    invoke-static {v12, v13}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->mDataExchanger:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    const/4 v13, 0x3

    invoke-virtual {v12, v13}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->wifiP2pDisconnectResponse(I)V

    goto/16 :goto_1

    .line 897
    :cond_2a
    const/4 v12, 0x3

    move/from16 v0, p3

    if-ne v0, v12, :cond_2b

    .line 898
    const/4 v12, 0x2

    move/from16 v0, p4

    if-ne v0, v12, :cond_0

    .line 899
    if-eqz p5, :cond_0

    .line 900
    const/4 v4, 0x0

    .line 902
    .restart local v4    # "decoded":Ljava/lang/String;
    :try_start_8
    new-instance v5, Ljava/lang/String;

    const-string v12, "UTF-8"

    move-object/from16 v0, p5

    invoke-direct {v5, v0, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_8} :catch_7

    .end local v4    # "decoded":Ljava/lang/String;
    .restart local v5    # "decoded":Ljava/lang/String;
    move-object v4, v5

    .line 907
    .end local v5    # "decoded":Ljava/lang/String;
    .restart local v4    # "decoded":Ljava/lang/String;
    :goto_10
    sget-object v12, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[wifip2p] wifip2p ip address : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->mDataExchanger:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-virtual {v12, v4}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->connectSAAccessoryWifi(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 903
    :catch_7
    move-exception v6

    .line 905
    .restart local v6    # "e":Ljava/io/UnsupportedEncodingException;
    sget-object v12, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "catched * "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 911
    .end local v4    # "decoded":Ljava/lang/String;
    .end local v6    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_2b
    const/16 v12, 0x13

    move/from16 v0, p3

    if-ne v0, v12, :cond_0

    .line 912
    const/4 v12, 0x2

    move/from16 v0, p4

    if-eq v0, v12, :cond_2c

    const/4 v12, 0x3

    move/from16 v0, p4

    if-ne v0, v12, :cond_0

    .line 913
    :cond_2c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->mDataExchanger:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-virtual {v12}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->notifyWifiP2pConnectionCanceled()V

    goto/16 :goto_1

    .line 801
    .restart local v4    # "decoded":Ljava/lang/String;
    :catch_8
    move-exception v12

    goto/16 :goto_d
.end method

.method private sendData(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 1400
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 1401
    .local v4, "listSize":I
    if-lez v4, :cond_4

    .line 1402
    const/4 v0, 0x0

    .line 1405
    .local v0, "bytes":[B
    const/4 v6, 0x0

    .line 1406
    .local v6, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 1407
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 1408
    .local v2, "item":[B
    array-length v7, v2

    add-int/2addr v6, v7

    .line 1406
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1411
    .end local v2    # "item":[B
    :cond_0
    new-array v0, v6, [B

    .line 1412
    const/4 v5, 0x0

    .line 1415
    .local v5, "pointer":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 1416
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_2

    .line 1417
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 1419
    .restart local v2    # "item":[B
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    array-length v7, v2

    if-ge v3, v7, :cond_1

    .line 1420
    aget-byte v7, v2, v3

    aput-byte v7, v0, v5

    .line 1421
    add-int/lit8 v5, v5, 0x1

    .line 1419
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1416
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1425
    .end local v2    # "item":[B
    .end local v3    # "j":I
    :cond_2
    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    const-string v8, "[jdub] send response data"

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    const/4 v1, 0x0

    :goto_3
    array-length v7, v0

    if-ge v1, v7, :cond_3

    .line 1428
    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[jdub] >> send response data["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-byte v9, v0, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1430
    :cond_3
    iget-object v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->mDataExchanger:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-virtual {v7, v0}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->sendBytes([B)Z

    .line 1434
    .end local v0    # "bytes":[B
    .end local v1    # "i":I
    .end local v5    # "pointer":I
    .end local v6    # "size":I
    :cond_4
    return-void
.end method


# virtual methods
.method public generateWifiP2pMacAddressString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "macAddress"    # Ljava/lang/String;

    .prologue
    .line 1632
    const-string v1, ""

    .line 1634
    .local v1, "str":Ljava/lang/String;
    const-string v0, "WIFIP2P_MAC#"

    .line 1636
    .local v0, "prefix":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1638
    return-object v1
.end method

.method public getAutoLockServiceString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 969
    const-string v1, ""

    .line 971
    .local v1, "str":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->supportedServices:[Z

    aget-boolean v2, v2, v3

    if-ne v2, v3, :cond_0

    .line 972
    const-string v0, "AUTO_LOCK_SERVICE#"

    .line 974
    .local v0, "prefix":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "TRUE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 981
    :goto_0
    return-object v1

    .line 976
    .end local v0    # "prefix":Ljava/lang/String;
    :cond_0
    const-string v0, "AUTO_LOCK_SERVICE#"

    .line 978
    .restart local v0    # "prefix":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "FALSE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getBluetoothVersionString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 923
    const-string v1, ""

    .line 925
    .local v1, "str":Ljava/lang/String;
    const-string v0, "BLUETOOTH_VERSION#"

    .line 927
    .local v0, "prefix":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->bluetoothVersion:I

    invoke-static {v3}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->convertBluetoothVersionType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 929
    return-object v1
.end method

.method public getRandomLEAddressSupport()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1001
    const-string v1, ""

    .line 1002
    .local v1, "str":Ljava/lang/String;
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->mServiceProfileVersion:Ljava/lang/String;

    const-string v3, "2.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1004
    const-string v0, "RANDOM_LE_ADDRESS_SUPPORT#"

    .line 1006
    .local v0, "prefix":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "TRUE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1013
    :goto_0
    return-object v1

    .line 1008
    .end local v0    # "prefix":Ljava/lang/String;
    :cond_0
    const-string v0, "RANDOM_LE_ADDRESS_SUPPORT#"

    .line 1010
    .restart local v0    # "prefix":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "FALSE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getRemoteBluetoothVersion()I
    .locals 1

    .prologue
    .line 1656
    iget v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->bluetoothVersion:I

    return v0
.end method

.method public getRemoteCOD()I
    .locals 1

    .prologue
    .line 1668
    iget v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->COD:I

    return v0
.end method

.method public getRemoteMacAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1660
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->macAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1652
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getRemotePlatformName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1644
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->platformName:Ljava/lang/String;

    return-object v0
.end method

.method public getRemotePlatformVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1648
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->platformVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteProfiles()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1664
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->profiles:[Ljava/lang/String;

    return-object v0
.end method

.method public getRssiOffsetString([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "offsets"    # [Ljava/lang/String;

    .prologue
    .line 987
    const-string v1, ""

    .line 989
    .local v1, "str":Ljava/lang/String;
    array-length v2, p1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 990
    const-string v0, "RSSI_OFFSET#"

    .line 992
    .local v0, "prefix":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 995
    .end local v0    # "prefix":Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[jdub] str : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    return-object v1
.end method

.method public parse([B)Z
    .locals 17
    .param p1, "stream"    # [B

    .prologue
    .line 441
    const/4 v14, 0x0

    .line 443
    .local v14, "result":Z
    const/4 v13, 0x0

    .line 449
    .local v13, "position":I
    const/4 v6, 0x0

    .line 452
    .local v6, "data":[B
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 455
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v11, 0x0

    .line 457
    .local v11, "featureExchangeSuccessCount":I
    :cond_0
    :goto_0
    :try_start_0
    move-object/from16 v0, p1

    array-length v1, v0

    if-ge v13, v1, :cond_2

    .line 458
    aget-byte v2, p1, v13

    .line 459
    .local v2, "length":I
    add-int/lit8 v13, v13, 0x1

    .line 461
    aget-byte v3, p1, v13

    .line 462
    .local v3, "mainCommand":I
    add-int/lit8 v13, v13, 0x1

    .line 464
    aget-byte v4, p1, v13

    .line 465
    .local v4, "subCommand":I
    add-int/lit8 v13, v13, 0x1

    .line 467
    aget-byte v5, p1, v13

    .line 468
    .local v5, "typeOfCommand":I
    add-int/lit8 v13, v13, 0x1

    .line 470
    add-int/lit8 v9, v2, -0x4

    .line 471
    .local v9, "dataSize":I
    if-lez v9, :cond_1

    .line 472
    new-array v6, v9, [B

    .line 473
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v9, :cond_1

    .line 474
    aget-byte v1, p1, v13

    aput-byte v1, v6, v12

    .line 475
    add-int/lit8 v13, v13, 0x1

    .line 473
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .end local v12    # "i":I
    :cond_1
    move-object/from16 v1, p0

    .line 479
    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->process(IIII[BLjava/util/List;)I

    move-result v8

    .line 480
    .local v8, "count":I
    add-int/2addr v11, v8

    .line 483
    if-eqz v6, :cond_0

    .line 484
    const/4 v6, 0x0

    goto :goto_0

    .line 489
    .end local v2    # "length":I
    .end local v3    # "mainCommand":I
    .end local v4    # "subCommand":I
    .end local v5    # "typeOfCommand":I
    .end local v8    # "count":I
    .end local v9    # "dataSize":I
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->sendData(Ljava/util/List;)V

    .line 491
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[jdub] Parse, featureExchangeSuccessCount: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v1, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->mServiceProfileVersion:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 495
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->mServiceProfileVersion:Ljava/lang/String;

    const-string v15, "2.0"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 499
    const/4 v1, 0x5

    if-ne v11, v1, :cond_3

    .line 500
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->mDataExchanger:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->sendFeatureExchangeSuccessEvent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    :cond_3
    :goto_2
    const/4 v14, 0x1

    .line 517
    :goto_3
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 518
    const/4 v7, 0x0

    .line 520
    return v14

    .line 504
    :cond_4
    const/4 v1, 0x2

    if-ne v11, v1, :cond_3

    .line 505
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->mDataExchanger:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->sendFeatureExchangeSuccessEvent()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 511
    :catch_0
    move-exception v10

    .line 512
    .local v10, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Parse, Exception Occured: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v1, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    const/4 v14, 0x0

    goto :goto_3
.end method

.method public sendConnectWifiP2p(I)V
    .locals 5
    .param p1, "ReqOrRes"    # I

    .prologue
    const/4 v3, 0x4

    .line 1502
    new-array v0, v3, [B

    .line 1503
    .local v0, "bytes":[B
    const/4 v2, 0x0

    aput-byte v3, v0, v2

    .line 1504
    const/4 v2, 0x1

    const/4 v3, 0x6

    aput-byte v3, v0, v2

    .line 1505
    const/4 v2, 0x2

    const/16 v3, 0x11

    aput-byte v3, v0, v2

    .line 1506
    const/4 v2, 0x3

    int-to-byte v3, p1

    aput-byte v3, v0, v2

    .line 1509
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1510
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[jdub] >> send request data["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1513
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->mDataExchanger:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-virtual {v2, v0}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->sendBytes([B)Z

    .line 1514
    return-void
.end method

.method public sendDisconnectedNotification()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x4

    .line 429
    new-array v0, v2, [B

    .line 430
    .local v0, "data":[B
    const/4 v1, 0x0

    aput-byte v2, v0, v1

    .line 431
    const/4 v1, 0x1

    aput-byte v3, v0, v1

    .line 432
    const/16 v1, 0x14

    aput-byte v1, v0, v3

    .line 433
    const/4 v1, 0x3

    aput-byte v2, v0, v1

    .line 435
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->mDataExchanger:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-virtual {v1, v0}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->sendBytes([B)Z

    .line 438
    return-void
.end method

.method public sendPanResponseData(ZLjava/lang/String;)V
    .locals 11
    .param p1, "result"    # Z
    .param p2, "errorMessage"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 1449
    if-ne p1, v6, :cond_0

    .line 1450
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    const-string v5, "[jdub] send pan connection request"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1452
    new-array v0, v10, [B

    .line 1453
    .local v0, "bytes":[B
    aput-byte v10, v0, v9

    .line 1454
    aput-byte v7, v0, v6

    .line 1455
    const/16 v4, 0x13

    aput-byte v4, v0, v7

    .line 1456
    aput-byte v6, v0, v8

    .line 1457
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->mDataExchanger:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-virtual {v4, v0}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->sendBytes([B)Z

    .line 1460
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_1

    .line 1461
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[jdub] >> send pan connection request data["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1460
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1468
    .end local v0    # "bytes":[B
    .end local v2    # "i":I
    :cond_0
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    const-string v5, "[jdub] send error response"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1470
    const/4 v1, 0x0

    .line 1472
    .local v1, "encoded":[B
    :try_start_0
    const-string v4, "UTF-8"

    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1478
    :goto_1
    if-nez v1, :cond_2

    .line 1495
    .end local v1    # "encoded":[B
    :cond_1
    :goto_2
    return-void

    .line 1481
    .restart local v1    # "encoded":[B
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 1483
    .local v3, "msgLength":I
    add-int/lit8 v4, v3, 0x4

    new-array v0, v4, [B

    .line 1484
    .restart local v0    # "bytes":[B
    add-int/lit8 v4, v3, 0x4

    int-to-byte v4, v4

    aput-byte v4, v0, v9

    .line 1485
    aput-byte v7, v0, v6

    .line 1486
    const/16 v4, 0x13

    aput-byte v4, v0, v7

    .line 1487
    aput-byte v8, v0, v8

    .line 1488
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v3, :cond_3

    .line 1489
    add-int/lit8 v4, v2, 0x4

    aget-byte v5, v1, v2

    aput-byte v5, v0, v4

    .line 1488
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1492
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->mDataExchanger:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-virtual {v4, v0}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->sendBytes([B)Z

    goto :goto_2

    .line 1473
    .end local v0    # "bytes":[B
    .end local v2    # "i":I
    .end local v3    # "msgLength":I
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public sendReqCancelConnectWifiP2p()V
    .locals 4

    .prologue
    const/4 v2, 0x4

    const/4 v3, 0x1

    .line 1537
    new-array v0, v2, [B

    .line 1538
    .local v0, "bytes":[B
    const/4 v1, 0x0

    aput-byte v2, v0, v1

    .line 1539
    const/4 v1, 0x6

    aput-byte v1, v0, v3

    .line 1540
    const/4 v1, 0x2

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    .line 1541
    const/4 v1, 0x3

    aput-byte v3, v0, v1

    .line 1543
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->mDataExchanger:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-virtual {v1, v0}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->sendBytes([B)Z

    .line 1544
    return-void
.end method

.method public sendReqDisconnectWifiP2p()V
    .locals 4

    .prologue
    const/4 v2, 0x4

    const/4 v3, 0x1

    .line 1517
    new-array v0, v2, [B

    .line 1518
    .local v0, "bytes":[B
    const/4 v1, 0x0

    aput-byte v2, v0, v1

    .line 1519
    const/4 v1, 0x6

    aput-byte v1, v0, v3

    .line 1520
    const/4 v1, 0x2

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    .line 1521
    const/4 v1, 0x3

    aput-byte v3, v0, v1

    .line 1523
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->mDataExchanger:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-virtual {v1, v0}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->sendBytes([B)Z

    .line 1524
    return-void
.end method

.method public sendReqWifiP2pIpAddress()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 1547
    new-array v0, v4, [B

    .line 1548
    .local v0, "bytes":[B
    const/4 v1, 0x0

    aput-byte v4, v0, v1

    .line 1549
    const/4 v1, 0x6

    aput-byte v1, v0, v2

    .line 1550
    const/4 v1, 0x2

    aput-byte v3, v0, v1

    .line 1551
    aput-byte v2, v0, v3

    .line 1553
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->mDataExchanger:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-virtual {v1, v0}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->sendBytes([B)Z

    .line 1554
    return-void
.end method

.method public sendRequestData(Ljava/lang/String;)V
    .locals 12
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 329
    const/4 v1, 0x0

    .line 330
    .local v1, "data":[B
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 332
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<[B>;"
    iget-object v9, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->mDataExchanger:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->getRandomLEAddressSupport()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->setRandomLEAddressSupport(Ljava/lang/String;)V

    .line 334
    const/4 v9, 0x4

    new-array v0, v9, [B

    .line 335
    .local v0, "bluetoothVersion":[B
    const/4 v9, 0x0

    const/4 v10, 0x4

    aput-byte v10, v0, v9

    .line 336
    const/4 v9, 0x1

    const/4 v10, 0x2

    aput-byte v10, v0, v9

    .line 337
    const/4 v9, 0x2

    const/4 v10, 0x1

    aput-byte v10, v0, v9

    .line 338
    const/4 v9, 0x3

    const/4 v10, 0x1

    aput-byte v10, v0, v9

    .line 339
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    const/4 v9, 0x4

    new-array v7, v9, [B

    .line 342
    .local v7, "services":[B
    const/4 v9, 0x0

    const/4 v10, 0x4

    aput-byte v10, v7, v9

    .line 343
    const/4 v9, 0x1

    const/4 v10, 0x2

    aput-byte v10, v7, v9

    .line 344
    const/4 v9, 0x2

    const/4 v10, 0x5

    aput-byte v10, v7, v9

    .line 345
    const/4 v9, 0x3

    const/4 v10, 0x1

    aput-byte v10, v7, v9

    .line 346
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    sget-object v9, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->mServiceProfileVersion:Ljava/lang/String;

    const-string v10, "2.0"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 351
    const/4 v9, 0x4

    new-array v5, v9, [B

    .line 352
    .local v5, "networkTypes":[B
    const/4 v9, 0x0

    const/4 v10, 0x4

    aput-byte v10, v5, v9

    .line 353
    const/4 v9, 0x1

    const/4 v10, 0x1

    aput-byte v10, v5, v9

    .line 354
    const/4 v9, 0x2

    const/4 v10, 0x5

    aput-byte v10, v5, v9

    .line 355
    const/4 v9, 0x3

    const/4 v10, 0x1

    aput-byte v10, v5, v9

    .line 356
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    const/4 v9, 0x4

    new-array v2, v9, [B

    .line 359
    .local v2, "getLEAddress":[B
    const/4 v9, 0x0

    const/4 v10, 0x4

    aput-byte v10, v2, v9

    .line 360
    const/4 v9, 0x1

    const/4 v10, 0x2

    aput-byte v10, v2, v9

    .line 361
    const/4 v9, 0x2

    const/4 v10, 0x6

    aput-byte v10, v2, v9

    .line 362
    const/4 v9, 0x3

    const/4 v10, 0x1

    aput-byte v10, v2, v9

    .line 363
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    const/4 v9, 0x4

    new-array v8, v9, [B

    .line 366
    .local v8, "wifiP2pMac":[B
    const/4 v9, 0x0

    const/4 v10, 0x4

    aput-byte v10, v8, v9

    .line 367
    const/4 v9, 0x1

    const/4 v10, 0x6

    aput-byte v10, v8, v9

    .line 368
    const/4 v9, 0x2

    const/4 v10, 0x2

    aput-byte v10, v8, v9

    .line 369
    const/4 v9, 0x3

    const/4 v10, 0x1

    aput-byte v10, v8, v9

    .line 370
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    .end local v2    # "getLEAddress":[B
    .end local v5    # "networkTypes":[B
    .end local v8    # "wifiP2pMac":[B
    :cond_0
    sget-object v9, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->mServiceProfileVersion:Ljava/lang/String;

    const-string v10, "2.0"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 376
    const/4 v9, 0x4

    new-array v6, v9, [B

    .line 377
    .local v6, "rssi":[B
    const/4 v9, 0x0

    const/4 v10, 0x4

    aput-byte v10, v6, v9

    .line 378
    const/4 v9, 0x1

    const/4 v10, 0x2

    aput-byte v10, v6, v9

    .line 379
    const/4 v9, 0x2

    const/4 v10, 0x7

    aput-byte v10, v6, v9

    .line 380
    const/4 v9, 0x3

    const/4 v10, 0x1

    aput-byte v10, v6, v9

    .line 381
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    .end local v6    # "rssi":[B
    :cond_1
    invoke-direct {p0, v4}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->getBytes(Ljava/util/List;)[B

    move-result-object v1

    .line 387
    if-eqz v1, :cond_3

    .line 389
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v9, v1

    if-ge v3, v9, :cond_2

    .line 390
    sget-object v9, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[jdub] >> send request data["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-byte v11, v1, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 393
    :cond_2
    iget-object v9, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->mDataExchanger:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-virtual {v9, v1}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->sendBytes([B)Z

    .line 395
    .end local v3    # "i":I
    :cond_3
    return-void
.end method

.method public sendResDisconnectWifiP2p(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x4

    .line 1527
    new-array v0, v2, [B

    .line 1528
    .local v0, "bytes":[B
    const/4 v1, 0x0

    aput-byte v2, v0, v1

    .line 1529
    const/4 v1, 0x1

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    .line 1530
    const/4 v1, 0x2

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    .line 1531
    const/4 v1, 0x3

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 1533
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->mDataExchanger:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-virtual {v1, v0}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->sendBytes([B)Z

    .line 1534
    return-void
.end method
