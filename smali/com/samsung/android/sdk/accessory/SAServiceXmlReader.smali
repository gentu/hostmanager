.class Lcom/samsung/android/sdk/accessory/SAServiceXmlReader;
.super Ljava/lang/Object;
.source "SAServiceXmlReader.java"


# static fields
.field private static final ASSET_FILE_PREFIX:Ljava/lang/String; = "/assets/"

.field private static final ATTRIBUTE_TEMPLATE:Ljava/lang/String; = "%s=\"%s\""

.field private static final END_TAG_TEMPLATE:Ljava/lang/String; = "</%s>"

.field private static final FILE_EXTENSION_SEPARATOR:Ljava/lang/String; = "."

.field private static final MAX_SERVICES_XML_LENGTH:I = 0xfff9

.field private static final RESOURCE_FILE_PREFIX:Ljava/lang/String; = "/res/"

.field private static final SERVICE_CONFIG_FILE_LOCATION:Ljava/lang/String; = "AccessoryServicesLocation"

.field private static final START_TAG_BEGIN_TEMPLATE:Ljava/lang/String; = "<%s "

.field private static final START_TAG_END_TEMPLATE:Ljava/lang/String; = ">"

.field private static final TAG:Ljava/lang/String; = "ServiceXmlReader"

.field private static final XML_RESOURCE_TYPE:Ljava/lang/String; = "xml"

