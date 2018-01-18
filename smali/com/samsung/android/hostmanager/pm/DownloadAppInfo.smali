.class public Lcom/samsung/android/hostmanager/pm/DownloadAppInfo;
.super Ljava/lang/Object;
.source "DownloadAppInfo.java"


# instance fields
.field callerPlugin:Ljava/lang/String;

.field downloadedApkName:Ljava/lang/String;

.field downloadedPath:Ljava/lang/String;

.field packageName:Ljava/lang/String;

.field targetDeviceID:Ljava/lang/String;

.field updateCheck:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "updateCheck"    # Z
    .param p3, "targetDeviceID"    # Ljava/lang/String;
    .param p4, "callerPlugin"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/samsung/android/hostmanager/pm/DownloadAppInfo;->packageName:Ljava/lang/String;

    .line 15
    iput-boolean p2, p0, Lcom/samsung/android/hostmanager/pm/DownloadAppInfo;->updateCheck:Z

    .line 16
    iput-object p3, p0, Lcom/samsung/android/hostmanager/pm/DownloadAppInfo;->targetDeviceID:Ljava/lang/String;

    .line 17
    iput-object p4, p0, Lcom/samsung/android/hostmanager/pm/DownloadAppInfo;->callerPlugin:Ljava/lang/String;

    .line 18
    return-void
.end method
