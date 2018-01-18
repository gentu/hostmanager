.class public final Lcom/samsung/android/app/watchmanager/plugin/libfactory/util/FeatureUtil;
.super Ljava/lang/Object;
.source "FeatureUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static semAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/samsung/android/app/watchmanager/plugin/libfactory/util/FeatureUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/watchmanager/plugin/libfactory/util/FeatureUtil;->TAG:Ljava/lang/String;

    .line 11
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/app/watchmanager/plugin/libfactory/util/FeatureUtil;->semAvailable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkSupportSemAPI(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    sget-object v2, Lcom/samsung/android/app/watchmanager/plugin/libfactory/util/FeatureUtil;->TAG:Ljava/lang/String;

    const-string v3, "checkSupportSemAPI"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 21
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const-string v2, "com.samsung.feature.samsung_experience_mobile"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 22
    const/4 v2, 0x1

    sput-boolean v2, Lcom/samsung/android/app/watchmanager/plugin/libfactory/util/FeatureUtil;->semAvailable:Z

    .line 23
    sget-object v2, Lcom/samsung/android/app/watchmanager/plugin/libfactory/util/FeatureUtil;->TAG:Ljava/lang/String;

    const-string v3, "semAvailable set as true "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-void

    .line 25
    :catch_0
    move-exception v0

    .line 27
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 28
    const/4 v2, 0x0

    sput-boolean v2, Lcom/samsung/android/app/watchmanager/plugin/libfactory/util/FeatureUtil;->semAvailable:Z

    .line 29
    sget-object v2, Lcom/samsung/android/app/watchmanager/plugin/libfactory/util/FeatureUtil;->TAG:Ljava/lang/String;

    const-string v3, "semAvailable set as false "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-static {p0}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/util/FeatureUtil;->checkSupportSemAPI(Landroid/content/Context;)V

    .line 15
    return-void
.end method

.method public static supportSem()Z
    .locals 3

    .prologue
    .line 34
    sget-object v0, Lcom/samsung/android/app/watchmanager/plugin/libfactory/util/FeatureUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "semAvailable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/app/watchmanager/plugin/libfactory/util/FeatureUtil;->semAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    sget-boolean v0, Lcom/samsung/android/app/watchmanager/plugin/libfactory/util/FeatureUtil;->semAvailable:Z

    return v0
.end method
