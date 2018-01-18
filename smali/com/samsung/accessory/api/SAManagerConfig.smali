.class public Lcom/samsung/accessory/api/SAManagerConfig;
.super Ljava/lang/Object;
.source "SAManagerConfig.java"


# static fields
.field public static ACCESSORY_FRAMEWORK_PACKAGE:Ljava/lang/String; = null

.field public static final ACCESSORY_FRAMEWORK_VERSION_1:I = 0x1

.field public static final ACCESSORY_FRAMEWORK_VERSION_SEPARATE_ACCESSORY_MANAGER:I = 0xd5

.field public static final ACCESSORY_MANAGER_SDK_REFACTORING:I = 0xa

.field public static final ACCESSORY_MANAGER_SDK_SEPARATED:I = 0x9

.field public static final ERROR_FRAMEWORK_NOT_INSTALLED:I = -0x1

.field public static final VERSION_CODE:I = 0xa

.field public static final VERSION_NAME:Ljava/lang/String; = "2.4.1"

.field private static sFrameworkVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string v0, "com.samsung.accessory"

    sput-object v0, Lcom/samsung/accessory/api/SAManagerConfig;->ACCESSORY_FRAMEWORK_PACKAGE:Ljava/lang/String;

    .line 59
    const/4 v0, 0x1

    sput v0, Lcom/samsung/accessory/api/SAManagerConfig;->sFrameworkVersion:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    if-nez p1, :cond_0

    .line 69
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid Context"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 71
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 73
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    sget-object v3, Lcom/samsung/accessory/api/SAManagerConfig;->ACCESSORY_FRAMEWORK_PACKAGE:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 74
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_1

    .line 75
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v3, Lcom/samsung/accessory/api/SAManagerConfig;->sFrameworkVersion:I

    .line 76
    sget v3, Lcom/samsung/accessory/api/SAManagerConfig;->sFrameworkVersion:I

    const/16 v4, 0xd5

    if-ge v3, v4, :cond_2

    .line 77
    new-instance v3, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Accessory Framework: version:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/samsung/accessory/api/SAManagerConfig;->sFrameworkVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 78
    const-string v5, " does not support AccessoryManager features."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 79
    const/4 v5, 0x3

    .line 77
    invoke-direct {v3, v4, v5}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 86
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    const-string v4, "Accessory Framework Not installed"

    invoke-direct {v3, v4, v6}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 82
    .end local v0    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    :try_start_1
    new-instance v3, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    const-string v4, "Accessory Framework Not installed"

    .line 83
    const/4 v5, 0x2

    .line 82
    invoke-direct {v3, v4, v5}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 90
    :cond_2
    return-void
.end method

.method public static getFrameworkVersion()I
    .locals 1

    .prologue
    .line 93
    sget v0, Lcom/samsung/accessory/api/SAManagerConfig;->sFrameworkVersion:I

    return v0
.end method
