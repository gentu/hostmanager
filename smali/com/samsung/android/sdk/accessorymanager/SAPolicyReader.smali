.class public Lcom/samsung/android/sdk/accessorymanager/SAPolicyReader;
.super Ljava/lang/Object;
.source "SAPolicyReader.java"


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

.field static final STRING_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final TAG:Ljava/lang/String; = "SAPolicyReader"

.field private static final XML_RESOURCE_TYPE:Ljava/lang/String; = "xml"

.field private static sXmlReader:Lcom/samsung/android/sdk/accessorymanager/SAPolicyReader;


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
    iput-object p1, p0, Lcom/samsung/android/sdk/accessorymanager/SAPolicyReader;->mContext:Landroid/content/Context;

    .line 56
    return-void
.end method

.method private getConfigfileLocation()Ljava/lang/String;
    .locals 6

    .prologue
    .line 66
    const/4 v2, 0x0

    .line 68
    .local v2, "metaData":Landroid/os/Bundle;
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/sdk/accessorymanager/SAPolicyReader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 69
    iget-object v4, p0, Lcom/samsung/android/sdk/accessorymanager/SAPolicyReader;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    .line 68
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 69
    iget-object v2, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    if-nez v2, :cond_0

    .line 75
    const-string v3, "SAPolicyReader"

    const-string v4, "No meta data present in the manifest"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "No meta data present in the manifest"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 70
    :catch_0
    move-exception v1

    .line 71
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "SAPolicyReader"

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

    .line 72
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Unable to fetch metadata from teh manifest"

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 78
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const-string v3, "AccessoryServicesLocation"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "configFileLocation":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 80
    const-string v3, "SAPolicyReader"

    const-string v4, "No meta data found with key:AccessoryServicesLocation"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "No meta data found with key:AccessoryServicesLocation"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 83
    :cond_1
    const-string v3, "SAPolicyReader"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Service description(s) file Location:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/accessorymanager/SAPolicyReader;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    const-class v1, Lcom/samsung/android/sdk/accessorymanager/SAPolicyReader;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/accessorymanager/SAPolicyReader;->sXmlReader:Lcom/samsung/android/sdk/accessorymanager/SAPolicyReader;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/samsung/android/sdk/accessorymanager/SAPolicyReader;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/accessorymanager/SAPolicyReader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/sdk/accessorymanager/SAPolicyReader;->sXmlReader:Lcom/samsung/android/sdk/accessorymanager/SAPolicyReader;

    .line 62
    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/accessorymanager/SAPolicyReader;->sXmlReader:Lcom/samsung/android/sdk/accessorymanager/SAPolicyReader;
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

