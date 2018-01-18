.class public Lcom/samsung/android/hostmanager/connectionmanager/policy/RuleParserBTversion;
.super Lcom/samsung/android/hostmanager/connectionmanager/policy/RuleParser;
.source "RuleParserBTversion.java"


# instance fields
.field private mRuleTable:Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyTable;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)V
    .locals 1
    .param p1, "manager"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/policy/RuleParser;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/policy/RuleParserBTversion;->mRuleTable:Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyTable;

    .line 23
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/policy/RuleParserBTversion;->mManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .line 24
    return-void
.end method


# virtual methods
.method protected getXMLFileFromAssets(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)Ljava/lang/String;
    .locals 6
    .param p1, "manager"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 29
    .local v1, "assetManager":Landroid/content/res/AssetManager;
    const-string v5, "PolicyDescription.xml"

    invoke-virtual {v1, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetManager$AssetInputStream;

    .line 30
    .local v0, "ais":Landroid/content/res/AssetManager$AssetInputStream;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 33
    .local v2, "br":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .local v3, "data":Ljava/lang/StringBuilder;
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 38
    .end local v4    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v5

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 39
    invoke-virtual {v0}, Landroid/content/res/AssetManager$AssetInputStream;->close()V

    throw v5

    .line 38
    .restart local v4    # "line":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 39
    invoke-virtual {v0}, Landroid/content/res/AssetManager$AssetInputStream;->close()V

    .line 42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method protected pullparserFromXML(Ljava/lang/String;)V
    .locals 11
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 48
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    .line 49
    .local v3, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 50
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v8, Ljava/io/StringReader;

    invoke-direct {v8, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 53
    const/4 v5, 0x0

    .line 54
    .local v5, "policyName":Ljava/lang/String;
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 56
    .local v1, "eventType":I
    const/4 v6, 0x0

    .line 57
    .local v6, "rowName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 59
    .local v0, "colName":Ljava/lang/String;
    :goto_0
    const/4 v8, 0x1

    if-eq v1, v8, :cond_1

    .line 60
    packed-switch v1, :pswitch_data_0

    .line 111
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 62
    :pswitch_1
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyTable;->getInstance()Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyTable;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/policy/RuleParserBTversion;->mRuleTable:Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyTable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 113
    .end local v0    # "colName":Ljava/lang/String;
    .end local v1    # "eventType":I
    .end local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "policyName":Ljava/lang/String;
    .end local v6    # "rowName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 114
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 117
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_1
    return-void

    .line 70
    .restart local v0    # "colName":Ljava/lang/String;
    .restart local v1    # "eventType":I
    .restart local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "policyName":Ljava/lang/String;
    .restart local v6    # "rowName":Ljava/lang/String;
    :pswitch_2
    :try_start_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 72
    .local v7, "sTag":Ljava/lang/String;
    const-string v8, "policy"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 73
    const/4 v8, 0x0

    const-string v9, "name"

    invoke-interface {v4, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 76
    :cond_2
    const-string v8, "host_buletooth"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 77
    const/4 v8, 0x0

    const-string v9, "version"

    invoke-interface {v4, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 79
    :cond_3
    if-eqz v5, :cond_4

    if-eqz v6, :cond_4

    const-string v8, "wearable_buletooth"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 81
    const/4 v8, 0x0

    const-string v9, "version"

    invoke-interface {v4, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/policy/RuleParserBTversion;->mRuleTable:Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyTable;

    const/4 v9, 0x0

    const-string v10, "value"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v5, v6, v0, v9}, Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyTable;->pushRuleMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_4
    const-string v8, "android_vserion"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 86
    const/4 v8, 0x0

    const-string v9, "androidAPIVersion"

    invoke-interface {v4, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 89
    :cond_5
    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    const-string v8, "available_module"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 91
    const/4 v8, 0x0

    const-string v9, "BLE"

    invoke-interface {v4, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/policy/RuleParserBTversion;->mRuleTable:Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyTable;

    const/4 v9, 0x0

    const-string v10, "value"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v5, v6, v0, v9}, Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyTable;->pushRuleMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 98
    .end local v7    # "sTag":Ljava/lang/String;
    :pswitch_3
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 99
    .restart local v7    # "sTag":Ljava/lang/String;
    const-string v8, "policy"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 100
    if-nez v5, :cond_0

    .line 103
    const-string v8, "RuleParser"

    const-string v9, "[POLICY] policyName is null"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
