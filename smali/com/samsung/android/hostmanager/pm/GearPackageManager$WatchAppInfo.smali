.class Lcom/samsung/android/hostmanager/pm/GearPackageManager$WatchAppInfo;
.super Ljava/lang/Object;
.source "GearPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/pm/GearPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WatchAppInfo"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mImageFileName:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mPreloadStatus:Z

.field private mVersionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4265
    const-class v0, Lcom/samsung/android/hostmanager/pm/GearPackageManager$WatchAppInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hostmanager/pm/GearPackageManager$WatchAppInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "versionName"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "prealoadStatus"    # Z

    .prologue
    .line 4273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4274
    iput-object p1, p0, Lcom/samsung/android/hostmanager/pm/GearPackageManager$WatchAppInfo;->mAppName:Ljava/lang/String;

    .line 4275
    iput-object p3, p0, Lcom/samsung/android/hostmanager/pm/GearPackageManager$WatchAppInfo;->mPackageName:Ljava/lang/String;

    .line 4276
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4277
    :cond_0
    sget-object v0, Lcom/samsung/android/hostmanager/pm/GearPackageManager$WatchAppInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No version name is available for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/pm/GearPackageManager$WatchAppInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4278
    const-string v0, "0.0.1"

    iput-object v0, p0, Lcom/samsung/android/hostmanager/pm/GearPackageManager$WatchAppInfo;->mVersionName:Ljava/lang/String;

    .line 4282
    :goto_0
    iput-boolean p4, p0, Lcom/samsung/android/hostmanager/pm/GearPackageManager$WatchAppInfo;->mPreloadStatus:Z

    .line 4283
    return-void

    .line 4280
    :cond_1
    iput-object p2, p0, Lcom/samsung/android/hostmanager/pm/GearPackageManager$WatchAppInfo;->mVersionName:Ljava/lang/String;

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "versionName"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "prealoadStatus"    # Z
    .param p5, "imageFileName"    # Ljava/lang/String;

    .prologue
    .line 4284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4285
    iput-object p1, p0, Lcom/samsung/android/hostmanager/pm/GearPackageManager$WatchAppInfo;->mAppName:Ljava/lang/String;

    .line 4286
    iput-object p3, p0, Lcom/samsung/android/hostmanager/pm/GearPackageManager$WatchAppInfo;->mPackageName:Ljava/lang/String;

    .line 4287
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4288
    :cond_0
    sget-object v0, Lcom/samsung/android/hostmanager/pm/GearPackageManager$WatchAppInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No version name is available for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/pm/GearPackageManager$WatchAppInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4289
    const-string v0, "0.0.1"

    iput-object v0, p0, Lcom/samsung/android/hostmanager/pm/GearPackageManager$WatchAppInfo;->mVersionName:Ljava/lang/String;

    .line 4293
    :goto_0
    iput-boolean p4, p0, Lcom/samsung/android/hostmanager/pm/GearPackageManager$WatchAppInfo;->mPreloadStatus:Z

    .line 4294
    iput-object p5, p0, Lcom/samsung/android/hostmanager/pm/GearPackageManager$WatchAppInfo;->mImageFileName:Ljava/lang/String;

    .line 4295
    return-void

    .line 4291
    :cond_1
    iput-object p2, p0, Lcom/samsung/android/hostmanager/pm/GearPackageManager$WatchAppInfo;->mVersionName:Ljava/lang/String;

    goto :goto_0
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/samsung/android/hostmanager/pm/GearPackageManager$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Z
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # Lcom/samsung/android/hostmanager/pm/GearPackageManager$1;

    .prologue
    .line 4264
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/hostmanager/pm/GearPackageManager$WatchAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/hostmanager/pm/GearPackageManager$WatchAppInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/pm/GearPackageManager$WatchAppInfo;

    .prologue
    .line 4264
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/pm/GearPackageManager$WatchAppInfo;->getAppName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/hostmanager/pm/GearPackageManager$WatchAppInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/pm/GearPackageManager$WatchAppInfo;

    .prologue
    .line 4264
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/pm/GearPackageManager$WatchAppInfo;->getPreloadStatus()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/android/hostmanager/pm/GearPackageManager$WatchAppInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/pm/GearPackageManager$WatchAppInfo;

    .prologue
    .line 4264
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/pm/GearPackageManager$WatchAppInfo;->getImageFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/hostmanager/pm/GearPackageManager$WatchAppInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/pm/GearPackageManager$WatchAppInfo;

    .prologue
    .line 4264
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/pm/GearPackageManager$WatchAppInfo;->getVersionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4297
    iget-object v0, p0, Lcom/samsung/android/hostmanager/pm/GearPackageManager$WatchAppInfo;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method private getImageFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4299
    iget-object v0, p0, Lcom/samsung/android/hostmanager/pm/GearPackageManager$WatchAppInfo;->mImageFileName:Ljava/lang/String;

    return-object v0
.end method

.method private getPreloadStatus()Z
    .locals 1

    .prologue
    .line 4305
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/pm/GearPackageManager$WatchAppInfo;->mPreloadStatus:Z

    return v0
.end method

.method private getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4301
    iget-object v0, p0, Lcom/samsung/android/hostmanager/pm/GearPackageManager$WatchAppInfo;->mVersionName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hostmanager/pm/GearPackageManager$WatchAppInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hostmanager/pm/GearPackageManager$WatchAppInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hostmanager/pm/GearPackageManager$WatchAppInfo;->mVersionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