.method private preProcessXml(Lorg/xmlpull/v1/XmlPullParser;)[B
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

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 142
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 143
    .local v1, "buffer":Ljava/lang/StringBuffer;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 144
    .local v2, "eventType":I
    :goto_0
    if-ne v2, v7, :cond_0

    .line 175
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    return-object v4

    .line 145
    :cond_0
    if-nez v2, :cond_2

    .line 146
    const-string v4, "SAPolicyReader"

    const-string v5, "Start document"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    const v5, 0xfff9

    if-lt v4, v5, :cond_7

    .line 170
    new-instance v4, Ljava/lang/RuntimeException;

    .line 171
    const-string v5, "Accessory Service XML is too long! Services XML cannot be more than 64k in size"

    .line 170
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 147
    :cond_2
    if-ne v2, v9, :cond_5

    .line 149
    const-string v4, "<%s "

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 152
    .local v0, "attributeCount":I
    if-lez v0, :cond_3

    .line 153
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-lt v3, v0, :cond_4

    .line 161
    .end local v3    # "i":I
    :cond_3
    const-string v4, ">"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 154
    .restart local v3    # "i":I
    :cond_4
    const-string v4, "%s=\"%s\""

    new-array v5, v9, [Ljava/lang/Object;

    .line 155
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 156
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 154
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 162
    .end local v0    # "attributeCount":I
    .end local v3    # "i":I
    :cond_5
    const/4 v4, 0x3

    if-ne v2, v4, :cond_6

    .line 164
    const-string v4, "</%s>"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 165
    :cond_6
    const/4 v4, 0x4

    if-ne v2, v4, :cond_1

    .line 167
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 173
    :cond_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto/16 :goto_0
.end method


# virtual methods
.method public declared-synchronized readXml()[B
    .locals 13

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessorymanager/SAPolicyReader;->getConfigfileLocation()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "configFileLocation":Ljava/lang/String;
    const-string v10, "/res/"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 91
    const-string v10, "SAPolicyReader"

    const-string v11, "Fetching xml from /res/xml"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const-string v10, "."

    invoke-virtual {v0, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 94
    .local v2, "extensionIndex":I
    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 95
    .local v7, "lastFileSeparator":I
    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v0, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 97
    .local v4, "fileName":Ljava/lang/String;
    :try_start_1
    iget-object v10, p0, Lcom/samsung/android/sdk/accessorymanager/SAPolicyReader;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string v11, "xml"

    .line 98
    iget-object v12, p0, Lcom/samsung/android/sdk/accessorymanager/SAPolicyReader;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 97
    invoke-virtual {v10, v4, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 99
    .local v5, "id":I
    iget-object v10, p0, Lcom/samsung/android/sdk/accessorymanager/SAPolicyReader;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    .line 100
    .local v9, "resourceParser":Landroid/content/res/XmlResourceParser;
    if-nez v9, :cond_0

    .line 101
    new-instance v10, Ljava/lang/RuntimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Unable to read the service XML file from:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 102
    const-string v12, " resource parser is null"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 101
    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    .end local v5    # "id":I
    .end local v9    # "resourceParser":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v1

    .line 106
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_2
    new-instance v10, Ljava/lang/RuntimeException;

    .line 107
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Accessory services configuration XML file not found at:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 106
    invoke-direct {v10, v11, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    .end local v0    # "configFileLocation":Ljava/lang/String;
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v2    # "extensionIndex":I
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v7    # "lastFileSeparator":I
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 104
    .restart local v0    # "configFileLocation":Ljava/lang/String;
    .restart local v2    # "extensionIndex":I
    .restart local v4    # "fileName":Ljava/lang/String;
    .restart local v5    # "id":I
    .restart local v7    # "lastFileSeparator":I
    .restart local v9    # "resourceParser":Landroid/content/res/XmlResourceParser;
    :cond_0
    :try_start_3
    invoke-direct {p0, v9}, Lcom/samsung/android/sdk/accessorymanager/SAPolicyReader;->preProcessXml(Lorg/xmlpull/v1/XmlPullParser;)[B
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v10

    .line 128
    .end local v2    # "extensionIndex":I
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v5    # "id":I
    .end local v7    # "lastFileSeparator":I
    .end local v9    # "resourceParser":Landroid/content/res/XmlResourceParser;
    :goto_0
    monitor-exit p0

    return-object v10

    .line 108
    .restart local v2    # "extensionIndex":I
    .restart local v4    # "fileName":Ljava/lang/String;
    .restart local v7    # "lastFileSeparator":I
    :catch_1
    move-exception v1

    .line 109
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_4
    new-instance v10, Ljava/lang/RuntimeException;

    .line 110
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Parsing Accessory service configuration failed from:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 109
    invoke-direct {v10, v11, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 111
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v1

    .line 112
    .local v1, "e":Ljava/io/IOException;
    new-instance v10, Ljava/lang/RuntimeException;

    .line 113
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Parsing Accessory service configuration failed from:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 112
    invoke-direct {v10, v11, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 115
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "extensionIndex":I
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v7    # "lastFileSeparator":I
    :cond_1
    const-string v10, "/assets/"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 116
    const-string v10, "SAPolicyReader"

    const-string v11, "Fetching xml from /assets"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 119
    :try_start_5
    iget-object v10, p0, Lcom/samsung/android/sdk/accessorymanager/SAPolicyReader;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    const-string v11, "/assets/"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v6

    .line 124
    .local v6, "inStream":Ljava/io/InputStream;
    :try_start_6
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    .line 125
    .local v3, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 126
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 127
    .local v8, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v10, "UTF-8"

    invoke-interface {v8, v6, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 128
    invoke-direct {p0, v8}, Lcom/samsung/android/sdk/accessorymanager/SAPolicyReader;->preProcessXml(Lorg/xmlpull/v1/XmlPullParser;)[B
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v10

    goto :goto_0

    .line 120
    .end local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6    # "inStream":Ljava/io/InputStream;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_3
    move-exception v1

    .line 121
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_7
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

    .line 129
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v6    # "inStream":Ljava/io/InputStream;
    :catch_4
    move-exception v1

    .line 130
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v10, Ljava/lang/RuntimeException;

    .line 131
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Parsing Accessory service configuration failed from:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 130
    invoke-direct {v10, v11, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 132
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_5
    move-exception v1

    .line 133
    .local v1, "e":Ljava/io/IOException;
    new-instance v10, Ljava/lang/RuntimeException;

    .line 134
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Parsing Accessory service configuration failed from:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 133
    invoke-direct {v10, v11, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 137
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "inStream":Ljava/io/InputStream;
    :cond_2
    new-instance v10, Ljava/lang/RuntimeException;

    const-string v11, "Accssory Service profile xml must be in /res or /assets directory."

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method
