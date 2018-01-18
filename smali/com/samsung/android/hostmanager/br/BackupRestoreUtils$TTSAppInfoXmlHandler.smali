.class Lcom/samsung/android/hostmanager/br/BackupRestoreUtils$TTSAppInfoXmlHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "BackupRestoreUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TTSAppInfoXmlHandler"
.end annotation


# instance fields
.field private content:Ljava/lang/StringBuffer;

.field mTTPAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTTSAppInfo:Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 515
    .local p1, "ttsAppList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;>;"
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 516
    iput-object p1, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils$TTSAppInfoXmlHandler;->mTTPAppList:Ljava/util/List;

    .line 517
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 524
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    .line 525
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils$TTSAppInfoXmlHandler;->content:Ljava/lang/StringBuffer;

    .line 526
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils$TTSAppInfoXmlHandler;->content:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 527
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 544
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    const-string v0, "Tts"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 546
    sget-object v0, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endElement fontlist size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils$TTSAppInfoXmlHandler;->mTTPAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 547
    :cond_1
    const-string v0, "item"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 548
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils$TTSAppInfoXmlHandler;->mTTPAppList:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils$TTSAppInfoXmlHandler;->mTTSAppInfo:Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 549
    :cond_2
    const-string v0, "AppName"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 550
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils$TTSAppInfoXmlHandler;->mTTSAppInfo:Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils$TTSAppInfoXmlHandler;->content:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 551
    :cond_3
    const-string v0, "PackageName"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 552
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils$TTSAppInfoXmlHandler;->mTTSAppInfo:Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils$TTSAppInfoXmlHandler;->content:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->setPackageName(Ljava/lang/String;)V

    goto :goto_0

    .line 553
    :cond_4
    const-string v0, "ClassName"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 554
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils$TTSAppInfoXmlHandler;->mTTSAppInfo:Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils$TTSAppInfoXmlHandler;->content:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->setClassName(Ljava/lang/String;)V

    goto :goto_0

    .line 555
    :cond_5
    const-string v0, "Version"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 556
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils$TTSAppInfoXmlHandler;->mTTSAppInfo:Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils$TTSAppInfoXmlHandler;->content:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->setVersion(Ljava/lang/String;)V

    goto :goto_0

    .line 557
    :cond_6
    const-string v0, "ImageFileName"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 558
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils$TTSAppInfoXmlHandler;->mTTSAppInfo:Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils$TTSAppInfoXmlHandler;->content:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->setImageFileName(Ljava/lang/String;)V

    goto :goto_0

    .line 559
    :cond_7
    const-string v0, "SettingFileName"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 560
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils$TTSAppInfoXmlHandler;->mTTSAppInfo:Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils$TTSAppInfoXmlHandler;->content:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->setSettingFileName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 561
    :cond_8
    const-string v0, "PreLoad"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 562
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils$TTSAppInfoXmlHandler;->mTTSAppInfo:Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils$TTSAppInfoXmlHandler;->content:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->setPreloadState(Z)V

    goto/16 :goto_0

    .line 563
    :cond_9
    const-string v0, "AppCategory"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 564
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils$TTSAppInfoXmlHandler;->mTTSAppInfo:Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils$TTSAppInfoXmlHandler;->content:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->setAppCategory(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 565
    :cond_a
    const-string v0, "VoiceType"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 566
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils$TTSAppInfoXmlHandler;->mTTSAppInfo:Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils$TTSAppInfoXmlHandler;->content:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->setVoiceType(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 567
    :cond_b
    const-string v0, "IsInstalled"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils$TTSAppInfoXmlHandler;->mTTSAppInfo:Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils$TTSAppInfoXmlHandler;->content:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->setInstalledState(Z)V

    goto/16 :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 533
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 535
    const-string v0, "item"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    new-instance v0, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;

    invoke-direct {v0}, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils$TTSAppInfoXmlHandler;->mTTSAppInfo:Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;

    .line 538
    :cond_0
    return-void
.end method
