.class public final Lcom/samsung/android/hostmanager/status/StatusParser;
.super Ljava/lang/Object;
.source "StatusParser.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/samsung/android/hostmanager/status/StatusParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hostmanager/status/StatusParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ParseDeviceStatusFromXML(Landroid/content/Context;Lcom/samsung/android/hostmanager/aidl/DeviceInfo;Ljava/lang/String;)V
    .locals 37
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deviceInfo"    # Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    .param p2, "xmlFileName"    # Ljava/lang/String;

    .prologue
    .line 45
    sget-object v34, Lcom/samsung/android/hostmanager/status/StatusParser;->TAG:Ljava/lang/String;

    const-string v35, "ST::ParseDeviceStatusFromXML()"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const/16 v23, 0x0

    .line 48
    .local v23, "loadfile":Ljava/io/File;
    const/16 v32, 0x0

    .line 50
    .local v32, "xmlData":Ljava/io/InputStream;
    const/16 v26, 0x0

    .line 52
    .local v26, "root":Lorg/w3c/dom/Document;
    new-instance v23, Ljava/io/File;

    .end local v23    # "loadfile":Ljava/io/File;
    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    .restart local v23    # "loadfile":Ljava/io/File;
    if-eqz v23, :cond_17

    .line 57
    :try_start_0
    new-instance v33, Ljava/io/BufferedInputStream;

    new-instance v34, Ljava/io/FileInputStream;

    move-object/from16 v0, v34

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct/range {v33 .. v34}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .end local v32    # "xmlData":Ljava/io/InputStream;
    .local v33, "xmlData":Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v12

    .line 59
    .local v12, "builder":Ljavax/xml/parsers/DocumentBuilder;
    const/16 v34, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v12, v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v26

    .line 61
    if-eqz v26, :cond_28

    .line 63
    const/16 v24, 0x0

    .line 66
    .local v24, "node":Lorg/w3c/dom/Node;
    const-string v34, "deviceID"

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v34

    const/16 v35, 0x0

    invoke-interface/range {v34 .. v35}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v24

    .line 67
    if-eqz v24, :cond_0

    .line 68
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->setDeviceID(Ljava/lang/String;)V

    .line 71
    :cond_0
    const-string v34, "deviceName"

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v34

    const/16 v35, 0x0

    invoke-interface/range {v34 .. v35}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v24

    .line 72
    if-eqz v24, :cond_1

    .line 73
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->setDeviceName(Ljava/lang/String;)V

    .line 76
    :cond_1
    const-string v34, "devicePlatform"

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v34

    const/16 v35, 0x0

    invoke-interface/range {v34 .. v35}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v24

    .line 77
    if-eqz v24, :cond_2

    .line 78
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->setDevicePlatform(Ljava/lang/String;)V

    .line 81
    :cond_2
    const-string v34, "devicePlatformVersion"

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v34

    const/16 v35, 0x0

    invoke-interface/range {v34 .. v35}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v24

    .line 82
    if-eqz v24, :cond_3

    .line 83
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->setDevicePlatformVersion(Ljava/lang/String;)V

    .line 86
    :cond_3
    const-string v34, "deviceType"

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v34

    const/16 v35, 0x0

    invoke-interface/range {v34 .. v35}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v24

    .line 87
    if-eqz v24, :cond_4

    .line 88
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->setDeviceType(Ljava/lang/String;)V

    .line 91
    :cond_4
    const-string v34, "modelNumber"

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v34

    const/16 v35, 0x0

    invoke-interface/range {v34 .. v35}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v24

    .line 92
    if-eqz v24, :cond_5

    .line 93
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->setModelNumber(Ljava/lang/String;)V

    .line 96
    :cond_5
    const-string v34, "swVersion"

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v34

    const/16 v35, 0x0

    invoke-interface/range {v34 .. v35}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v24

    .line 97
    if-eqz v24, :cond_6

    .line 98
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->setSwVersion(Ljava/lang/String;)V

    .line 101
    :cond_6
    const-string v34, "salesCode"

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v34

    const/16 v35, 0x0

    invoke-interface/range {v34 .. v35}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v24

    .line 102
    if-eqz v24, :cond_7

    .line 103
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->setSalesCode(Ljava/lang/String;)V

    .line 106
    :cond_7
    const-string v34, "serialNumber"

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v34

    const/16 v35, 0x0

    invoke-interface/range {v34 .. v35}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v24

    .line 107
    if-eqz v24, :cond_8

    .line 108
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->setSerialNumber(Ljava/lang/String;)V

    .line 111
    :cond_8
    const-string v34, "MCC"

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v34

    const/16 v35, 0x0

    invoke-interface/range {v34 .. v35}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v24

    .line 112
    if-eqz v24, :cond_9

    .line 113
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->setMCC(Ljava/lang/String;)V

    .line 116
    :cond_9
    const-string v34, "MNC"

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v34

    const/16 v35, 0x0

    invoke-interface/range {v34 .. v35}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v24

    .line 117
    if-eqz v24, :cond_a

    .line 118
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->setMNC(Ljava/lang/String;)V

    .line 121
    :cond_a
    const-string v34, "connectivity"

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v34

    const/16 v35, 0x0

    invoke-interface/range {v34 .. v35}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v24

    .line 122
    if-eqz v24, :cond_d

    .line 123
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 124
    .local v15, "connectivity":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    .line 125
    .local v13, "childNodesLength":I
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    move/from16 v0, v19

    if-ge v0, v13, :cond_c

    .line 127
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v34

    if-eqz v34, :cond_b

    .line 128
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v22

    .line 129
    .local v22, "key":Ljava/lang/String;
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v30

    .line 131
    .local v30, "value":Ljava/lang/String;
    const-string v34, "#text"

    move-object/from16 v0, v34

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_b

    .line 132
    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .end local v22    # "key":Ljava/lang/String;
    .end local v30    # "value":Ljava/lang/String;
    :cond_b
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 137
    :cond_c
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->setConnectivity(Ljava/util/HashMap;)V

    .line 141
    .end local v13    # "childNodesLength":I
    .end local v15    # "connectivity":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19    # "i":I
    :cond_d
    const-string v34, "app"

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v34

    if-eqz v34, :cond_1c

    .line 143
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v7, "appinfolist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/AppInfo;>;"
    const-string v34, "app"

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    .line 146
    .local v5, "appLength":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_1
    move/from16 v0, v19

    if-ge v0, v5, :cond_1b

    .line 147
    new-instance v6, Lcom/samsung/android/hostmanager/aidl/AppInfo;

    invoke-direct {v6}, Lcom/samsung/android/hostmanager/aidl/AppInfo;-><init>()V

    .line 149
    .local v6, "appinfo":Lcom/samsung/android/hostmanager/aidl/AppInfo;
    const/4 v8, 0x0

    .line 152
    .local v8, "appnode":Lorg/w3c/dom/Node;
    const-string v34, "name"

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 153
    if-eqz v8, :cond_e

    .line 154
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->setName(Ljava/lang/String;)V

    .line 157
    :cond_e
    const-string v34, "packagename"

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 158
    if-eqz v8, :cond_f

    .line 159
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->setPackageName(Ljava/lang/String;)V

    .line 162
    :cond_f
    const-string v34, "version"

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 163
    if-eqz v8, :cond_10

    .line 164
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->setVersion(Ljava/lang/String;)V

    .line 167
    :cond_10
    const-string v34, "preloaded"

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 168
    if-eqz v8, :cond_11

    .line 169
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->setPreloaded(Ljava/lang/String;)V

    .line 172
    :cond_11
    const-string v34, "role"

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 173
    if-eqz v8, :cond_12

    .line 174
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->setRole(Ljava/lang/String;)V

    .line 177
    :cond_12
    const-string v34, "isAppWidget"

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 178
    if-eqz v8, :cond_13

    .line 179
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->setIsAppWidget(Ljava/lang/String;)V

    .line 182
    :cond_13
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 184
    .local v18, "featuresMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v34, "features"

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v34

    if-eqz v34, :cond_1a

    .line 185
    const-string v34, "features"

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v34

    .line 186
    move-object/from16 v0, v34

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 187
    .local v3, "appFeatures":Lorg/w3c/dom/NodeList;
    if-eqz v3, :cond_19

    .line 188
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    .line 189
    .local v4, "appFeaturesLength":I
    const/16 v21, 0x0

    .local v21, "k":I
    :goto_2
    move/from16 v0, v21

    if-ge v0, v4, :cond_18

    .line 192
    move/from16 v0, v21

    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v34

    if-eqz v34, :cond_14

    .line 193
    move/from16 v0, v21

    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v22

    .line 194
    .restart local v22    # "key":Ljava/lang/String;
    const-string v34, "#text"

    move-object/from16 v0, v22

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_15

    .line 189
    .end local v22    # "key":Ljava/lang/String;
    :cond_14
    :goto_3
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 197
    .restart local v22    # "key":Ljava/lang/String;
    :cond_15
    move/from16 v0, v21

    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v29

    .line 199
    .local v29, "textContent":Ljava/lang/String;
    new-instance v31, Ljava/util/HashMap;

    invoke-direct/range {v31 .. v31}, Ljava/util/HashMap;-><init>()V

    .line 201
    .local v31, "value":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, v31

    move-object/from16 v1, v22

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    move/from16 v0, v21

    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Lorg/w3c/dom/Node;->hasAttributes()Z

    move-result v34

    if-eqz v34, :cond_16

    .line 204
    move/from16 v0, v21

    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v10

    .line 205
    .local v10, "attrs":Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v10}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v11

    .line 206
    .local v11, "attrsGetLength":I
    const/16 v20, 0x0

    .local v20, "j":I
    :goto_4
    move/from16 v0, v20

    if-ge v0, v11, :cond_16

    .line 207
    move/from16 v0, v20

    invoke-interface {v10, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/Attr;

    .line 209
    .local v9, "attribute":Lorg/w3c/dom/Attr;
    invoke-interface {v9}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v34

    invoke-interface {v9}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v34, Lcom/samsung/android/hostmanager/status/StatusParser;->TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "jangil::hasAttribute::"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-interface {v9}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "::"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    .line 211
    invoke-interface {v9}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 210
    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 214
    .end local v9    # "attribute":Lorg/w3c/dom/Attr;
    .end local v10    # "attrs":Lorg/w3c/dom/NamedNodeMap;
    .end local v11    # "attrsGetLength":I
    .end local v20    # "j":I
    :cond_16
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_3

    .line 312
    .end local v3    # "appFeatures":Lorg/w3c/dom/NodeList;
    .end local v4    # "appFeaturesLength":I
    .end local v5    # "appLength":I
    .end local v6    # "appinfo":Lcom/samsung/android/hostmanager/aidl/AppInfo;
    .end local v7    # "appinfolist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/AppInfo;>;"
    .end local v8    # "appnode":Lorg/w3c/dom/Node;
    .end local v12    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v18    # "featuresMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v19    # "i":I
    .end local v21    # "k":I
    .end local v22    # "key":Ljava/lang/String;
    .end local v24    # "node":Lorg/w3c/dom/Node;
    .end local v29    # "textContent":Ljava/lang/String;
    .end local v31    # "value":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v17

    move-object/from16 v32, v33

    .line 313
    .end local v33    # "xmlData":Ljava/io/InputStream;
    .local v17, "e":Ljava/lang/RuntimeException;
    .restart local v32    # "xmlData":Ljava/io/InputStream;
    :goto_5
    :try_start_2
    sget-object v34, Lcom/samsung/android/hostmanager/status/StatusParser;->TAG:Ljava/lang/String;

    const-string v35, "ST::RuntimeException"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-virtual/range {v17 .. v17}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 320
    if-eqz v32, :cond_17

    .line 321
    :try_start_3
    invoke-virtual/range {v32 .. v32}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 328
    .end local v17    # "e":Ljava/lang/RuntimeException;
    :cond_17
    :goto_6
    return-void

    .line 218
    .end local v32    # "xmlData":Ljava/io/InputStream;
    .restart local v3    # "appFeatures":Lorg/w3c/dom/NodeList;
    .restart local v4    # "appFeaturesLength":I
    .restart local v5    # "appLength":I
    .restart local v6    # "appinfo":Lcom/samsung/android/hostmanager/aidl/AppInfo;
    .restart local v7    # "appinfolist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/AppInfo;>;"
    .restart local v8    # "appnode":Lorg/w3c/dom/Node;
    .restart local v12    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v18    # "featuresMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v19    # "i":I
    .restart local v21    # "k":I
    .restart local v24    # "node":Lorg/w3c/dom/Node;
    .restart local v33    # "xmlData":Ljava/io/InputStream;
    :cond_18
    :try_start_4
    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->setFeatures(Ljava/util/HashMap;)V

    .line 220
    .end local v4    # "appFeaturesLength":I
    .end local v21    # "k":I
    :cond_19
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    .end local v3    # "appFeatures":Lorg/w3c/dom/NodeList;
    :cond_1a
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_1

    .line 224
    .end local v6    # "appinfo":Lcom/samsung/android/hostmanager/aidl/AppInfo;
    .end local v8    # "appnode":Lorg/w3c/dom/Node;
    .end local v18    # "featuresMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_1b
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->setAppInfoList(Ljava/util/ArrayList;)V

    .line 229
    .end local v5    # "appLength":I
    .end local v7    # "appinfolist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/AppInfo;>;"
    .end local v19    # "i":I
    :cond_1c
    const-string v34, "deviceFeature"

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v34

    const/16 v35, 0x0

    invoke-interface/range {v34 .. v35}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v24

    .line 230
    if-eqz v24, :cond_1f

    .line 231
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 233
    .local v16, "deviceFeature":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    .line 234
    .local v14, "childnodesLength":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_7
    move/from16 v0, v19

    if-ge v0, v14, :cond_1e

    .line 236
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v34

    if-eqz v34, :cond_1d

    .line 237
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v22

    .line 238
    .restart local v22    # "key":Ljava/lang/String;
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v30

    .line 240
    .restart local v30    # "value":Ljava/lang/String;
    const-string v34, "#text"

    move-object/from16 v0, v34

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_1d

    .line 241
    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .end local v22    # "key":Ljava/lang/String;
    .end local v30    # "value":Ljava/lang/String;
    :cond_1d
    add-int/lit8 v19, v19, 0x1

    goto :goto_7

    .line 246
    :cond_1e
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->setDeviceFeature(Ljava/util/HashMap;)V

    .line 250
    .end local v14    # "childnodesLength":I
    .end local v16    # "deviceFeature":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19    # "i":I
    :cond_1f
    const-string v34, "security"

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v34

    const/16 v35, 0x0

    invoke-interface/range {v34 .. v35}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v24

    .line 251
    if-eqz v24, :cond_22

    .line 252
    new-instance v27, Ljava/util/HashMap;

    invoke-direct/range {v27 .. v27}, Ljava/util/HashMap;-><init>()V

    .line 254
    .local v27, "security":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    .line 256
    .restart local v13    # "childNodesLength":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_8
    move/from16 v0, v19

    if-ge v0, v13, :cond_21

    .line 258
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v34

    if-eqz v34, :cond_20

    .line 259
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v22

    .line 260
    .restart local v22    # "key":Ljava/lang/String;
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v30

    .line 262
    .restart local v30    # "value":Ljava/lang/String;
    const-string v34, "#text"

    move-object/from16 v0, v34

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_20

    .line 263
    move-object/from16 v0, v27

    move-object/from16 v1, v22

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .end local v22    # "key":Ljava/lang/String;
    .end local v30    # "value":Ljava/lang/String;
    :cond_20
    add-int/lit8 v19, v19, 0x1

    goto :goto_8

    .line 268
    :cond_21
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->setSecurity(Ljava/util/HashMap;)V

    .line 272
    .end local v13    # "childNodesLength":I
    .end local v19    # "i":I
    .end local v27    # "security":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_22
    const-string v34, "notification"

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v34

    const/16 v35, 0x0

    invoke-interface/range {v34 .. v35}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v24

    .line 273
    if-eqz v24, :cond_25

    .line 274
    new-instance v25, Ljava/util/HashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    .line 275
    .local v25, "notifications":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    .line 276
    .restart local v13    # "childNodesLength":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_9
    move/from16 v0, v19

    if-ge v0, v13, :cond_24

    .line 278
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v34

    if-eqz v34, :cond_23

    .line 279
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v22

    .line 280
    .restart local v22    # "key":Ljava/lang/String;
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v30

    .line 282
    .restart local v30    # "value":Ljava/lang/String;
    const-string v34, "#text"

    move-object/from16 v0, v34

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_23

    .line 283
    move-object/from16 v0, v25

    move-object/from16 v1, v22

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    .end local v22    # "key":Ljava/lang/String;
    .end local v30    # "value":Ljava/lang/String;
    :cond_23
    add-int/lit8 v19, v19, 0x1

    goto :goto_9

    .line 288
    :cond_24
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->setNotification(Ljava/util/HashMap;)V

    .line 292
    .end local v13    # "childNodesLength":I
    .end local v19    # "i":I
    .end local v25    # "notifications":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_25
    const-string v34, "settings"

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v34

    const/16 v35, 0x0

    invoke-interface/range {v34 .. v35}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v24

    .line 293
    if-eqz v24, :cond_28

    .line 294
    new-instance v28, Ljava/util/HashMap;

    invoke-direct/range {v28 .. v28}, Ljava/util/HashMap;-><init>()V

    .line 295
    .local v28, "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    .line 296
    .restart local v13    # "childNodesLength":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_a
    move/from16 v0, v19

    if-ge v0, v13, :cond_27

    .line 298
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v34

    if-eqz v34, :cond_26

    .line 299
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v22

    .line 300
    .restart local v22    # "key":Ljava/lang/String;
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v30

    .line 302
    .restart local v30    # "value":Ljava/lang/String;
    const-string v34, "#text"

    move-object/from16 v0, v34

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_26

    .line 303
    move-object/from16 v0, v28

    move-object/from16 v1, v22

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    .end local v22    # "key":Ljava/lang/String;
    .end local v30    # "value":Ljava/lang/String;
    :cond_26
    add-int/lit8 v19, v19, 0x1

    goto :goto_a

    .line 308
    :cond_27
    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->setSettings(Ljava/util/HashMap;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 320
    .end local v13    # "childNodesLength":I
    .end local v19    # "i":I
    .end local v24    # "node":Lorg/w3c/dom/Node;
    .end local v28    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_28
    if-eqz v33, :cond_29

    .line 321
    :try_start_5
    invoke-virtual/range {v33 .. v33}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_29
    move-object/from16 v32, v33

    .line 325
    .end local v33    # "xmlData":Ljava/io/InputStream;
    .restart local v32    # "xmlData":Ljava/io/InputStream;
    goto/16 :goto_6

    .line 323
    .end local v32    # "xmlData":Ljava/io/InputStream;
    .restart local v33    # "xmlData":Ljava/io/InputStream;
    :catch_1
    move-exception v17

    .line 324
    .local v17, "e":Ljava/io/IOException;
    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->printStackTrace()V

    move-object/from16 v32, v33

    .line 326
    .end local v33    # "xmlData":Ljava/io/InputStream;
    .restart local v32    # "xmlData":Ljava/io/InputStream;
    goto/16 :goto_6

    .line 323
    .end local v12    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .local v17, "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v17

    .line 324
    .local v17, "e":Ljava/io/IOException;
    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6

    .line 315
    .end local v17    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v17

    .line 316
    .local v17, "e":Ljava/lang/Exception;
    :goto_b
    :try_start_6
    sget-object v34, Lcom/samsung/android/hostmanager/status/StatusParser;->TAG:Ljava/lang/String;

    const-string v35, "ST::Exception"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 320
    if-eqz v32, :cond_17

    .line 321
    :try_start_7
    invoke-virtual/range {v32 .. v32}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_6

    .line 323
    :catch_4
    move-exception v17

    .line 324
    .local v17, "e":Ljava/io/IOException;
    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6

    .line 319
    .end local v17    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v34

    .line 320
    :goto_c
    if-eqz v32, :cond_2a

    .line 321
    :try_start_8
    invoke-virtual/range {v32 .. v32}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 325
    :cond_2a
    :goto_d
    throw v34

    .line 323
    :catch_5
    move-exception v17

    .line 324
    .restart local v17    # "e":Ljava/io/IOException;
    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 319
    .end local v17    # "e":Ljava/io/IOException;
    .end local v32    # "xmlData":Ljava/io/InputStream;
    .restart local v33    # "xmlData":Ljava/io/InputStream;
    :catchall_1
    move-exception v34

    move-object/from16 v32, v33

    .end local v33    # "xmlData":Ljava/io/InputStream;
    .restart local v32    # "xmlData":Ljava/io/InputStream;
    goto :goto_c

    .line 315
    .end local v32    # "xmlData":Ljava/io/InputStream;
    .restart local v33    # "xmlData":Ljava/io/InputStream;
    :catch_6
    move-exception v17

    move-object/from16 v32, v33

    .end local v33    # "xmlData":Ljava/io/InputStream;
    .restart local v32    # "xmlData":Ljava/io/InputStream;
    goto :goto_b

    .line 312
    :catch_7
    move-exception v17

    goto/16 :goto_5
.end method

.method public static SaveDeviceStatusToXML(Landroid/content/Context;Lcom/samsung/android/hostmanager/aidl/DeviceInfo;Ljava/lang/String;)V
    .locals 77
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deviceInfo"    # Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 332
    sget-object v72, Lcom/samsung/android/hostmanager/status/StatusParser;->TAG:Ljava/lang/String;

    const-string v73, "ST::SaveDeviceStatusXMLfile()"

    invoke-static/range {v72 .. v73}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    move-object/from16 v30, p1

    .line 339
    .local v30, "deviceinfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    const/16 v38, 0x0

    .line 342
    .local v38, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v35

    .line 343
    .local v35, "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual/range {v35 .. v35}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v34

    .line 345
    .local v34, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual/range {v34 .. v34}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v33

    .line 347
    .local v33, "doc":Lorg/w3c/dom/Document;
    const-string v72, "DeviceStatus"

    move-object/from16 v0, v33

    move-object/from16 v1, v72

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v55

    .line 349
    .local v55, "rootElement":Lorg/w3c/dom/Element;
    move-object/from16 v0, v33

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 352
    const-string v72, "device"

    move-object/from16 v0, v33

    move-object/from16 v1, v72

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v20

    .line 353
    .local v20, "device":Lorg/w3c/dom/Element;
    move-object/from16 v0, v55

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 356
    const-string v72, "deviceID"

    move-object/from16 v0, v33

    move-object/from16 v1, v72

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v25

    .line 357
    .local v25, "deviceID":Lorg/w3c/dom/Element;
    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceID()Ljava/lang/String;

    move-result-object v72

    if-eqz v72, :cond_0

    .line 358
    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceID()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v33

    move-object/from16 v1, v72

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v72

    move-object/from16 v0, v25

    move-object/from16 v1, v72

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 359
    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 363
    :cond_0
    const-string v72, "deviceName"

    move-object/from16 v0, v33

    move-object/from16 v1, v72

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v26

    .line 364
    .local v26, "deviceName":Lorg/w3c/dom/Element;
    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v72

    if-eqz v72, :cond_1

    .line 365
    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v33

    move-object/from16 v1, v72

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v72

    move-object/from16 v0, v26

    move-object/from16 v1, v72

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 366
    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 370
    :cond_1
    const-string v72, "devicePlatform"

    move-object/from16 v0, v33

    move-object/from16 v1, v72

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v27

    .line 371
    .local v27, "devicePlatform":Lorg/w3c/dom/Element;
    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDevicePlatform()Ljava/lang/String;

    move-result-object v72

    if-eqz v72, :cond_2

    .line 372
    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDevicePlatform()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v33

    move-object/from16 v1, v72

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v72

    move-object/from16 v0, v27

    move-object/from16 v1, v72

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 373
    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 377
    :cond_2
    const-string v72, "devicePlatformVersion"

    move-object/from16 v0, v33

    move-object/from16 v1, v72

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v28

    .line 378
    .local v28, "devicePlatformVersion":Lorg/w3c/dom/Element;
    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDevicePlatformVersion()Ljava/lang/String;

    move-result-object v72

    if-eqz v72, :cond_3

    .line 380
    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDevicePlatformVersion()Ljava/lang/String;

    move-result-object v72

    .line 379
    move-object/from16 v0, v33

    move-object/from16 v1, v72

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v72

    move-object/from16 v0, v28

    move-object/from16 v1, v72

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 381
    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 385
    :cond_3
    const-string v72, "deviceType"

    move-object/from16 v0, v33

    move-object/from16 v1, v72

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v29

    .line 386
    .local v29, "deviceType":Lorg/w3c/dom/Element;
    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceType()Ljava/lang/String;

    move-result-object v72

    if-eqz v72, :cond_4

    .line 387
    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceType()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v33

    move-object/from16 v1, v72

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v72

    move-object/from16 v0, v29

    move-object/from16 v1, v72

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 388
    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 392
    :cond_4
    const-string v72, "modelNumber"

    move-object/from16 v0, v33

    move-object/from16 v1, v72

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v47

    .line 393
    .local v47, "modelNumber":Lorg/w3c/dom/Element;
    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getModelNumber()Ljava/lang/String;

    move-result-object v72

    if-eqz v72, :cond_5

    .line 394
    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getModelNumber()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v33

    move-object/from16 v1, v72

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v72

    move-object/from16 v0, v47

    move-object/from16 v1, v72

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 395
    move-object/from16 v0, v20

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 399
    :cond_5
    const-string v72, "swVersion"

    move-object/from16 v0, v33

    move-object/from16 v1, v72

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v66

    .line 400
    .local v66, "swVersion":Lorg/w3c/dom/Element;
    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getSwVersion()Ljava/lang/String;

    move-result-object v72

    if-eqz v72, :cond_6

    .line 401
    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getSwVersion()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v33

    move-object/from16 v1, v72

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v72

    move-object/from16 v0, v66

    move-object/from16 v1, v72

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 402
    move-object/from16 v0, v20

    move-object/from16 v1, v66

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 406
    :cond_6
    const-string v72, "salesCode"

    move-object/from16 v0, v33

    move-object/from16 v1, v72

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v56

    .line 407
    .local v56, "salesCode":Lorg/w3c/dom/Element;
    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getSalesCode()Ljava/lang/String;

    move-result-object v72

    if-eqz v72, :cond_7

    .line 408
    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getSalesCode()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v33

    move-object/from16 v1, v72

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v72

    move-object/from16 v0, v56

    move-object/from16 v1, v72

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 409
    move-object/from16 v0, v20

    move-object/from16 v1, v56

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 413
    :cond_7
    const-string v72, "MCC"

    move-object/from16 v0, v33

    move-object/from16 v1, v72

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 414
    .local v3, "MCC":Lorg/w3c/dom/Element;
    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getMCC()Ljava/lang/String;

    move-result-object v72

    if-eqz v72, :cond_9

    .line 415
    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getMCC()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v33

    move-object/from16 v1, v72

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v72

    move-object/from16 v0, v72

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 416
    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 422
    :goto_0
    const-string v72, "MNC"

    move-object/from16 v0, v33

    move-object/from16 v1, v72

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 423
    .local v4, "MNC":Lorg/w3c/dom/Element;
    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getMNC()Ljava/lang/String;

    move-result-object v72

    if-eqz v72, :cond_a

    .line 424
    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getMNC()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v33

    move-object/from16 v1, v72

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v72

    move-object/from16 v0, v72

    invoke-interface {v4, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 425
    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 431
    :goto_1
    const-string v72, "connectivity"

    move-object/from16 v0, v33

    move-object/from16 v1, v72

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v16

    .line 432
    .local v16, "connectivity":Lorg/w3c/dom/Element;
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 435
    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getConnectivity()Ljava/util/HashMap;

    move-result-object v19

    .line 436
    .local v19, "connectivityMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v19, :cond_b

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->size()I

    move-result v72

    if-eqz v72, :cond_b

    .line 437
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v72

    invoke-interface/range {v72 .. v72}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v72

    :goto_2
    invoke-interface/range {v72 .. v72}, Ljava/util/Iterator;->hasNext()Z

    move-result v73

    if-eqz v73, :cond_b

    invoke-interface/range {v72 .. v72}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    .line 438
    .local v18, "connectivityEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/lang/String;

    .line 439
    .local v46, "key":Ljava/lang/String;
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Ljava/lang/String;

    .line 441
    .local v70, "value":Ljava/lang/String;
    move-object/from16 v0, v33

    move-object/from16 v1, v46

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v17

    .line 442
    .local v17, "connectivityElement":Lorg/w3c/dom/Element;
    move-object/from16 v0, v33

    move-object/from16 v1, v70

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v73

    move-object/from16 v0, v17

    move-object/from16 v1, v73

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 443
    invoke-interface/range {v16 .. v17}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 621
    .end local v3    # "MCC":Lorg/w3c/dom/Element;
    .end local v4    # "MNC":Lorg/w3c/dom/Element;
    .end local v16    # "connectivity":Lorg/w3c/dom/Element;
    .end local v17    # "connectivityElement":Lorg/w3c/dom/Element;
    .end local v18    # "connectivityEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19    # "connectivityMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "device":Lorg/w3c/dom/Element;
    .end local v25    # "deviceID":Lorg/w3c/dom/Element;
    .end local v26    # "deviceName":Lorg/w3c/dom/Element;
    .end local v27    # "devicePlatform":Lorg/w3c/dom/Element;
    .end local v28    # "devicePlatformVersion":Lorg/w3c/dom/Element;
    .end local v29    # "deviceType":Lorg/w3c/dom/Element;
    .end local v33    # "doc":Lorg/w3c/dom/Document;
    .end local v34    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v35    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v46    # "key":Ljava/lang/String;
    .end local v47    # "modelNumber":Lorg/w3c/dom/Element;
    .end local v55    # "rootElement":Lorg/w3c/dom/Element;
    .end local v56    # "salesCode":Lorg/w3c/dom/Element;
    .end local v66    # "swVersion":Lorg/w3c/dom/Element;
    .end local v70    # "value":Ljava/lang/String;
    :catch_0
    move-exception v53

    .line 622
    .local v53, "pce":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_3
    :try_start_1
    invoke-virtual/range {v53 .. v53}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 631
    if-eqz v38, :cond_8

    .line 632
    :try_start_2
    invoke-virtual/range {v38 .. v38}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    .line 639
    .end local v53    # "pce":Ljavax/xml/parsers/ParserConfigurationException;
    :cond_8
    :goto_4
    return-void

    .line 418
    .restart local v3    # "MCC":Lorg/w3c/dom/Element;
    .restart local v20    # "device":Lorg/w3c/dom/Element;
    .restart local v25    # "deviceID":Lorg/w3c/dom/Element;
    .restart local v26    # "deviceName":Lorg/w3c/dom/Element;
    .restart local v27    # "devicePlatform":Lorg/w3c/dom/Element;
    .restart local v28    # "devicePlatformVersion":Lorg/w3c/dom/Element;
    .restart local v29    # "deviceType":Lorg/w3c/dom/Element;
    .restart local v33    # "doc":Lorg/w3c/dom/Document;
    .restart local v34    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v35    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v47    # "modelNumber":Lorg/w3c/dom/Element;
    .restart local v55    # "rootElement":Lorg/w3c/dom/Element;
    .restart local v56    # "salesCode":Lorg/w3c/dom/Element;
    .restart local v66    # "swVersion":Lorg/w3c/dom/Element;
    :cond_9
    :try_start_3
    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 623
    .end local v3    # "MCC":Lorg/w3c/dom/Element;
    .end local v20    # "device":Lorg/w3c/dom/Element;
    .end local v25    # "deviceID":Lorg/w3c/dom/Element;
    .end local v26    # "deviceName":Lorg/w3c/dom/Element;
    .end local v27    # "devicePlatform":Lorg/w3c/dom/Element;
    .end local v28    # "devicePlatformVersion":Lorg/w3c/dom/Element;
    .end local v29    # "deviceType":Lorg/w3c/dom/Element;
    .end local v33    # "doc":Lorg/w3c/dom/Document;
    .end local v34    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v35    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v47    # "modelNumber":Lorg/w3c/dom/Element;
    .end local v55    # "rootElement":Lorg/w3c/dom/Element;
    .end local v56    # "salesCode":Lorg/w3c/dom/Element;
    .end local v66    # "swVersion":Lorg/w3c/dom/Element;
    :catch_1
    move-exception v67

    .line 624
    .local v67, "tfe":Ljavax/xml/transform/TransformerException;
    :goto_5
    :try_start_4
    invoke-virtual/range {v67 .. v67}, Ljavax/xml/transform/TransformerException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 631
    if-eqz v38, :cond_8

    .line 632
    :try_start_5
    invoke-virtual/range {v38 .. v38}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    .line 634
    :catch_2
    move-exception v36

    .line 635
    .local v36, "e":Ljava/lang/Exception;
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 427
    .end local v36    # "e":Ljava/lang/Exception;
    .end local v67    # "tfe":Ljavax/xml/transform/TransformerException;
    .restart local v3    # "MCC":Lorg/w3c/dom/Element;
    .restart local v4    # "MNC":Lorg/w3c/dom/Element;
    .restart local v20    # "device":Lorg/w3c/dom/Element;
    .restart local v25    # "deviceID":Lorg/w3c/dom/Element;
    .restart local v26    # "deviceName":Lorg/w3c/dom/Element;
    .restart local v27    # "devicePlatform":Lorg/w3c/dom/Element;
    .restart local v28    # "devicePlatformVersion":Lorg/w3c/dom/Element;
    .restart local v29    # "deviceType":Lorg/w3c/dom/Element;
    .restart local v33    # "doc":Lorg/w3c/dom/Document;
    .restart local v34    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v35    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v47    # "modelNumber":Lorg/w3c/dom/Element;
    .restart local v55    # "rootElement":Lorg/w3c/dom/Element;
    .restart local v56    # "salesCode":Lorg/w3c/dom/Element;
    .restart local v66    # "swVersion":Lorg/w3c/dom/Element;
    :cond_a
    :try_start_6
    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_6
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 625
    .end local v3    # "MCC":Lorg/w3c/dom/Element;
    .end local v4    # "MNC":Lorg/w3c/dom/Element;
    .end local v20    # "device":Lorg/w3c/dom/Element;
    .end local v25    # "deviceID":Lorg/w3c/dom/Element;
    .end local v26    # "deviceName":Lorg/w3c/dom/Element;
    .end local v27    # "devicePlatform":Lorg/w3c/dom/Element;
    .end local v28    # "devicePlatformVersion":Lorg/w3c/dom/Element;
    .end local v29    # "deviceType":Lorg/w3c/dom/Element;
    .end local v33    # "doc":Lorg/w3c/dom/Document;
    .end local v34    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v35    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v47    # "modelNumber":Lorg/w3c/dom/Element;
    .end local v55    # "rootElement":Lorg/w3c/dom/Element;
    .end local v56    # "salesCode":Lorg/w3c/dom/Element;
    .end local v66    # "swVersion":Lorg/w3c/dom/Element;
    :catch_3
    move-exception v36

    .line 626
    .local v36, "e":Ljava/io/FileNotFoundException;
    :goto_6
    :try_start_7
    invoke-virtual/range {v36 .. v36}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 631
    if-eqz v38, :cond_8

    .line 632
    :try_start_8
    invoke-virtual/range {v38 .. v38}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_4

    .line 634
    :catch_4
    move-exception v36

    .line 635
    .local v36, "e":Ljava/lang/Exception;
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 448
    .end local v36    # "e":Ljava/lang/Exception;
    .restart local v3    # "MCC":Lorg/w3c/dom/Element;
    .restart local v4    # "MNC":Lorg/w3c/dom/Element;
    .restart local v16    # "connectivity":Lorg/w3c/dom/Element;
    .restart local v19    # "connectivityMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v20    # "device":Lorg/w3c/dom/Element;
    .restart local v25    # "deviceID":Lorg/w3c/dom/Element;
    .restart local v26    # "deviceName":Lorg/w3c/dom/Element;
    .restart local v27    # "devicePlatform":Lorg/w3c/dom/Element;
    .restart local v28    # "devicePlatformVersion":Lorg/w3c/dom/Element;
    .restart local v29    # "deviceType":Lorg/w3c/dom/Element;
    .restart local v33    # "doc":Lorg/w3c/dom/Document;
    .restart local v34    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v35    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v47    # "modelNumber":Lorg/w3c/dom/Element;
    .restart local v55    # "rootElement":Lorg/w3c/dom/Element;
    .restart local v56    # "salesCode":Lorg/w3c/dom/Element;
    .restart local v66    # "swVersion":Lorg/w3c/dom/Element;
    :cond_b
    :try_start_9
    const-string v72, "deviceFeature"

    move-object/from16 v0, v33

    move-object/from16 v1, v72

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v21

    .line 449
    .local v21, "deviceFeature":Lorg/w3c/dom/Element;
    invoke-interface/range {v20 .. v21}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 452
    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceFeature()Ljava/util/HashMap;

    move-result-object v24

    .line 453
    .local v24, "deviceFeatureMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v24, :cond_c

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->size()I

    move-result v72

    if-eqz v72, :cond_c

    .line 454
    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v72

    invoke-interface/range {v72 .. v72}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v72

    :goto_7
    invoke-interface/range {v72 .. v72}, Ljava/util/Iterator;->hasNext()Z

    move-result v73

    if-eqz v73, :cond_c

    invoke-interface/range {v72 .. v72}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Map$Entry;

    .line 455
    .local v23, "deviceFeatureEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/lang/String;

    .line 456
    .restart local v46    # "key":Ljava/lang/String;
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Ljava/lang/String;

    .line 458
    .restart local v70    # "value":Ljava/lang/String;
    move-object/from16 v0, v33

    move-object/from16 v1, v46

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v22

    .line 459
    .local v22, "deviceFeatureElement":Lorg/w3c/dom/Element;
    move-object/from16 v0, v33

    move-object/from16 v1, v70

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v73

    move-object/from16 v0, v22

    move-object/from16 v1, v73

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 460
    invoke-interface/range {v21 .. v22}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_9
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_7

    .line 627
    .end local v3    # "MCC":Lorg/w3c/dom/Element;
    .end local v4    # "MNC":Lorg/w3c/dom/Element;
    .end local v16    # "connectivity":Lorg/w3c/dom/Element;
    .end local v19    # "connectivityMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "device":Lorg/w3c/dom/Element;
    .end local v21    # "deviceFeature":Lorg/w3c/dom/Element;
    .end local v22    # "deviceFeatureElement":Lorg/w3c/dom/Element;
    .end local v23    # "deviceFeatureEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v24    # "deviceFeatureMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v25    # "deviceID":Lorg/w3c/dom/Element;
    .end local v26    # "deviceName":Lorg/w3c/dom/Element;
    .end local v27    # "devicePlatform":Lorg/w3c/dom/Element;
    .end local v28    # "devicePlatformVersion":Lorg/w3c/dom/Element;
    .end local v29    # "deviceType":Lorg/w3c/dom/Element;
    .end local v33    # "doc":Lorg/w3c/dom/Document;
    .end local v34    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v35    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v46    # "key":Ljava/lang/String;
    .end local v47    # "modelNumber":Lorg/w3c/dom/Element;
    .end local v55    # "rootElement":Lorg/w3c/dom/Element;
    .end local v56    # "salesCode":Lorg/w3c/dom/Element;
    .end local v66    # "swVersion":Lorg/w3c/dom/Element;
    .end local v70    # "value":Ljava/lang/String;
    :catch_5
    move-exception v36

    .line 628
    .restart local v36    # "e":Ljava/lang/Exception;
    :goto_8
    :try_start_a
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 631
    if-eqz v38, :cond_8

    .line 632
    :try_start_b
    invoke-virtual/range {v38 .. v38}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    goto/16 :goto_4

    .line 634
    :catch_6
    move-exception v36

    .line 635
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 465
    .end local v36    # "e":Ljava/lang/Exception;
    .restart local v3    # "MCC":Lorg/w3c/dom/Element;
    .restart local v4    # "MNC":Lorg/w3c/dom/Element;
    .restart local v16    # "connectivity":Lorg/w3c/dom/Element;
    .restart local v19    # "connectivityMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v20    # "device":Lorg/w3c/dom/Element;
    .restart local v21    # "deviceFeature":Lorg/w3c/dom/Element;
    .restart local v24    # "deviceFeatureMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v25    # "deviceID":Lorg/w3c/dom/Element;
    .restart local v26    # "deviceName":Lorg/w3c/dom/Element;
    .restart local v27    # "devicePlatform":Lorg/w3c/dom/Element;
    .restart local v28    # "devicePlatformVersion":Lorg/w3c/dom/Element;
    .restart local v29    # "deviceType":Lorg/w3c/dom/Element;
    .restart local v33    # "doc":Lorg/w3c/dom/Document;
    .restart local v34    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v35    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v47    # "modelNumber":Lorg/w3c/dom/Element;
    .restart local v55    # "rootElement":Lorg/w3c/dom/Element;
    .restart local v56    # "salesCode":Lorg/w3c/dom/Element;
    .restart local v66    # "swVersion":Lorg/w3c/dom/Element;
    :cond_c
    :try_start_c
    const-string v72, "apps"

    move-object/from16 v0, v33

    move-object/from16 v1, v72

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v13

    .line 466
    .local v13, "apps":Lorg/w3c/dom/Element;
    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 469
    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getAppInfoList()Ljava/util/ArrayList;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/util/ArrayList;->size()I

    move-result v31

    .line 470
    .local v31, "deviceinfoGetAppInfoListSize":I
    const/16 v45, 0x0

    .local v45, "i":I
    :goto_9
    move/from16 v0, v45

    move/from16 v1, v31

    if-ge v0, v1, :cond_16

    .line 471
    const-string v72, "app"

    move-object/from16 v0, v33

    move-object/from16 v1, v72

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 472
    .local v5, "app":Lorg/w3c/dom/Element;
    invoke-interface {v13, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 474
    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getAppInfoList()Ljava/util/ArrayList;

    move-result-object v72

    move-object/from16 v0, v72

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Lcom/samsung/android/hostmanager/aidl/AppInfo;

    invoke-virtual/range {v72 .. v72}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->getName()Ljava/lang/String;

    move-result-object v40

    .line 475
    .local v40, "getName":Ljava/lang/String;
    if-eqz v40, :cond_d

    .line 476
    const-string v72, "name"

    move-object/from16 v0, v33

    move-object/from16 v1, v72

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v10

    .line 478
    .local v10, "appname":Lorg/w3c/dom/Element;
    move-object/from16 v0, v33

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v72

    .line 477
    move-object/from16 v0, v72

    invoke-interface {v10, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 479
    invoke-interface {v5, v10}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 482
    .end local v10    # "appname":Lorg/w3c/dom/Element;
    :cond_d
    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getAppInfoList()Ljava/util/ArrayList;

    move-result-object v72

    move-object/from16 v0, v72

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Lcom/samsung/android/hostmanager/aidl/AppInfo;

    invoke-virtual/range {v72 .. v72}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v41

    .line 483
    .local v41, "getPackageName":Ljava/lang/String;
    if-eqz v41, :cond_e

    .line 484
    const-string v72, "packagename"

    move-object/from16 v0, v33

    move-object/from16 v1, v72

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v52

    .line 486
    .local v52, "packagename":Lorg/w3c/dom/Element;
    move-object/from16 v0, v33

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v72

    .line 485
    move-object/from16 v0, v52

    move-object/from16 v1, v72

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 487
    move-object/from16 v0, v52

    invoke-interface {v5, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 490
    .end local v52    # "packagename":Lorg/w3c/dom/Element;
    :cond_e
    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getAppInfoList()Ljava/util/ArrayList;

    move-result-object v72

    move-object/from16 v0, v72

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Lcom/samsung/android/hostmanager/aidl/AppInfo;

    invoke-virtual/range {v72 .. v72}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->getVersion()Ljava/lang/String;

    move-result-object v44

    .line 491
    .local v44, "getVersion":Ljava/lang/String;
    if-eqz v44, :cond_f

    .line 492
    const-string v72, "version"

    move-object/from16 v0, v33

    move-object/from16 v1, v72

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v14

    .line 493
    .local v14, "appversion":Lorg/w3c/dom/Element;
    move-object/from16 v0, v33

    move-object/from16 v1, v44

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v72

    move-object/from16 v0, v72

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 494
    invoke-interface {v5, v14}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 497
    .end local v14    # "appversion":Lorg/w3c/dom/Element;
    :cond_f
    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getAppInfoList()Ljava/util/ArrayList;

    move-result-object v72

    move-object/from16 v0, v72

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Lcom/samsung/android/hostmanager/aidl/AppInfo;

    invoke-virtual/range {v72 .. v72}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->getPreloaded()Ljava/lang/String;

    move-result-object v42

    .line 498
    .local v42, "getPreloaded":Ljava/lang/String;
    if-eqz v42, :cond_10

    .line 499
    const-string v72, "preloaded"

    move-object/from16 v0, v33

    move-object/from16 v1, v72

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v11

    .line 501
    .local v11, "apppreloaded":Lorg/w3c/dom/Element;
    move-object/from16 v0, v33

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v72

    .line 500
    move-object/from16 v0, v72

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 502
    invoke-interface {v5, v11}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 505
    .end local v11    # "apppreloaded":Lorg/w3c/dom/Element;
    :cond_10
    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getAppInfoList()Ljava/util/ArrayList;

    move-result-object v72

    move-object/from16 v0, v72

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Lcom/samsung/android/hostmanager/aidl/AppInfo;

    invoke-virtual/range {v72 .. v72}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->getRole()Ljava/lang/String;

    move-result-object v43

    .line 506
    .local v43, "getRole":Ljava/lang/String;
    if-eqz v43, :cond_11

    .line 507
    const-string v72, "role"

    move-object/from16 v0, v33

    move-object/from16 v1, v72

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v12

    .line 509
    .local v12, "approle":Lorg/w3c/dom/Element;
    move-object/from16 v0, v33

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v72

    .line 508
    move-object/from16 v0, v72

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 510
    invoke-interface {v5, v12}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 521
    .end local v12    # "approle":Lorg/w3c/dom/Element;
    :cond_11
    const-string v72, "features"

    move-object/from16 v0, v33

    move-object/from16 v1, v72

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v9

    .line 522
    .local v9, "appfeatures":Lorg/w3c/dom/Element;
    invoke-interface {v5, v9}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 525
    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getAppInfoList()Ljava/util/ArrayList;

    move-result-object v72

    move-object/from16 v0, v72

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Lcom/samsung/android/hostmanager/aidl/AppInfo;

    invoke-virtual/range {v72 .. v72}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->getFeatures()Ljava/util/HashMap;

    move-result-object v8

    .line 526
    .local v8, "appfeatureMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v8, :cond_15

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v72

    if-eqz v72, :cond_15

    .line 527
    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v72

    invoke-interface/range {v72 .. v72}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v74

    :goto_a
    invoke-interface/range {v74 .. v74}, Ljava/util/Iterator;->hasNext()Z

    move-result v72

    if-eqz v72, :cond_15

    invoke-interface/range {v74 .. v74}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 528
    .local v7, "appfeatureEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/lang/String;

    .line 529
    .restart local v46    # "key":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v71

    check-cast v71, Ljava/util/HashMap;

    .line 531
    .local v71, "value":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, v33

    move-object/from16 v1, v46

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    .line 532
    .local v6, "appfeatureElement":Lorg/w3c/dom/Element;
    invoke-virtual/range {v71 .. v71}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v72

    invoke-interface/range {v72 .. v72}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v75

    :goto_b
    invoke-interface/range {v75 .. v75}, Ljava/util/Iterator;->hasNext()Z

    move-result v72

    if-eqz v72, :cond_14

    invoke-interface/range {v75 .. v75}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 533
    .local v15, "attrEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v73, Lcom/samsung/android/hostmanager/status/StatusParser;->TAG:Ljava/lang/String;

    new-instance v72, Ljava/lang/StringBuilder;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuilder;-><init>()V

    const-string v76, "jangil::hasAttribute::"

    move-object/from16 v0, v72

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Ljava/lang/String;

    move-object/from16 v0, v76

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    const-string v76, "::"

    move-object/from16 v0, v72

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, v72

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    const-string v76, "::"

    move-object/from16 v0, v72

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Ljava/lang/String;

    move-object/from16 v0, v76

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v73

    move-object/from16 v1, v72

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Ljava/lang/String;

    move-object/from16 v0, v72

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v72

    if-eqz v72, :cond_13

    .line 535
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Ljava/lang/String;

    move-object/from16 v0, v33

    move-object/from16 v1, v72

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v72

    move-object/from16 v0, v72

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_c
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_b

    .line 630
    .end local v3    # "MCC":Lorg/w3c/dom/Element;
    .end local v4    # "MNC":Lorg/w3c/dom/Element;
    .end local v5    # "app":Lorg/w3c/dom/Element;
    .end local v6    # "appfeatureElement":Lorg/w3c/dom/Element;
    .end local v7    # "appfeatureEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v8    # "appfeatureMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v9    # "appfeatures":Lorg/w3c/dom/Element;
    .end local v13    # "apps":Lorg/w3c/dom/Element;
    .end local v15    # "attrEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16    # "connectivity":Lorg/w3c/dom/Element;
    .end local v19    # "connectivityMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "device":Lorg/w3c/dom/Element;
    .end local v21    # "deviceFeature":Lorg/w3c/dom/Element;
    .end local v24    # "deviceFeatureMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v25    # "deviceID":Lorg/w3c/dom/Element;
    .end local v26    # "deviceName":Lorg/w3c/dom/Element;
    .end local v27    # "devicePlatform":Lorg/w3c/dom/Element;
    .end local v28    # "devicePlatformVersion":Lorg/w3c/dom/Element;
    .end local v29    # "deviceType":Lorg/w3c/dom/Element;
    .end local v31    # "deviceinfoGetAppInfoListSize":I
    .end local v33    # "doc":Lorg/w3c/dom/Document;
    .end local v34    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v35    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v40    # "getName":Ljava/lang/String;
    .end local v41    # "getPackageName":Ljava/lang/String;
    .end local v42    # "getPreloaded":Ljava/lang/String;
    .end local v43    # "getRole":Ljava/lang/String;
    .end local v44    # "getVersion":Ljava/lang/String;
    .end local v45    # "i":I
    .end local v46    # "key":Ljava/lang/String;
    .end local v47    # "modelNumber":Lorg/w3c/dom/Element;
    .end local v55    # "rootElement":Lorg/w3c/dom/Element;
    .end local v56    # "salesCode":Lorg/w3c/dom/Element;
    .end local v66    # "swVersion":Lorg/w3c/dom/Element;
    .end local v71    # "value":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v72

    .line 631
    :goto_c
    if-eqz v38, :cond_12

    .line 632
    :try_start_d
    invoke-virtual/range {v38 .. v38}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    .line 636
    :cond_12
    :goto_d
    throw v72

    .line 537
    .restart local v3    # "MCC":Lorg/w3c/dom/Element;
    .restart local v4    # "MNC":Lorg/w3c/dom/Element;
    .restart local v5    # "app":Lorg/w3c/dom/Element;
    .restart local v6    # "appfeatureElement":Lorg/w3c/dom/Element;
    .restart local v7    # "appfeatureEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v8    # "appfeatureMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v9    # "appfeatures":Lorg/w3c/dom/Element;
    .restart local v13    # "apps":Lorg/w3c/dom/Element;
    .restart local v15    # "attrEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v16    # "connectivity":Lorg/w3c/dom/Element;
    .restart local v19    # "connectivityMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v20    # "device":Lorg/w3c/dom/Element;
    .restart local v21    # "deviceFeature":Lorg/w3c/dom/Element;
    .restart local v24    # "deviceFeatureMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v25    # "deviceID":Lorg/w3c/dom/Element;
    .restart local v26    # "deviceName":Lorg/w3c/dom/Element;
    .restart local v27    # "devicePlatform":Lorg/w3c/dom/Element;
    .restart local v28    # "devicePlatformVersion":Lorg/w3c/dom/Element;
    .restart local v29    # "deviceType":Lorg/w3c/dom/Element;
    .restart local v31    # "deviceinfoGetAppInfoListSize":I
    .restart local v33    # "doc":Lorg/w3c/dom/Document;
    .restart local v34    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v35    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v40    # "getName":Ljava/lang/String;
    .restart local v41    # "getPackageName":Ljava/lang/String;
    .restart local v42    # "getPreloaded":Ljava/lang/String;
    .restart local v43    # "getRole":Ljava/lang/String;
    .restart local v44    # "getVersion":Ljava/lang/String;
    .restart local v45    # "i":I
    .restart local v46    # "key":Ljava/lang/String;
    .restart local v47    # "modelNumber":Lorg/w3c/dom/Element;
    .restart local v55    # "rootElement":Lorg/w3c/dom/Element;
    .restart local v56    # "salesCode":Lorg/w3c/dom/Element;
    .restart local v66    # "swVersion":Lorg/w3c/dom/Element;
    .restart local v71    # "value":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_13
    :try_start_e
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Ljava/lang/String;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Ljava/lang/String;

    move-object/from16 v0, v72

    move-object/from16 v1, v73

    invoke-interface {v6, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 540
    .end local v15    # "attrEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_14
    invoke-interface {v9, v6}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_a

    .line 470
    .end local v6    # "appfeatureElement":Lorg/w3c/dom/Element;
    .end local v7    # "appfeatureEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v46    # "key":Ljava/lang/String;
    .end local v71    # "value":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_15
    add-int/lit8 v45, v45, 0x1

    goto/16 :goto_9

    .line 546
    .end local v5    # "app":Lorg/w3c/dom/Element;
    .end local v8    # "appfeatureMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v9    # "appfeatures":Lorg/w3c/dom/Element;
    .end local v40    # "getName":Ljava/lang/String;
    .end local v41    # "getPackageName":Ljava/lang/String;
    .end local v42    # "getPreloaded":Ljava/lang/String;
    .end local v43    # "getRole":Ljava/lang/String;
    .end local v44    # "getVersion":Ljava/lang/String;
    :cond_16
    const-string v72, "security"

    move-object/from16 v0, v33

    move-object/from16 v1, v72

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v57

    .line 547
    .local v57, "security":Lorg/w3c/dom/Element;
    move-object/from16 v0, v20

    move-object/from16 v1, v57

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 550
    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getSecurity()Ljava/util/HashMap;

    move-result-object v60

    .line 551
    .local v60, "securityMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v60, :cond_17

    invoke-virtual/range {v60 .. v60}, Ljava/util/HashMap;->size()I

    move-result v72

    if-eqz v72, :cond_17

    .line 552
    invoke-virtual/range {v60 .. v60}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v72

    invoke-interface/range {v72 .. v72}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v72

    :goto_e
    invoke-interface/range {v72 .. v72}, Ljava/util/Iterator;->hasNext()Z

    move-result v73

    if-eqz v73, :cond_17

    invoke-interface/range {v72 .. v72}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/util/Map$Entry;

    .line 553
    .local v59, "securityEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {v59 .. v59}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/lang/String;

    .line 554
    .restart local v46    # "key":Ljava/lang/String;
    invoke-interface/range {v59 .. v59}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Ljava/lang/String;

    .line 556
    .restart local v70    # "value":Ljava/lang/String;
    move-object/from16 v0, v33

    move-object/from16 v1, v46

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v58

    .line 557
    .local v58, "securityElement":Lorg/w3c/dom/Element;
    move-object/from16 v0, v33

    move-object/from16 v1, v70

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v73

    move-object/from16 v0, v58

    move-object/from16 v1, v73

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 558
    invoke-interface/range {v57 .. v58}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_e

    .line 563
    .end local v46    # "key":Ljava/lang/String;
    .end local v58    # "securityElement":Lorg/w3c/dom/Element;
    .end local v59    # "securityEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v70    # "value":Ljava/lang/String;
    :cond_17
    const-string v72, "notification"

    move-object/from16 v0, v33

    move-object/from16 v1, v72

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v48

    .line 564
    .local v48, "notification":Lorg/w3c/dom/Element;
    move-object/from16 v0, v20

    move-object/from16 v1, v48

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 567
    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getNotification()Ljava/util/HashMap;

    move-result-object v51

    .line 568
    .local v51, "notificationMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v51, :cond_18

    invoke-virtual/range {v51 .. v51}, Ljava/util/HashMap;->size()I

    move-result v72

    if-eqz v72, :cond_18

    .line 569
    invoke-virtual/range {v51 .. v51}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v72

    invoke-interface/range {v72 .. v72}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v72

    :goto_f
    invoke-interface/range {v72 .. v72}, Ljava/util/Iterator;->hasNext()Z

    move-result v73

    if-eqz v73, :cond_18

    invoke-interface/range {v72 .. v72}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Ljava/util/Map$Entry;

    .line 570
    .local v50, "notificationEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {v50 .. v50}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/lang/String;

    .line 571
    .restart local v46    # "key":Ljava/lang/String;
    invoke-interface/range {v50 .. v50}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Ljava/lang/String;

    .line 573
    .restart local v70    # "value":Ljava/lang/String;
    move-object/from16 v0, v33

    move-object/from16 v1, v46

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v49

    .line 574
    .local v49, "notificationElement":Lorg/w3c/dom/Element;
    move-object/from16 v0, v33

    move-object/from16 v1, v70

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v73

    move-object/from16 v0, v49

    move-object/from16 v1, v73

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 575
    invoke-interface/range {v48 .. v49}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_f

    .line 580
    .end local v46    # "key":Ljava/lang/String;
    .end local v49    # "notificationElement":Lorg/w3c/dom/Element;
    .end local v50    # "notificationEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v70    # "value":Ljava/lang/String;
    :cond_18
    const-string v72, "settings"

    move-object/from16 v0, v33

    move-object/from16 v1, v72

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v61

    .line 581
    .local v61, "settings":Lorg/w3c/dom/Element;
    move-object/from16 v0, v20

    move-object/from16 v1, v61

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 584
    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getSettings()Ljava/util/HashMap;

    move-result-object v64

    .line 585
    .local v64, "settingsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v64, :cond_19

    invoke-virtual/range {v64 .. v64}, Ljava/util/HashMap;->size()I

    move-result v72

    if-eqz v72, :cond_19

    .line 586
    invoke-virtual/range {v64 .. v64}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v72

    invoke-interface/range {v72 .. v72}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v72

    :goto_10
    invoke-interface/range {v72 .. v72}, Ljava/util/Iterator;->hasNext()Z

    move-result v73

    if-eqz v73, :cond_19

    invoke-interface/range {v72 .. v72}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/util/Map$Entry;

    .line 587
    .local v63, "settingsEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {v63 .. v63}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/lang/String;

    .line 588
    .restart local v46    # "key":Ljava/lang/String;
    invoke-interface/range {v63 .. v63}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Ljava/lang/String;

    .line 590
    .restart local v70    # "value":Ljava/lang/String;
    move-object/from16 v0, v33

    move-object/from16 v1, v46

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v62

    .line 591
    .local v62, "settingsElement":Lorg/w3c/dom/Element;
    move-object/from16 v0, v33

    move-object/from16 v1, v70

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v73

    move-object/from16 v0, v62

    move-object/from16 v1, v73

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 592
    invoke-interface/range {v61 .. v62}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_10

    .line 597
    .end local v46    # "key":Ljava/lang/String;
    .end local v62    # "settingsElement":Lorg/w3c/dom/Element;
    .end local v63    # "settingsEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v70    # "value":Ljava/lang/String;
    :cond_19
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v69

    .line 598
    .local v69, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual/range {v69 .. v69}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v68

    .line 600
    .local v68, "transformer":Ljavax/xml/transform/Transformer;
    const-string v72, "encoding"

    const-string v73, "UTF-8"

    move-object/from16 v0, v68

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    const-string v72, "indent"

    const-string v73, "yes"

    move-object/from16 v0, v68

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    new-instance v65, Ljavax/xml/transform/dom/DOMSource;

    move-object/from16 v0, v65

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 604
    .local v65, "source":Ljavax/xml/transform/dom/DOMSource;
    new-instance v72, Ljava/lang/StringBuilder;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v73

    invoke-virtual/range {v73 .. v73}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v73

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    sget-object v73, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    const-string v73, "hmStatus"

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 606
    .local v32, "dirPath":Ljava/lang/String;
    sget-object v72, Lcom/samsung/android/hostmanager/status/StatusParser;->TAG:Ljava/lang/String;

    new-instance v73, Ljava/lang/StringBuilder;

    invoke-direct/range {v73 .. v73}, Ljava/lang/StringBuilder;-><init>()V

    const-string v74, "ST::SaveDeviceStatusToXML dirPath = "

    invoke-virtual/range {v73 .. v74}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v73

    move-object/from16 v0, v73

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v73

    invoke-virtual/range {v73 .. v73}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v73

    invoke-static/range {v72 .. v73}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    new-instance v37, Ljava/io/File;

    new-instance v72, Ljava/lang/StringBuilder;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v72

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    sget-object v73, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, v72

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v37

    move-object/from16 v1, v72

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 610
    .local v37, "file":Ljava/io/File;
    invoke-virtual/range {v37 .. v37}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v72

    if-eqz v72, :cond_1a

    .line 611
    invoke-virtual/range {v37 .. v37}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/io/File;->mkdirs()Z

    move-result v54

    .line 612
    .local v54, "result":Z
    sget-object v72, Lcom/samsung/android/hostmanager/status/StatusParser;->TAG:Ljava/lang/String;

    new-instance v73, Ljava/lang/StringBuilder;

    invoke-direct/range {v73 .. v73}, Ljava/lang/StringBuilder;-><init>()V

    const-string v74, "ST::SaveDeviceStatusToXML::mkdirs result="

    invoke-virtual/range {v73 .. v74}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v73

    move-object/from16 v0, v73

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v73

    invoke-virtual/range {v73 .. v73}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v73

    invoke-static/range {v72 .. v73}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    .end local v54    # "result":Z
    :cond_1a
    new-instance v39, Ljava/io/FileOutputStream;

    move-object/from16 v0, v39

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_e
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 617
    .end local v38    # "fos":Ljava/io/FileOutputStream;
    .local v39, "fos":Ljava/io/FileOutputStream;
    :try_start_f
    new-instance v54, Ljavax/xml/transform/stream/StreamResult;

    move-object/from16 v0, v54

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    .line 619
    .local v54, "result":Ljavax/xml/transform/stream/StreamResult;
    move-object/from16 v0, v68

    move-object/from16 v1, v65

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_f
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_f .. :try_end_f} :catch_d
    .catch Ljavax/xml/transform/TransformerException; {:try_start_f .. :try_end_f} :catch_c
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_b
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_a
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 631
    if-eqz v39, :cond_1b

    .line 632
    :try_start_10
    invoke-virtual/range {v39 .. v39}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7

    :cond_1b
    move-object/from16 v38, v39

    .line 636
    .end local v39    # "fos":Ljava/io/FileOutputStream;
    .restart local v38    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .line 634
    .end local v38    # "fos":Ljava/io/FileOutputStream;
    .restart local v39    # "fos":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v36

    .line 635
    .restart local v36    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Exception;->printStackTrace()V

    move-object/from16 v38, v39

    .line 637
    .end local v39    # "fos":Ljava/io/FileOutputStream;
    .restart local v38    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .line 634
    .end local v3    # "MCC":Lorg/w3c/dom/Element;
    .end local v4    # "MNC":Lorg/w3c/dom/Element;
    .end local v13    # "apps":Lorg/w3c/dom/Element;
    .end local v16    # "connectivity":Lorg/w3c/dom/Element;
    .end local v19    # "connectivityMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "device":Lorg/w3c/dom/Element;
    .end local v21    # "deviceFeature":Lorg/w3c/dom/Element;
    .end local v24    # "deviceFeatureMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v25    # "deviceID":Lorg/w3c/dom/Element;
    .end local v26    # "deviceName":Lorg/w3c/dom/Element;
    .end local v27    # "devicePlatform":Lorg/w3c/dom/Element;
    .end local v28    # "devicePlatformVersion":Lorg/w3c/dom/Element;
    .end local v29    # "deviceType":Lorg/w3c/dom/Element;
    .end local v31    # "deviceinfoGetAppInfoListSize":I
    .end local v32    # "dirPath":Ljava/lang/String;
    .end local v33    # "doc":Lorg/w3c/dom/Document;
    .end local v34    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v35    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v36    # "e":Ljava/lang/Exception;
    .end local v37    # "file":Ljava/io/File;
    .end local v45    # "i":I
    .end local v47    # "modelNumber":Lorg/w3c/dom/Element;
    .end local v48    # "notification":Lorg/w3c/dom/Element;
    .end local v51    # "notificationMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v54    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v55    # "rootElement":Lorg/w3c/dom/Element;
    .end local v56    # "salesCode":Lorg/w3c/dom/Element;
    .end local v57    # "security":Lorg/w3c/dom/Element;
    .end local v60    # "securityMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v61    # "settings":Lorg/w3c/dom/Element;
    .end local v64    # "settingsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v65    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v66    # "swVersion":Lorg/w3c/dom/Element;
    .end local v68    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v69    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    .restart local v53    # "pce":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_8
    move-exception v36

    .line 635
    .restart local v36    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 634
    .end local v36    # "e":Ljava/lang/Exception;
    .end local v53    # "pce":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_9
    move-exception v36

    .line 635
    .restart local v36    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_d

    .line 630
    .end local v36    # "e":Ljava/lang/Exception;
    .end local v38    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "MCC":Lorg/w3c/dom/Element;
    .restart local v4    # "MNC":Lorg/w3c/dom/Element;
    .restart local v13    # "apps":Lorg/w3c/dom/Element;
    .restart local v16    # "connectivity":Lorg/w3c/dom/Element;
    .restart local v19    # "connectivityMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v20    # "device":Lorg/w3c/dom/Element;
    .restart local v21    # "deviceFeature":Lorg/w3c/dom/Element;
    .restart local v24    # "deviceFeatureMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v25    # "deviceID":Lorg/w3c/dom/Element;
    .restart local v26    # "deviceName":Lorg/w3c/dom/Element;
    .restart local v27    # "devicePlatform":Lorg/w3c/dom/Element;
    .restart local v28    # "devicePlatformVersion":Lorg/w3c/dom/Element;
    .restart local v29    # "deviceType":Lorg/w3c/dom/Element;
    .restart local v31    # "deviceinfoGetAppInfoListSize":I
    .restart local v32    # "dirPath":Ljava/lang/String;
    .restart local v33    # "doc":Lorg/w3c/dom/Document;
    .restart local v34    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v35    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v37    # "file":Ljava/io/File;
    .restart local v39    # "fos":Ljava/io/FileOutputStream;
    .restart local v45    # "i":I
    .restart local v47    # "modelNumber":Lorg/w3c/dom/Element;
    .restart local v48    # "notification":Lorg/w3c/dom/Element;
    .restart local v51    # "notificationMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v55    # "rootElement":Lorg/w3c/dom/Element;
    .restart local v56    # "salesCode":Lorg/w3c/dom/Element;
    .restart local v57    # "security":Lorg/w3c/dom/Element;
    .restart local v60    # "securityMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v61    # "settings":Lorg/w3c/dom/Element;
    .restart local v64    # "settingsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v65    # "source":Ljavax/xml/transform/dom/DOMSource;
    .restart local v66    # "swVersion":Lorg/w3c/dom/Element;
    .restart local v68    # "transformer":Ljavax/xml/transform/Transformer;
    .restart local v69    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :catchall_1
    move-exception v72

    move-object/from16 v38, v39

    .end local v39    # "fos":Ljava/io/FileOutputStream;
    .restart local v38    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_c

    .line 627
    .end local v38    # "fos":Ljava/io/FileOutputStream;
    .restart local v39    # "fos":Ljava/io/FileOutputStream;
    :catch_a
    move-exception v36

    move-object/from16 v38, v39

    .end local v39    # "fos":Ljava/io/FileOutputStream;
    .restart local v38    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_8

    .line 625
    .end local v38    # "fos":Ljava/io/FileOutputStream;
    .restart local v39    # "fos":Ljava/io/FileOutputStream;
    :catch_b
    move-exception v36

    move-object/from16 v38, v39

    .end local v39    # "fos":Ljava/io/FileOutputStream;
    .restart local v38    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_6

    .line 623
    .end local v38    # "fos":Ljava/io/FileOutputStream;
    .restart local v39    # "fos":Ljava/io/FileOutputStream;
    :catch_c
    move-exception v67

    move-object/from16 v38, v39

    .end local v39    # "fos":Ljava/io/FileOutputStream;
    .restart local v38    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_5

    .line 621
    .end local v38    # "fos":Ljava/io/FileOutputStream;
    .restart local v39    # "fos":Ljava/io/FileOutputStream;
    :catch_d
    move-exception v53

    move-object/from16 v38, v39

    .end local v39    # "fos":Ljava/io/FileOutputStream;
    .restart local v38    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_3
.end method

.method public static generateAppInfoToXML(Landroid/content/Context;Lcom/samsung/android/hostmanager/aidl/DeviceInfo;)Ljava/lang/String;
    .locals 37
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deviceInfo"    # Lcom/samsung/android/hostmanager/aidl/DeviceInfo;

    .prologue
    .line 643
    sget-object v33, Lcom/samsung/android/hostmanager/status/StatusParser;->TAG:Ljava/lang/String;

    const-string v34, "ST::generateAppInfoToXML()"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    move-object/from16 v14, p1

    .line 650
    .local v14, "deviceinfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    const-string v24, ""

    .line 653
    .local v24, "res":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v18

    .line 654
    .local v18, "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual/range {v18 .. v18}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v17

    .line 656
    .local v17, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual/range {v17 .. v17}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v16

    .line 658
    .local v16, "doc":Lorg/w3c/dom/Document;
    const-string v33, "DeviceStatus"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v25

    .line 660
    .local v25, "rootElement":Lorg/w3c/dom/Element;
    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 663
    const-string v33, "device"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v13

    .line 664
    .local v13, "device":Lorg/w3c/dom/Element;
    move-object/from16 v0, v25

    invoke-interface {v0, v13}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 667
    const-string v33, "apps"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v10

    .line 668
    .local v10, "apps":Lorg/w3c/dom/Element;
    invoke-interface {v13, v10}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 671
    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getAppInfoList()Ljava/util/ArrayList;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 672
    .local v15, "deviceinfoGetAppInfoListSize":I
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_0
    move/from16 v0, v20

    if-ge v0, v15, :cond_7

    .line 673
    const-string v33, "app"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 674
    .local v3, "app":Lorg/w3c/dom/Element;
    if-eqz v3, :cond_6

    .line 675
    invoke-interface {v10, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 680
    const-string v33, "name"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    .line 681
    .local v8, "appname":Lorg/w3c/dom/Element;
    if-eqz v8, :cond_0

    .line 682
    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getAppInfoList()Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/samsung/android/hostmanager/aidl/AppInfo;

    invoke-virtual/range {v33 .. v33}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->getName()Ljava/lang/String;

    move-result-object v27

    .line 683
    .local v27, "str":Ljava/lang/String;
    if-eqz v27, :cond_0

    .line 684
    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getAppInfoList()Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/samsung/android/hostmanager/aidl/AppInfo;

    .line 685
    invoke-virtual/range {v33 .. v33}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->getName()Ljava/lang/String;

    move-result-object v33

    .line 684
    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 686
    invoke-interface {v3, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 690
    .end local v27    # "str":Ljava/lang/String;
    :cond_0
    const-string v33, "packagename"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v22

    .line 691
    .local v22, "packagename":Lorg/w3c/dom/Element;
    if-eqz v22, :cond_1

    .line 692
    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getAppInfoList()Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/samsung/android/hostmanager/aidl/AppInfo;

    invoke-virtual/range {v33 .. v33}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v27

    .line 693
    .restart local v27    # "str":Ljava/lang/String;
    if-eqz v27, :cond_1

    .line 694
    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getAppInfoList()Ljava/util/ArrayList;

    move-result-object v33

    .line 695
    move-object/from16 v0, v33

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/samsung/android/hostmanager/aidl/AppInfo;

    invoke-virtual/range {v33 .. v33}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v33

    .line 694
    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v33

    move-object/from16 v0, v22

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 696
    move-object/from16 v0, v22

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 700
    .end local v27    # "str":Ljava/lang/String;
    :cond_1
    const-string v33, "version"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v11

    .line 701
    .local v11, "appversion":Lorg/w3c/dom/Element;
    if-eqz v11, :cond_2

    .line 702
    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getAppInfoList()Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/samsung/android/hostmanager/aidl/AppInfo;

    invoke-virtual/range {v33 .. v33}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->getVersion()Ljava/lang/String;

    move-result-object v27

    .line 703
    .restart local v27    # "str":Ljava/lang/String;
    if-eqz v27, :cond_2

    .line 704
    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getAppInfoList()Ljava/util/ArrayList;

    move-result-object v33

    .line 705
    move-object/from16 v0, v33

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/samsung/android/hostmanager/aidl/AppInfo;

    invoke-virtual/range {v33 .. v33}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->getVersion()Ljava/lang/String;

    move-result-object v33

    .line 704
    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 706
    invoke-interface {v3, v11}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 710
    .end local v27    # "str":Ljava/lang/String;
    :cond_2
    const-string v33, "preloaded"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v9

    .line 711
    .local v9, "apppreloaded":Lorg/w3c/dom/Element;
    if-eqz v9, :cond_3

    .line 712
    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getAppInfoList()Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/samsung/android/hostmanager/aidl/AppInfo;

    invoke-virtual/range {v33 .. v33}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->getPreloaded()Ljava/lang/String;

    move-result-object v27

    .line 713
    .restart local v27    # "str":Ljava/lang/String;
    if-eqz v27, :cond_3

    .line 714
    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getAppInfoList()Ljava/util/ArrayList;

    move-result-object v33

    .line 715
    move-object/from16 v0, v33

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/samsung/android/hostmanager/aidl/AppInfo;

    invoke-virtual/range {v33 .. v33}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->getPreloaded()Ljava/lang/String;

    move-result-object v33

    .line 714
    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-interface {v9, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 716
    invoke-interface {v3, v9}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 720
    .end local v27    # "str":Ljava/lang/String;
    :cond_3
    const-string v33, "features"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v7

    .line 721
    .local v7, "appfeatures":Lorg/w3c/dom/Element;
    if-eqz v7, :cond_6

    .line 722
    invoke-interface {v3, v7}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 726
    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getAppInfoList()Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/samsung/android/hostmanager/aidl/AppInfo;

    invoke-virtual/range {v33 .. v33}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->getFeatures()Ljava/util/HashMap;

    move-result-object v6

    .line 727
    .local v6, "appfeatureMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v33

    if-eqz v33, :cond_6

    .line 729
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v33

    .line 728
    invoke-interface/range {v33 .. v33}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v35

    :goto_1
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_6

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 730
    .local v5, "appfeatureEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 731
    .local v21, "key":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/util/HashMap;

    .line 733
    .local v31, "value":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 734
    .local v4, "appfeatureElement":Lorg/w3c/dom/Element;
    invoke-virtual/range {v31 .. v31}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v36

    :goto_2
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_5

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 735
    .local v12, "attrEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, v33

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_4

    .line 737
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    .line 736
    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-interface {v4, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 764
    .end local v3    # "app":Lorg/w3c/dom/Element;
    .end local v4    # "appfeatureElement":Lorg/w3c/dom/Element;
    .end local v5    # "appfeatureEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v6    # "appfeatureMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v7    # "appfeatures":Lorg/w3c/dom/Element;
    .end local v8    # "appname":Lorg/w3c/dom/Element;
    .end local v9    # "apppreloaded":Lorg/w3c/dom/Element;
    .end local v10    # "apps":Lorg/w3c/dom/Element;
    .end local v11    # "appversion":Lorg/w3c/dom/Element;
    .end local v12    # "attrEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "device":Lorg/w3c/dom/Element;
    .end local v15    # "deviceinfoGetAppInfoListSize":I
    .end local v16    # "doc":Lorg/w3c/dom/Document;
    .end local v17    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v18    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v20    # "i":I
    .end local v21    # "key":Ljava/lang/String;
    .end local v22    # "packagename":Lorg/w3c/dom/Element;
    .end local v25    # "rootElement":Lorg/w3c/dom/Element;
    .end local v31    # "value":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v23

    .line 765
    .local v23, "pce":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_1
    invoke-virtual/range {v23 .. v23}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 773
    .end local v23    # "pce":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_3
    return-object v24

    .line 739
    .restart local v3    # "app":Lorg/w3c/dom/Element;
    .restart local v4    # "appfeatureElement":Lorg/w3c/dom/Element;
    .restart local v5    # "appfeatureEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v6    # "appfeatureMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v7    # "appfeatures":Lorg/w3c/dom/Element;
    .restart local v8    # "appname":Lorg/w3c/dom/Element;
    .restart local v9    # "apppreloaded":Lorg/w3c/dom/Element;
    .restart local v10    # "apps":Lorg/w3c/dom/Element;
    .restart local v11    # "appversion":Lorg/w3c/dom/Element;
    .restart local v12    # "attrEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v13    # "device":Lorg/w3c/dom/Element;
    .restart local v15    # "deviceinfoGetAppInfoListSize":I
    .restart local v16    # "doc":Lorg/w3c/dom/Document;
    .restart local v17    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v18    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v20    # "i":I
    .restart local v21    # "key":Ljava/lang/String;
    .restart local v22    # "packagename":Lorg/w3c/dom/Element;
    .restart local v25    # "rootElement":Lorg/w3c/dom/Element;
    .restart local v31    # "value":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    :try_start_2
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    .line 740
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    .line 739
    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-interface {v4, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 766
    .end local v3    # "app":Lorg/w3c/dom/Element;
    .end local v4    # "appfeatureElement":Lorg/w3c/dom/Element;
    .end local v5    # "appfeatureEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v6    # "appfeatureMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v7    # "appfeatures":Lorg/w3c/dom/Element;
    .end local v8    # "appname":Lorg/w3c/dom/Element;
    .end local v9    # "apppreloaded":Lorg/w3c/dom/Element;
    .end local v10    # "apps":Lorg/w3c/dom/Element;
    .end local v11    # "appversion":Lorg/w3c/dom/Element;
    .end local v12    # "attrEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "device":Lorg/w3c/dom/Element;
    .end local v15    # "deviceinfoGetAppInfoListSize":I
    .end local v16    # "doc":Lorg/w3c/dom/Document;
    .end local v17    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v18    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v20    # "i":I
    .end local v21    # "key":Ljava/lang/String;
    .end local v22    # "packagename":Lorg/w3c/dom/Element;
    .end local v25    # "rootElement":Lorg/w3c/dom/Element;
    .end local v31    # "value":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_1
    move-exception v28

    .line 767
    .local v28, "tfe":Ljavax/xml/transform/TransformerException;
    :try_start_3
    invoke-virtual/range {v28 .. v28}, Ljavax/xml/transform/TransformerException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 770
    .end local v28    # "tfe":Ljavax/xml/transform/TransformerException;
    :catchall_0
    move-exception v33

    throw v33

    .line 743
    .restart local v3    # "app":Lorg/w3c/dom/Element;
    .restart local v4    # "appfeatureElement":Lorg/w3c/dom/Element;
    .restart local v5    # "appfeatureEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v6    # "appfeatureMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v7    # "appfeatures":Lorg/w3c/dom/Element;
    .restart local v8    # "appname":Lorg/w3c/dom/Element;
    .restart local v9    # "apppreloaded":Lorg/w3c/dom/Element;
    .restart local v10    # "apps":Lorg/w3c/dom/Element;
    .restart local v11    # "appversion":Lorg/w3c/dom/Element;
    .restart local v13    # "device":Lorg/w3c/dom/Element;
    .restart local v15    # "deviceinfoGetAppInfoListSize":I
    .restart local v16    # "doc":Lorg/w3c/dom/Document;
    .restart local v17    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v18    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v20    # "i":I
    .restart local v21    # "key":Ljava/lang/String;
    .restart local v22    # "packagename":Lorg/w3c/dom/Element;
    .restart local v25    # "rootElement":Lorg/w3c/dom/Element;
    .restart local v31    # "value":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    :try_start_4
    invoke-interface {v7, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_4
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 768
    .end local v3    # "app":Lorg/w3c/dom/Element;
    .end local v4    # "appfeatureElement":Lorg/w3c/dom/Element;
    .end local v5    # "appfeatureEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v6    # "appfeatureMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v7    # "appfeatures":Lorg/w3c/dom/Element;
    .end local v8    # "appname":Lorg/w3c/dom/Element;
    .end local v9    # "apppreloaded":Lorg/w3c/dom/Element;
    .end local v10    # "apps":Lorg/w3c/dom/Element;
    .end local v11    # "appversion":Lorg/w3c/dom/Element;
    .end local v13    # "device":Lorg/w3c/dom/Element;
    .end local v15    # "deviceinfoGetAppInfoListSize":I
    .end local v16    # "doc":Lorg/w3c/dom/Document;
    .end local v17    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v18    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v20    # "i":I
    .end local v21    # "key":Ljava/lang/String;
    .end local v22    # "packagename":Lorg/w3c/dom/Element;
    .end local v25    # "rootElement":Lorg/w3c/dom/Element;
    .end local v31    # "value":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_2
    move-exception v19

    .line 769
    .local v19, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 672
    .end local v19    # "e":Ljava/lang/Exception;
    .restart local v3    # "app":Lorg/w3c/dom/Element;
    .restart local v10    # "apps":Lorg/w3c/dom/Element;
    .restart local v13    # "device":Lorg/w3c/dom/Element;
    .restart local v15    # "deviceinfoGetAppInfoListSize":I
    .restart local v16    # "doc":Lorg/w3c/dom/Document;
    .restart local v17    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v18    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v20    # "i":I
    .restart local v25    # "rootElement":Lorg/w3c/dom/Element;
    :cond_6
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_0

    .line 750
    .end local v3    # "app":Lorg/w3c/dom/Element;
    :cond_7
    :try_start_6
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v30

    .line 751
    .local v30, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual/range {v30 .. v30}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v29

    .line 753
    .local v29, "transformer":Ljavax/xml/transform/Transformer;
    const-string v33, "encoding"

    const-string v34, "UTF-8"

    move-object/from16 v0, v29

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    const-string v33, "indent"

    const-string v34, "yes"

    move-object/from16 v0, v29

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    new-instance v26, Ljavax/xml/transform/dom/DOMSource;

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 757
    .local v26, "source":Ljavax/xml/transform/dom/DOMSource;
    new-instance v32, Ljava/io/StringWriter;

    invoke-direct/range {v32 .. v32}, Ljava/io/StringWriter;-><init>()V

    .line 761
    .local v32, "writer":Ljava/io/StringWriter;
    new-instance v33, Ljavax/xml/transform/stream/StreamResult;

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 762
    invoke-virtual/range {v32 .. v32}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_6
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v24

    goto :goto_3
.end method
