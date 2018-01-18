.class public abstract Lcom/samsung/android/sdk/connectionmanager/ScmConnector;
.super Ljava/lang/Object;
.source "ScmConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorState;,
        Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorListener;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 159
    const-string v0, "ScmConnector"

    sput-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmConnector;->TAG:Ljava/lang/String;

    .line 168
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmConnector;->mContextRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static createController(Landroid/content/Context;Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorListener;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorListener;

    .prologue
    .line 71
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 72
    :cond_0
    const/4 v2, 0x0

    .line 127
    :goto_0
    return v2

    .line 77
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/sdk/connectionmanager/ScmConnector;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/sdk/connectionmanager/DLog;->setVersion(Ljava/lang/String;)V

    .line 79
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/samsung/android/sdk/connectionmanager/ScmConnector;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 81
    new-instance v1, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;-><init>(Landroid/content/Context;)V

    .line 83
    .local v1, "connector":Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmConnector$1;

    invoke-direct {v0, p1, p0, v1}, Lcom/samsung/android/sdk/connectionmanager/ScmConnector$1;-><init>(Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorListener;Landroid/content/Context;Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;)V

    .line 124
    .local v0, "callback":Landroid/os/Handler$Callback;
    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->setCallback(Landroid/os/Handler$Callback;)V

    .line 125
    invoke-virtual {v1}, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->connect()V

    .line 127
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static deleteController(Lcom/samsung/android/sdk/connectionmanager/ScmController;)Z
    .locals 2
    .param p0, "controller"    # Lcom/samsung/android/sdk/connectionmanager/ScmController;

    .prologue
    .line 141
    if-nez p0, :cond_0

    .line 143
    const/4 v1, 0x0

    .line 153
    .end local p0    # "controller":Lcom/samsung/android/sdk/connectionmanager/ScmController;
    :goto_0
    return v1

    .line 146
    .restart local p0    # "controller":Lcom/samsung/android/sdk/connectionmanager/ScmController;
    :cond_0
    check-cast p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;

    .end local p0    # "controller":Lcom/samsung/android/sdk/connectionmanager/ScmController;
    invoke-virtual {p0}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->getConnector()Lcom/samsung/android/sdk/connectionmanager/IConnector;

    move-result-object v0

    .line 149
    .local v0, "connector":Lcom/samsung/android/sdk/connectionmanager/IConnector;
    invoke-interface {v0}, Lcom/samsung/android/sdk/connectionmanager/IConnector;->disconnect()V

    .line 151
    invoke-interface {v0}, Lcom/samsung/android/sdk/connectionmanager/IConnector;->destroyInstance()V

    .line 153
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static getMainLooper()Landroid/os/Looper;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 171
    sget-object v2, Lcom/samsung/android/sdk/connectionmanager/ScmConnector;->mContextRef:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_1

    .line 181
    .local v0, "ctx":Landroid/content/Context;
    :cond_0
    :goto_0
    return-object v1

    .line 175
    .end local v0    # "ctx":Landroid/content/Context;
    :cond_1
    sget-object v2, Lcom/samsung/android/sdk/connectionmanager/ScmConnector;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 177
    .restart local v0    # "ctx":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    goto :goto_0
.end method

.method private static getVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 191
    const-string v4, "unknown"

    .line 194
    .local v4, "version":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 195
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 196
    .local v3, "pkgInfo":Landroid/content/pm/PackageInfo;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    move-object v5, v4

    .line 209
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v3    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "version":Ljava/lang/String;
    .local v5, "version":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 198
    .end local v5    # "version":Ljava/lang/String;
    .restart local v4    # "version":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 200
    .local v1, "ne":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v6, Lcom/samsung/android/sdk/connectionmanager/ScmConnector;->TAG:Ljava/lang/String;

    const-string v7, "Couldn\'t find Connection Manager!!"

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/connectionmanager/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v4

    .line 201
    .end local v4    # "version":Ljava/lang/String;
    .restart local v5    # "version":Ljava/lang/String;
    goto :goto_0

    .line 203
    .end local v1    # "ne":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5    # "version":Ljava/lang/String;
    .restart local v4    # "version":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/samsung/android/sdk/connectionmanager/ScmConnector;->TAG:Ljava/lang/String;

    const-string v7, "Couldn\'t find Connection Manager!!"

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/connectionmanager/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v4

    .line 206
    .end local v4    # "version":Ljava/lang/String;
    .restart local v5    # "version":Ljava/lang/String;
    goto :goto_0
.end method
