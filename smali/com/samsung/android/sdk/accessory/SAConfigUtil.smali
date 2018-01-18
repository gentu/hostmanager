.class public Lcom/samsung/android/sdk/accessory/SAConfigUtil;
.super Ljava/lang/Object;
.source "SAConfigUtil.java"


# static fields
.field private static final ASSET_FILE_PREFIX:Ljava/lang/String; = "/assets/"

.field private static final CONFIG_META_SERVICES_FILE_LOCATION:Ljava/lang/String; = "AccessoryServicesLocation"

.field private static final RESOURCE_FILE_PREFIX:Ljava/lang/String; = "/res/"

.field static final SA_ERROR_INVALID_APPLICATION_NAME:I = 0x1

.field static final SA_ERROR_INVALID_CHANNEL_ID:I = 0x8

.field static final SA_ERROR_INVALID_CHANNEL_QOS_PRIORITY:I = 0xa

.field static final SA_ERROR_INVALID_CHANNEL_QOS_RATE:I = 0x9

.field static final SA_ERROR_INVALID_CHANNEL_QOS_TYPE:I = 0xb

.field static final SA_ERROR_INVALID_PROFILE_ID:I = 0x3

.field static final SA_ERROR_INVALID_PROFILE_NAME:I = 0x2

.field static final SA_ERROR_INVALID_PROFILE_ROLE:I = 0x4

.field static final SA_ERROR_INVALID_PROFILE_VERSION:I = 0x6

.field static final SA_ERROR_INVALID_SERVICE_IMPL:I = 0x5

.field static final SA_ERROR_INVALID_TRANSPORT_TYPE:I = 0x7

.field static final SA_ERROR_NO_CHANNEL:I = 0xd

.field static final SA_ERROR_NO_CONFIG_FILE:I = 0x10

.field static final SA_ERROR_NO_CONFIG_META_DATA:I = 0xf

.field static final SA_ERROR_NO_SERVICE_PROFILE:I = 0xe

.field static final SA_ERROR_NO_TRANSPORT:I = 0xc

.field private static final SA_ERROR_XML_PARSING:I = 0xc00

.field private static final SERVICE_LIMITS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SAConfigUtil"

.field private static sOnlyInstance:Lcom/samsung/android/sdk/accessory/SAConfigUtil;


