.class Lcom/samsung/android/hostmanager/br/BackupRestoreUtils$FontInfoXmlHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "BackupRestoreUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FontInfoXmlHandler"
.end annotation


# instance fields
.field private content:Ljava/lang/StringBuffer;

.field private mFontInfo:Lcom/samsung/android/hostmanager/homestyler/FontsInfo;

.field mFontList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/hostmanager/homestyler/FontsInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/hostmanager/homestyler/FontsInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 418
    .local p1, "fontList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/homestyler/FontsInfo;>;"
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 419
    iput-object p1, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils$FontInfoXmlHandler;->mFontList:Ljava/util/List;

    .line 420
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
    .line 427
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    .line 428
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils$FontInfoXmlHandler;->content:Ljava/lang/StringBuffer;

    .line 429
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils$FontInfoXmlHandler;->content:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 430
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
    .line 447
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const-string v0, "Font"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 449
    sget-object v0, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endElement fontlist size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils$FontInfoXmlHandler;->mFontList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    const-string v0, "item"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 451
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils$FontInfoXmlHandler;->mFontList:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils$FontInfoXmlHandler;->mFontInfo:Lcom/samsung/android/hostmanager/homestyler/FontsInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 452
    :cond_2
    const-string v0, "AppName"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 453
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils$FontInfoXmlHandler;->mFontInfo:Lcom/samsung/android/hostmanager/homestyler/FontsInfo;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils$FontInfoXmlHandler;->content:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 454
    :cond_3
    const-string v0, "PackageName"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 455
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils$FontInfoXmlHandler;->mFontInfo:Lcom/samsung/android/hostmanager/homestyler/FontsInfo;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils$FontInfoXmlHandler;->content:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->setPackageName(Ljava/lang/String;)V

    goto :goto_0

    .line 456
    :cond_4
    const-string v0, "ClassName"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 457
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils$FontInfoXmlHandler;->mFontInfo:Lcom/samsung/android/hostmanager/homestyler/FontsInfo;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils$FontInfoXmlHandler;->content:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->setClassName(Ljava/lang/String;)V

    goto :goto_0

    .line 458
    :cond_5
    const-string v0, "ImageFileName"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 459
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils$FontInfoXmlHandler;->mFontInfo:Lcom/samsung/android/hostmanager/homestyler/FontsInfo;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils$FontInfoXmlHandler;->content:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->setImageName(Ljava/lang/String;)V

    goto :goto_0

    .line 460
    :cond_6
    const-string v0, "SettingFileName"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 461
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils$FontInfoXmlHandler;->mFontInfo:Lcom/samsung/android/hostmanager/homestyler/FontsInfo;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils$FontInfoXmlHandler;->content:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->setSettingFileName(Ljava/lang/String;)V

    goto :goto_0

    .line 462
    :cond_7
    const-string v0, "PreLoad"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 463
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils$FontInfoXmlHandler;->mFontInfo:Lcom/samsung/android/hostmanager/homestyler/FontsInfo;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils$FontInfoXmlHandler;->content:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->setPreloadState(Z)V

    goto/16 :goto_0

    .line 464
    :cond_8
    const-string v0, "Version"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 465
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils$FontInfoXmlHandler;->mFontInfo:Lcom/samsung/android/hostmanager/homestyler/FontsInfo;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils$FontInfoXmlHandler;->content:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->setVersion(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 466
    :cond_9
    const-string v0, "IsShown"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 467
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils$FontInfoXmlHandler;->mFontInfo:Lcom/samsung/android/hostmanager/homestyler/FontsInfo;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils$FontInfoXmlHandler;->content:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->setShownState(Z)V

    goto/16 :goto_0

    .line 468
    :cond_a
    const-string v0, "FamilyName"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 469
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils$FontInfoXmlHandler;->mFontInfo:Lcom/samsung/android/hostmanager/homestyler/FontsInfo;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils$FontInfoXmlHandler;->content:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->setFamilyName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 470
    :cond_b
    const-string v0, "AppCategory"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils$FontInfoXmlHandler;->mFontInfo:Lcom/samsung/android/hostmanager/homestyler/FontsInfo;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils$FontInfoXmlHandler;->content:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->setAppCategory(Ljava/lang/String;)V

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
    .line 436
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 438
    const-string v0, "item"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    new-instance v0, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;

    invoke-direct {v0}, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils$FontInfoXmlHandler;->mFontInfo:Lcom/samsung/android/hostmanager/homestyler/FontsInfo;

    .line 441
    :cond_0
    return-void
.end method
