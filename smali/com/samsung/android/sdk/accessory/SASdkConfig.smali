.class public final Lcom/samsung/android/sdk/accessory/SASdkConfig;
.super Ljava/lang/Object;
.source "SASdkConfig.java"


# static fields
.field public static ACCESSORY_FRAMEWORK_PACKAGE:Ljava/lang/String; = null

.field static final ACCESSORY_FRAMEWORK_VERSION_1:I = 0x1

.field public static final ACCESSORY_FRAMEWORK_VERSION_2:I = 0x2

.field public static final ACCESSORY_FRAMEWORK_VERSION_MESSAGE_SERVICE_SUPPORT:I = 0xcd

.field public static final ACCESSORY_FRAMEWORK_VERSION_RECEIVER_RECYCLING_SUPPORT:I = 0x4f

.field public static final ACCESSORY_FRAMEWORK_VERSION_SCS_PEER_ID:I = 0x47

.field public static final ACCESSORY_FRAMEWORK_VERSION_SDK_UPDATE_SUPPORT:I = 0x12a

.field public static final ACCESSORY_FRAMEWORK_VERSION_SENDER_RECYCLING_SUPPORT:I = 0x4b

.field public static final OLD_VERSION_CODE:I = 0x6

.field public static final REVISION:Ljava/lang/String; = "1"

.field public static final SDK_VERSION_CODE_1:I = 0x1

.field public static final SDK_VERSION_CODE_2:I = 0x2

.field public static final SDK_VERSION_CODE_3:I = 0x3

.field public static final SDK_VERSION_CODE_4:I = 0x4

.field public static final SDK_VERSION_CODE_5:I = 0x5

.field public static final SDK_VERSION_CODE_6:I = 0x6

.field public static final SDK_VERSION_CODE_7:I = 0x7

.field public static final SDK_VERSION_CODE_8:I = 0x8

.field static final STRING_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final TAG:Ljava/lang/String; = "SASdkConfig"

.field public static final VERSION_CODE:I = 0x8

.field public static final VERSION_NAME:Ljava/lang/String; = "2.4.1"

.field private static sFrameworkMaxFooterLen:I

.field private static sFrameworkMaxHeaderLen:I

.field private static sFrameworkMaxMsgHeaderLen:I

.field private static sFrameworkProcessId:I

.field private static sFrameworkSupported:Z