# instance fields
.field private applicationName:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mServiceEndpointsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/accessory/SAServiceProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 65
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 66
    const-string v2, "ANY"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 67
    const-string v2, "ONE_ACCESSORY"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 68
    const-string v2, "ONE_PEERAGENT"

    aput-object v2, v0, v1

    .line 65
    sput-object v0, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->SERVICE_LIMITS:[Ljava/lang/String;

    .line 71
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->applicationName:Ljava/lang/String;

    .line 86
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->mContext:Landroid/content/Context;

    .line 88
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    .line 88
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 89
    iget-object v1, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 90
    .local v1, "uMetaData":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 91
    const-string v2, "AccessoryServicesLocation"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->mString:Ljava/lang/String;

    .line 98
    .end local v1    # "uMetaData":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 93
    .restart local v1    # "uMetaData":Landroid/os/Bundle;
    :cond_0
    const-string v2, "SAConfigUtil"

    const-string v3, "No meta data present in the manifest"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    .end local v1    # "uMetaData":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "SAConfigUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static declared-synchronized getDefaultInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/accessory/SAConfigUtil;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 346
    const-class v1, Lcom/samsung/android/sdk/accessory/SAConfigUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->sOnlyInstance:Lcom/samsung/android/sdk/accessory/SAConfigUtil;

    if-nez v0, :cond_0

    .line 347
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAConfigUtil;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/accessory/SAConfigUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->sOnlyInstance:Lcom/samsung/android/sdk/accessory/SAConfigUtil;

    .line 348
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->sOnlyInstance:Lcom/samsung/android/sdk/accessory/SAConfigUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->sOnlyInstance:Lcom/samsung/android/sdk/accessory/SAConfigUtil;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 346
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized parseServicesXML()Z
    .locals 37

    .prologue
    .line 106
    monitor-enter p0

    const/16 v18, 0x0

    .line 107
    .local v18, "eventType":I
    const/16 v31, 0x0

    .line 108
    .local v31, "uParser":Lorg/xmlpull/v1/XmlPullParser;
    const/16 v32, 0x0

    .line 109
    .local v32, "uTag":Ljava/lang/String;
    const/16 v30, 0x0

    .line 112
    .local v30, "uAttr":Ljava/lang/String;
    const/4 v6, 0x0

    .line 113
    .local v6, "profileId":Ljava/lang/String;
    const/4 v7, 0x0

    .line 114
    .local v7, "serviceName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 115
    .local v9, "serviceImpl":Ljava/lang/String;
    const/4 v8, 0x0

    .line 116
    .local v8, "serviceRole":Ljava/lang/String;
    const/4 v10, 0x0

    .line 117
    .local v10, "profileVersion":Ljava/lang/String;
    const/4 v11, 0x0

    .line 118
    .local v11, "serviceLimit":I
    const/4 v12, 0x0

    .line 121
    .local v12, "serviceTimeout":I
    const/4 v13, 0x0

    .line 124
    .local v13, "transportType":I
    :try_start_0
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v15, "channelList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdk/accessory/SAServiceChannel;>;"
    const-string v5, "SAConfigUtil"

    new-instance v34, Ljava/lang/StringBuilder;

    const-string v35, "Parse Accssory Service profile xml file from: "

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->mString:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/sdk/accessory/SAServiceXmlReader;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/accessory/SAServiceXmlReader;

    move-result-object v29

    .line 129
    .local v29, "serviceXmlReader":Lcom/samsung/android/sdk/accessory/SAServiceXmlReader;
    invoke-virtual/range {v29 .. v29}, Lcom/samsung/android/sdk/accessory/SAServiceXmlReader;->readXml()[B

    move-result-object v33

    .line 130
    .local v33, "xml":[B
    new-instance v25, Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v34, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v5, v2}, Ljava/lang/String;-><init>([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    .local v25, "inputData":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v19

    .line 134
    .local v19, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v5, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 136
    invoke-virtual/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v31

    .line 137
    if-eqz v31, :cond_0

    .line 138
    new-instance v5, Ljava/io/StringReader;

    move-object/from16 v0, v25

    invoke-direct {v5, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    :cond_0
    if-eqz v31, :cond_1

    .line 146
    :try_start_2
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v18

    .line 152
    :cond_1
    :goto_0
    const/4 v5, 0x1

    move/from16 v0, v18

    if-ne v0, v5, :cond_2

    .line 329
    :try_start_3
    const-string v5, "SAConfigUtil"

    const-string v34, "End document"

    move-object/from16 v0, v34

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->mServiceEndpointsMap:Ljava/util/HashMap;

    if-nez v5, :cond_1e

    .line 332
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v34, "Unable to parse the accessory services configuration file"

    move-object/from16 v0, v34

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 106
    .end local v15    # "channelList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdk/accessory/SAServiceChannel;>;"
    .end local v19    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v25    # "inputData":Ljava/lang/String;
    .end local v29    # "serviceXmlReader":Lcom/samsung/android/sdk/accessory/SAServiceXmlReader;
    .end local v33    # "xml":[B
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 140
    .restart local v15    # "channelList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdk/accessory/SAServiceChannel;>;"
    .restart local v25    # "inputData":Ljava/lang/String;
    .restart local v29    # "serviceXmlReader":Lcom/samsung/android/sdk/accessory/SAServiceXmlReader;
    .restart local v33    # "xml":[B
    :catch_0
    move-exception v17

    .line 141
    .local v17, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_4
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v34, "XmlPullParserFactory Exception for Accssory Service profile XML file"

    move-object/from16 v0, v34

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 148
    .end local v17    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v19    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :catch_1
    move-exception v17

    .line 149
    .restart local v17    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v34, "Wrong Schema of xml file. Please check"

    move-object/from16 v0, v34

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 153
    .end local v17    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_2
    if-nez v18, :cond_4

    .line 154
    const-string v5, "SAConfigUtil"

    const-string v34, "Start document"

    move-object/from16 v0, v34

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 319
    :cond_3
    :goto_1
    if-eqz v31, :cond_1

    .line 320
    :try_start_5
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v18

    goto :goto_0

    .line 155
    :cond_4
    const/4 v5, 0x2

    move/from16 v0, v18

    if-ne v0, v5, :cond_1b

    if-eqz v31, :cond_1b

    .line 156
    :try_start_6
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v32

    .line 157
    const-string v5, "SAConfigUtil"

    new-instance v34, Ljava/lang/StringBuilder;

    const-string v35, "Start TAG "

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const-string v5, "application"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 159
    const/4 v5, 0x0

    const-string v34, "name"

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-interface {v0, v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->applicationName:Ljava/lang/String;

    .line 160
    const-string v5, "application"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->applicationName:Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-direct {v0, v5, v1, v2}, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->validateAttribute(Ljava/lang/String;Ljava/lang/String;I)V

    .line 161
    const-string v5, "SAConfigUtil"

    new-instance v34, Ljava/lang/StringBuilder;

    const-string v35, "Application Name: ALE_NAME: "

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->applicationName:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 162
    :cond_5
    const-string v5, "serviceProfile"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 163
    const/4 v5, 0x0

    const-string v34, "serviceImpl"

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-interface {v0, v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 164
    const-string v5, "serviceImpl"

    const/16 v34, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v5, v9, v1}, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->validateAttribute(Ljava/lang/String;Ljava/lang/String;I)V

    .line 166
    const/4 v5, 0x0

    const-string v34, "name"

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-interface {v0, v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 167
    const-string v5, "name"

    const/16 v34, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v5, v7, v1}, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->validateAttribute(Ljava/lang/String;Ljava/lang/String;I)V

    .line 169
    const/4 v5, 0x0

    const-string v34, "role"

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-interface {v0, v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 170
    const-string v5, "role"

    const/16 v34, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v5, v8, v1}, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->validateAttribute(Ljava/lang/String;Ljava/lang/String;I)V

    .line 172
    const/4 v5, 0x0

    const-string v34, "id"

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-interface {v0, v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 173
    const-string v5, "id"

    const/16 v34, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v5, v6, v1}, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->validateAttribute(Ljava/lang/String;Ljava/lang/String;I)V

    .line 174
    const-string v5, "SAConfigUtil"

    new-instance v34, Ljava/lang/StringBuilder;

    const-string v35, "profileId:"

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v35, 0x0

    const-string v36, "id"

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/4 v5, 0x0

    const-string v34, "version"

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-interface {v0, v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 177
    const-string v5, "version"

    const/16 v34, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v5, v10, v1}, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->validateAttribute(Ljava/lang/String;Ljava/lang/String;I)V

    .line 178
    const-string v5, "SAConfigUtil"

    new-instance v34, Ljava/lang/StringBuilder;

    const-string v35, "profileVersion:"

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v35, 0x0

    const-string v36, "version"

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/4 v5, 0x0

    const-string v34, "serviceLimit"

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-interface {v0, v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 181
    if-eqz v30, :cond_6

    sget-object v5, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->SERVICE_LIMITS:[Ljava/lang/String;

    const/16 v34, 0x0

    aget-object v5, v5, v34

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 182
    :cond_6
    const/4 v11, 0x0

    .line 190
    :cond_7
    :goto_2
    const/4 v5, 0x0

    const-string v34, "serviceTimeout"

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-interface {v0, v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 191
    if-nez v30, :cond_b

    .line 192
    const/4 v12, 0x0

    .line 204
    :cond_8
    :goto_3
    const-string v5, "SAConfigUtil"

    new-instance v34, Ljava/lang/StringBuilder;

    const-string v35, "Service Policy:"

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v35, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->SERVICE_LIMITS:[Ljava/lang/String;

    aget-object v35, v35, v11

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const-string v5, "SAConfigUtil"

    new-instance v34, Ljava/lang/StringBuilder;

    const-string v35, "Service timeout:"

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 184
    :cond_9
    sget-object v5, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->SERVICE_LIMITS:[Ljava/lang/String;

    const/16 v34, 0x1

    aget-object v5, v5, v34

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 185
    const/4 v11, 0x1

    .line 186
    goto :goto_2

    :cond_a
    sget-object v5, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->SERVICE_LIMITS:[Ljava/lang/String;

    const/16 v34, 0x2

    aget-object v5, v5, v34

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v5

    if-eqz v5, :cond_7

    .line 187
    const/4 v11, 0x2

    goto :goto_2

    .line 195
    :cond_b
    :try_start_7
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v12

    .line 197
    if-gez v12, :cond_8

    .line 198
    const/4 v12, 0x0

    goto :goto_3

    .line 200
    :catch_2
    move-exception v26

    .line 201
    .local v26, "numEx":Ljava/lang/NumberFormatException;
    const/4 v12, 0x0

    goto :goto_3

    .line 207
    .end local v26    # "numEx":Ljava/lang/NumberFormatException;
    :cond_c
    :try_start_8
    const-string v5, "transport"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 208
    const/4 v5, 0x0

    const-string v34, "type"

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-interface {v0, v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 209
    const-string v5, "Transport"

    const/16 v34, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v34

    invoke-direct {v0, v5, v1, v2}, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->validateAttribute(Ljava/lang/String;Ljava/lang/String;I)V

    .line 210
    const-string v5, "TRANSPORT_BT"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 211
    or-int/lit8 v13, v13, 0x1

    .line 220
    :cond_d
    :goto_4
    const-string v5, "SAConfigUtil"

    new-instance v34, Ljava/lang/StringBuilder;

    const-string v35, "type value:"

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 212
    :cond_e
    const-string v5, "TRANSPORT_WIFI"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 213
    or-int/lit8 v13, v13, 0x2

    .line 214
    goto :goto_4

    :cond_f
    const-string v5, "TRANSPORT_BLE"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 215
    or-int/lit8 v13, v13, 0x4

    .line 216
    goto :goto_4

    :cond_10
    const-string v5, "TRANSPORT_USB"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 217
    or-int/lit8 v13, v13, 0x8

    goto :goto_4

    .line 221
    :cond_11
    const-string v5, "serviceChannel"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 222
    const/4 v5, 0x0

    const-string v34, "id"

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-interface {v0, v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 223
    .local v24, "id":Ljava/lang/String;
    const-string v5, "serviceChannel/id"

    const/16 v34, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v34

    invoke-direct {v0, v5, v1, v2}, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->validateAttribute(Ljava/lang/String;Ljava/lang/String;I)V

    .line 225
    const/4 v5, 0x0

    const-string v34, "dataRate"

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-interface {v0, v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 226
    .local v16, "dataRate":Ljava/lang/String;
    if-nez v16, :cond_12

    .line 227
    const-string v5, "SAConfigUtil"

    const-string v34, "Parsing new attribute failed.Trying to access old attribute"

    move-object/from16 v0, v34

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/4 v5, 0x0

    const-string v34, "qosDataRate"

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-interface {v0, v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 230
    :cond_12
    const-string v5, "serviceChannel/qoSDataRate"

    const/16 v34, 0x9

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v34

    invoke-direct {v0, v5, v1, v2}, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->validateAttribute(Ljava/lang/String;Ljava/lang/String;I)V

    .line 231
    const-string v5, "SAConfigUtil"

    new-instance v34, Ljava/lang/StringBuilder;

    const-string v35, "DataRate:"

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/4 v5, 0x0

    const-string v34, "priority"

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-interface {v0, v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 234
    .local v27, "priority":Ljava/lang/String;
    if-nez v27, :cond_13

    .line 235
    const/4 v5, 0x0

    const-string v34, "qosPriority"

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-interface {v0, v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 237
    :cond_13
    const-string v5, "serviceChannel/qoSPriority"

    const/16 v34, 0xa

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v34

    invoke-direct {v0, v5, v1, v2}, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->validateAttribute(Ljava/lang/String;Ljava/lang/String;I)V

    .line 238
    const-string v5, "SAConfigUtil"

    new-instance v34, Ljava/lang/StringBuilder;

    const-string v35, "Priority:"

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/4 v5, 0x0

    const-string v34, "reliability"

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-interface {v0, v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 241
    .local v28, "reliability":Ljava/lang/String;
    if-nez v28, :cond_14

    .line 242
    const/4 v5, 0x0

    const-string v34, "qosType"

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-interface {v0, v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 244
    :cond_14
    const-string v5, "serviceChannel/qoSType"

    const/16 v34, 0xb

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v34

    invoke-direct {v0, v5, v1, v2}, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->validateAttribute(Ljava/lang/String;Ljava/lang/String;I)V

    .line 245
    const-string v5, "SAConfigUtil"

    new-instance v34, Ljava/lang/StringBuilder;

    const-string v35, "Reliability:"

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/16 v20, 0x0

    .line 248
    .local v20, "iDataRate":I
    const/16 v21, 0x0

    .line 249
    .local v21, "iPriority":I
    const/16 v22, 0x0

    .line 251
    .local v22, "iReliability":I
    const-string v5, "Low"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 252
    const/16 v20, 0x0

    .line 256
    :cond_15
    :goto_5
    const-string v5, "Low"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 257
    const/16 v21, 0x0

    .line 263
    :cond_16
    :goto_6
    const-string v5, "enable"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 264
    const/16 v22, 0x1

    .line 268
    :goto_7
    new-instance v23, Lcom/samsung/android/sdk/accessory/SAServiceChannel;

    .line 269
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 268
    move-object/from16 v0, v23

    move/from16 v1, v21

    move/from16 v2, v20

    move/from16 v3, v22

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/samsung/android/sdk/accessory/SAServiceChannel;-><init>(IIII)V

    .line 273
    .local v23, "iServiceChannel":Lcom/samsung/android/sdk/accessory/SAServiceChannel;
    move-object/from16 v0, v23

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 253
    .end local v23    # "iServiceChannel":Lcom/samsung/android/sdk/accessory/SAServiceChannel;
    :cond_17
    const-string v5, "High"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 254
    const/16 v20, 0x1

    goto :goto_5

    .line 258
    :cond_18
    const-string v5, "Medium"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 259
    const/16 v21, 0x1

    goto :goto_6

    .line 260
    :cond_19
    const-string v5, "High"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 261
    const/16 v21, 0x2

    goto :goto_6

    .line 266
    :cond_1a
    const/16 v22, 0x0

    goto :goto_7

    .line 276
    .end local v16    # "dataRate":Ljava/lang/String;
    .end local v20    # "iDataRate":I
    .end local v21    # "iPriority":I
    .end local v22    # "iReliability":I
    .end local v24    # "id":Ljava/lang/String;
    .end local v27    # "priority":Ljava/lang/String;
    .end local v28    # "reliability":Ljava/lang/String;
    :cond_1b
    const/4 v5, 0x3

    move/from16 v0, v18

    if-ne v0, v5, :cond_1d

    if-eqz v31, :cond_1d

    .line 277
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v32

    .line 278
    const-string v5, "SAConfigUtil"

    new-instance v34, Ljava/lang/StringBuilder;

    const-string v35, "End TAG "

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const-string v5, "serviceProfile"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 282
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .local v14, "iServiceChannelList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdk/accessory/SAServiceChannel;>;"
    invoke-interface {v14, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 287
    const-string v5, "SAConfigUtil"

    new-instance v34, Ljava/lang/StringBuilder;

    const-string v35, "application name is known "

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->applicationName:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " Please pass it to framework"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    new-instance v4, Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    .line 290
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->applicationName:Ljava/lang/String;

    .line 289
    invoke-direct/range {v4 .. v14}, Lcom/samsung/android/sdk/accessory/SAServiceProfile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;)V

    .line 294
    .local v4, "iServiceProfile":Lcom/samsung/android/sdk/accessory/SAServiceProfile;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->mServiceEndpointsMap:Ljava/util/HashMap;

    if-nez v5, :cond_1c

    .line 295
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->mServiceEndpointsMap:Ljava/util/HashMap;

    .line 297
    :cond_1c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->mServiceEndpointsMap:Ljava/util/HashMap;

    invoke-virtual {v5, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const-string v5, "SAConfigUtil"

    new-instance v34, Ljava/lang/StringBuilder;

    const-string v35, "$$$"

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const/16 v32, 0x0

    .line 302
    const/16 v30, 0x0

    .line 304
    const/4 v6, 0x0

    .line 305
    const/4 v7, 0x0

    .line 306
    const/4 v9, 0x0

    .line 307
    const/4 v10, 0x0

    .line 308
    const/4 v8, 0x0

    .line 309
    const/4 v11, 0x0

    .line 310
    const/4 v12, 0x0

    .line 311
    const/4 v13, 0x0

    .line 312
    invoke-interface {v15}, Ljava/util/List;->clear()V

    goto/16 :goto_1

    .line 314
    .end local v4    # "iServiceProfile":Lcom/samsung/android/sdk/accessory/SAServiceProfile;
    .end local v14    # "iServiceChannelList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdk/accessory/SAServiceChannel;>;"
    :cond_1d
    const/4 v5, 0x4

    move/from16 v0, v18

    if-ne v0, v5, :cond_3

    if-eqz v31, :cond_3

    .line 315
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v32

    .line 316
    const-string v5, "SAConfigUtil"

    new-instance v34, Ljava/lang/StringBuilder;

    const-string v35, "Text "

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 322
    :catch_3
    move-exception v17

    .line 323
    .restart local v17    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v34, "Unable to parse the accessory services configuration file"

    move-object/from16 v0, v34

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 324
    .end local v17    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_4
    move-exception v17

    .line 325
    .local v17, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v34, "Unable to parse the accessory services configuration file"

    move-object/from16 v0, v34

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 334
    .end local v17    # "e":Ljava/lang/Exception;
    :cond_1e
    const/4 v5, 0x1

    monitor-exit p0

    return v5
.end method

.method private validateAttribute(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "attrName"    # Ljava/lang/String;
    .param p2, "attrValue"    # Ljava/lang/String;
    .param p3, "errorCode"    # I

    .prologue
    .line 376
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to parse the accessory services configuration file :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_0
    return-void
.end method


# virtual methods
.method declared-synchronized fetchServicesDescription(Ljava/lang/String;)Lcom/samsung/android/sdk/accessory/SAServiceProfile;
    .locals 3
    .param p1, "fQServiceClassImplName"    # Ljava/lang/String;

    .prologue
    .line 364
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->mServiceEndpointsMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 365
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->parseServicesXML()Z

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->mServiceEndpointsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 368
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->mServiceEndpointsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/accessory/SAServiceProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    :goto_0
    monitor-exit p0

    return-object v0

    .line 370
    :cond_1
    :try_start_1
    const-string v0, "SAConfigUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fetchServicesDescription: Class not found in registered list"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 372
    const/4 v0, 0x0

    goto :goto_0

    .line 364
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getListOfServiceEndPoints()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 389
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->mString:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 390
    const-string v2, "SAConfigUtil"

    const-string v3, "Application has no metadata.Returning empty list"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 399
    :cond_0
    monitor-exit p0

    return-object v0

    .line 392
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->mServiceEndpointsMap:Ljava/util/HashMap;

    if-nez v2, :cond_2

    .line 393
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->parseServicesXML()Z

    .line 395
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->mServiceEndpointsMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 396
    .local v0, "listConsumersClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 397
    .local v1, "s":Ljava/lang/String;
    const-string v3, "SAConfigUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "KEYS found are"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 389
    .end local v0    # "listConsumersClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "s":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized getLocalApplicationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 403
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->applicationName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 404
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->parseServicesXML()Z

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->applicationName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 403
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
