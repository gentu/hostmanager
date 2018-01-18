.class public Lcom/samsung/android/hostmanager/model/InstallPack;
.super Ljava/lang/Object;
.source "InstallPack.java"


# instance fields
.field public apkName:Ljava/lang/String;

.field public packName:Ljava/lang/String;

.field public path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "apk"    # Ljava/lang/String;
    .param p2, "pack"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/model/InstallPack;->path:Ljava/lang/String;

    .line 8
    iput-object p1, p0, Lcom/samsung/android/hostmanager/model/InstallPack;->apkName:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/samsung/android/hostmanager/model/InstallPack;->packName:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/hostmanager/model/InstallPack;->path:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "apkName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "internalPath"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/model/InstallPack;->path:Ljava/lang/String;

    .line 14
    iput-object p1, p0, Lcom/samsung/android/hostmanager/model/InstallPack;->apkName:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/samsung/android/hostmanager/model/InstallPack;->packName:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/samsung/android/hostmanager/model/InstallPack;->path:Ljava/lang/String;

    .line 17
    return-void
.end method