.field private static mServiceXml:[B

.field private static sXmlReader:Lcom/samsung/android/sdk/accessory/SAServiceXmlReader;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    if-nez p1, :cond_0

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid context:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAServiceXmlReader;->mContext:Landroid/content/Context;

    .line 56
    return-void
.end method

.method private getConfigfileLocation()Ljava/lang/String;
    .locals 6

    .prologue
    .line 67
    const/4 v2, 0x0

    .line 69
    .local v2, "metaData":Landroid/os/Bundle;
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAServiceXmlReader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 70
    iget-object v4, p0, Lcom/samsung/android/sdk/accessory/SAServiceXmlReader;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 71
    const/16 v5, 0x80

    .line 70
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 71
    iget-object v2, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    if-nez v2, :cond_0

    .line 77
    const-string v3, "ServiceXmlReader"

    const-string v4, "No meta data present in the manifest"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "No meta data present in the manifest"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 72
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "ServiceXmlReader"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to fetch metadata from teh manifest"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Unable to fetch metadata from teh manifest"

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 80
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const-string v3, "AccessoryServicesLocation"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "configFileLocation":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 82
    const-string v3, "ServiceXmlReader"

    const-string v4, "No meta data found with key:AccessoryServicesLocation"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "No meta data found with key:AccessoryServicesLocation"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 85
    :cond_1
    const-string v3, "ServiceXmlReader"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Service description(s) file Location:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-object v0
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/accessory/SAServiceXmlReader;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    const-class v1, Lcom/samsung/android/sdk/accessory/SAServiceXmlReader;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAServiceXmlReader;->sXmlReader:Lcom/samsung/android/sdk/accessory/SAServiceXmlReader;

    if-nez v0, :cond_0

    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/sdk/accessory/SAServiceXmlReader;->mServiceXml:[B

    .line 61
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAServiceXmlReader;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/accessory/SAServiceXmlReader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/sdk/accessory/SAServiceXmlReader;->sXmlReader:Lcom/samsung/android/sdk/accessory/SAServiceXmlReader;

    .line 63
    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAServiceXmlReader;->sXmlReader:Lcom/samsung/android/sdk/accessory/SAServiceXmlReader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized preProcessXml(Lorg/xmlpull/v1/XmlPullParser;)[B
    .locals 10
    .param p1, "resourceParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 149
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 150
    .local v1, "buffer":Ljava/lang/StringBuffer;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 151
    .local v2, "eventType":I
    :goto_0
    if-ne v2, v8, :cond_0

    .line 179
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->getStringEncoding()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    monitor-exit p0

    return-object v4

    .line 152
    :cond_0
    if-nez v2, :cond_2

    .line 153
    :try_start_1
    const-string v4, "ServiceXmlReader"

    const-string v5, "Start document"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    const v5, 0xfff9

    if-lt v4, v5, :cond_7

    .line 175
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Accessory Service XML is too long! Services XML cannot be more than 64k in size"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    .end local v1    # "buffer":Ljava/lang/StringBuffer;
    .end local v2    # "eventType":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 154
    .restart local v1    # "buffer":Ljava/lang/StringBuffer;
    .restart local v2    # "eventType":I
    :cond_2
    if-ne v2, v9, :cond_5

    .line 156
    :try_start_2
    const-string v4, "<%s "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 159
    .local v0, "attributeCount":I
    if-lez v0, :cond_3

    .line 160
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-lt v3, v0, :cond_4

    .line 166
    .end local v3    # "i":I
    :cond_3
    const-string v4, ">"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 161
    .restart local v3    # "i":I
    :cond_4
    const-string v4, "%s=\"%s\""

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 162
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 161
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 167
    .end local v0    # "attributeCount":I
    .end local v3    # "i":I
    :cond_5
    const/4 v4, 0x3

    if-ne v2, v4, :cond_6

    .line 169
    const-string v4, "</%s>"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 170
    :cond_6
    const/4 v4, 0x4

    if-ne v2, v4, :cond_1

    .line 172
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 177
    :cond_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    goto/16 :goto_0
.end method


# virtual methods
.method declared-synchronized readXml()[B
    .locals 13

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAServiceXmlReader;->getConfigfileLocation()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "configFileLocation":Ljava/lang/String;
    sget-object v10, Lcom/samsung/android/sdk/accessory/SAServiceXmlReader;->mServiceXml:[B

    if-nez v10, :cond_1

    .line 94
    const-string v10, "/res/"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 95
    const-string v10, "ServiceXmlReader"

    const-string v11, "Fetching xml from /res/xml"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const-string v10, "."

    invoke-virtual {v0, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 98
    .local v2, "extensionIndex":I
    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 99
    .local v7, "lastFileSeparator":I
    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v0, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 101
    .local v4, "fileName":Ljava/lang/String;
    :try_start_1
    iget-object v10, p0, Lcom/samsung/android/sdk/accessory/SAServiceXmlReader;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string v11, "xml"

    .line 102
    iget-object v12, p0, Lcom/samsung/android/sdk/accessory/SAServiceXmlReader;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 101
    invoke-virtual {v10, v4, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 103
    .local v5, "id":I
    iget-object v10, p0, Lcom/samsung/android/sdk/accessory/SAServiceXmlReader;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    .line 104
    .local v9, "resourceParser":Landroid/content/res/XmlResourceParser;
    if-nez v9, :cond_0

    .line 105
    new-instance v10, Ljava/lang/RuntimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Unable to read the service XML file from:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 106
    const-string v12, " resource parser is null"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 105
    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    .end local v5    # "id":I
    .end local v9    # "resourceParser":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v1

    .line 110
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_2
    new-instance v10, Ljava/lang/RuntimeException;

    .line 111
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Accessory services configuration XML file not found at:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 110
    invoke-direct {v10, v11, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    .end local v0    # "configFileLocation":Ljava/lang/String;
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v2    # "extensionIndex":I
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v7    # "lastFileSeparator":I
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 108
    .restart local v0    # "configFileLocation":Ljava/lang/String;
    .restart local v2    # "extensionIndex":I
    .restart local v4    # "fileName":Ljava/lang/String;
    .restart local v5    # "id":I
    .restart local v7    # "lastFileSeparator":I
    .restart local v9    # "resourceParser":Landroid/content/res/XmlResourceParser;
    :cond_0
    :try_start_3
    invoke-direct {p0, v9}, Lcom/samsung/android/sdk/accessory/SAServiceXmlReader;->preProcessXml(Lorg/xmlpull/v1/XmlPullParser;)[B

    move-result-object v10

    sput-object v10, Lcom/samsung/android/sdk/accessory/SAServiceXmlReader;->mServiceXml:[B
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 145
    .end local v2    # "extensionIndex":I
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v5    # "id":I
    .end local v7    # "lastFileSeparator":I
    .end local v9    # "resourceParser":Landroid/content/res/XmlResourceParser;
    :cond_1
    :goto_0
    :try_start_4
    sget-object v10, Lcom/samsung/android/sdk/accessory/SAServiceXmlReader;->mServiceXml:[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v10

    .line 112
    .restart local v2    # "extensionIndex":I
    .restart local v4    # "fileName":Ljava/lang/String;
    .restart local v7    # "lastFileSeparator":I
    :catch_1
    move-exception v1

    .line 113
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_5
    new-instance v10, Ljava/lang/RuntimeException;

    .line 114
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Parsing Accessory service configuration failed from:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 113
    invoke-direct {v10, v11, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 115
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v1

    .line 116
    .local v1, "e":Ljava/io/IOException;
    new-instance v10, Ljava/lang/RuntimeException;

    .line 117
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Parsing Accessory service configuration failed from:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 116
    invoke-direct {v10, v11, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 119
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "extensionIndex":I
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v7    # "lastFileSeparator":I
    :cond_2
    const-string v10, "/assets/"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 120
    const-string v10, "ServiceXmlReader"

    const-string v11, "Fetching xml from /assets"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 123
    :try_start_6
    iget-object v10, p0, Lcom/samsung/android/sdk/accessory/SAServiceXmlReader;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    const-string v11, "/assets/"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v6

    .line 128
    .local v6, "inStream":Ljava/io/InputStream;
    :try_start_7
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    .line 129
    .local v3, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 130
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 131
    .local v8, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->getStringEncoding()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v6, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 132
    invoke-direct {p0, v8}, Lcom/samsung/android/sdk/accessory/SAServiceXmlReader;->preProcessXml(Lorg/xmlpull/v1/XmlPullParser;)[B

    move-result-object v10

    sput-object v10, Lcom/samsung/android/sdk/accessory/SAServiceXmlReader;->mServiceXml:[B
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 133
    .end local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_3
    move-exception v1

    .line 134
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_8
    new-instance v10, Ljava/lang/RuntimeException;

    .line 135
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Parsing Accessory service configuration failed from:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 134
    invoke-direct {v10, v11, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 124
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v6    # "inStream":Ljava/io/InputStream;
    :catch_4
    move-exception v1

    .line 125
    .local v1, "e":Ljava/io/IOException;
    new-instance v10, Ljava/lang/RuntimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Unable to read the service XML file from:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 136
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v6    # "inStream":Ljava/io/InputStream;
    :catch_5
    move-exception v1

    .line 137
    .restart local v1    # "e":Ljava/io/IOException;
    new-instance v10, Ljava/lang/RuntimeException;

    .line 138
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Parsing Accessory service configuration failed from:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 137
    invoke-direct {v10, v11, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 141
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "inStream":Ljava/io/InputStream;
    :cond_3
    new-instance v10, Ljava/lang/RuntimeException;

    const-string v11, "Accssory Service profile xml must be in /res or /assets directory."

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method