.field private static sFrameworkVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const-string v0, "com.samsung.accessory"

    sput-object v0, Lcom/samsung/android/sdk/accessory/SASdkConfig;->ACCESSORY_FRAMEWORK_PACKAGE:Ljava/lang/String;

    .line 101
    const/4 v0, 0x1

    sput v0, Lcom/samsung/android/sdk/accessory/SASdkConfig;->sFrameworkVersion:I

    .line 126
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/sdk/accessory/SASdkConfig;->sFrameworkSupported:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/SAException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    if-nez p1, :cond_0

    .line 130
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid Context"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 132
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 134
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    sget-object v3, Lcom/samsung/android/sdk/accessory/SASdkConfig;->ACCESSORY_FRAMEWORK_PACKAGE:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 135
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_1

    .line 136
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v3, Lcom/samsung/android/sdk/accessory/SASdkConfig;->sFrameworkVersion:I

    .line 137
    const-string v3, "SASdkConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Accessory Framework:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Accessory SDK:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "2.4.1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " r"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->checkIfThinSdkSupported(Landroid/content/pm/PackageManager;)V

    .line 150
    return-void

    .line 139
    :cond_1
    :try_start_1
    const-string v3, "SASdkConfig"

    const-string v4, "Accessory Framework Not installed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    new-instance v3, Lcom/samsung/android/sdk/accessory/SAException;

    const/4 v4, 0x2

    .line 141
    const-string v5, "Accessory Framework Not installed"

    .line 140
    invoke-direct {v3, v4, v5}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 143
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 144
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "SASdkConfig"

    const-string v4, "Accessory Framework Not installed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    new-instance v3, Lcom/samsung/android/sdk/accessory/SAException;

    .line 146
    const-string v4, "Accessory Framework Not installed"

    .line 145
    invoke-direct {v3, v6, v4}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method static checkAccessoryPermission(Landroid/content/Context;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 164
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 166
    .local v4, "pkgName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 167
    .local v5, "pkm":Landroid/content/pm/PackageManager;
    if-nez v5, :cond_1

    .line 168
    const-string v8, "SASdkConfig"

    const-string v9, "Package Manager is null"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .end local v5    # "pkm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return v7

    .line 171
    .restart local v5    # "pkm":Landroid/content/pm/PackageManager;
    :cond_1
    const/16 v8, 0x1000

    invoke-virtual {v5, v4, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 172
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v3, :cond_2

    .line 173
    const-string v8, "SASdkConfig"

    const-string v9, "PackageInfo is null"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 196
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "pkm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 197
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "SASdkConfig"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Admin Permission check failed for Package"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 177
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v5    # "pkm":Landroid/content/pm/PackageManager;
    :cond_2
    :try_start_1
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 178
    .local v6, "requestedPermissions":[Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 181
    const/4 v0, -0x1

    .line 182
    .local v0, "accessoryPermissionIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v8, v6

    if-lt v2, v8, :cond_3

    .line 189
    :goto_2
    const/4 v8, -0x1

    if-ne v0, v8, :cond_5

    .line 190
    const-string v8, "SASdkConfig"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Accessory service permission not granted for Package"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 183
    :cond_3
    const-string v8, "com.samsung.accessory.permission.ACCESSORY_FRAMEWORK"

    aget-object v9, v6, v2

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 184
    move v0, v2

    .line 185
    goto :goto_2

    .line 182
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 193
    :cond_5
    const-string v8, "SASdkConfig"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Accessory service permission available for Package"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 194
    const/4 v7, 0x1

    goto :goto_0
.end method

.method private checkIfThinSdkSupported(Landroid/content/pm/PackageManager;)V
    .locals 4
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 153
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 154
    .local v0, "intent":Landroid/content/Intent;
    sget-object v2, Lcom/samsung/android/sdk/accessory/SASdkConfig;->ACCESSORY_FRAMEWORK_PACKAGE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const/16 v2, 0x20

    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 156
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 157
    :cond_0
    const-string v2, "SASdkConfig"

    const-string v3, "Accessory framework does not support thin-sdk"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_1
    const/4 v2, 0x1

    sput-boolean v2, Lcom/samsung/android/sdk/accessory/SASdkConfig;->sFrameworkSupported:Z

    goto :goto_0
.end method

.method static getFrameworkMaxFooterLength()I
    .locals 1

    .prologue
    .line 231
    sget v0, Lcom/samsung/android/sdk/accessory/SASdkConfig;->sFrameworkMaxFooterLen:I

    return v0
.end method

.method static getFrameworkMaxHeaderLength()I
    .locals 1

    .prologue
    .line 219
    sget v0, Lcom/samsung/android/sdk/accessory/SASdkConfig;->sFrameworkMaxHeaderLen:I

    return v0
.end method

.method static getFrameworkMaxMsgHeaderLength()I
    .locals 1

    .prologue
    .line 223
    sget v0, Lcom/samsung/android/sdk/accessory/SASdkConfig;->sFrameworkMaxMsgHeaderLen:I

    return v0
.end method

.method static getFrameworkProcessid()I
    .locals 1

    .prologue
    .line 207
    sget v0, Lcom/samsung/android/sdk/accessory/SASdkConfig;->sFrameworkProcessId:I

    return v0
.end method

.method public static getFrameworkVersion()I
    .locals 1

    .prologue
    .line 235
    sget v0, Lcom/samsung/android/sdk/accessory/SASdkConfig;->sFrameworkVersion:I

    return v0
.end method

.method static getStringEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    const-string v0, "UTF-8"

    return-object v0
.end method

.method static isMexSupported()Z
    .locals 2

    .prologue
    .line 247
    sget v0, Lcom/samsung/android/sdk/accessory/SASdkConfig;->sFrameworkVersion:I

    const/16 v1, 0xcd

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isThinSdkSupported()Z
    .locals 1

    .prologue
    .line 239
    sget-boolean v0, Lcom/samsung/android/sdk/accessory/SASdkConfig;->sFrameworkSupported:Z

    return v0
.end method

.method static setFrameworkMaxFooterLength(I)V
    .locals 0
    .param p0, "length"    # I

    .prologue
    .line 227
    sput p0, Lcom/samsung/android/sdk/accessory/SASdkConfig;->sFrameworkMaxFooterLen:I

    .line 228
    return-void
.end method

.method static setFrameworkMaxHeaderLength(I)V
    .locals 0
    .param p0, "length"    # I

    .prologue
    .line 211
    sput p0, Lcom/samsung/android/sdk/accessory/SASdkConfig;->sFrameworkMaxHeaderLen:I

    .line 212
    return-void
.end method

.method static setFrameworkMaxMsgHeaderLength(I)V
    .locals 0
    .param p0, "length"    # I

    .prologue
    .line 215
    sput p0, Lcom/samsung/android/sdk/accessory/SASdkConfig;->sFrameworkMaxMsgHeaderLen:I

    .line 216
    return-void
.end method

.method static setFrameworkProcessId(I)V
    .locals 0
    .param p0, "processId"    # I

    .prologue
    .line 203
    sput p0, Lcom/samsung/android/sdk/accessory/SASdkConfig;->sFrameworkProcessId:I

    .line 204
    return-void
.end method
