.class public Lcom/samsung/android/hostmanager/br/WatchAppsInfo;
.super Ljava/lang/Object;
.source "WatchAppsInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/samsung/android/hostmanager/br/BPackageInfo;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hostmanager/br/WatchAppsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private appImageName:Ljava/lang/String;

.field public appName:Ljava/lang/String;

.field private className:Ljava/lang/String;

.field private isAppWidget:Z

.field private isPreload:Z

.field private mAppCategory:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field private settingFileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/samsung/android/hostmanager/br/WatchAppsInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hostmanager/br/WatchAppsInfo;->TAG:Ljava/lang/String;

    .line 110
    new-instance v0, Lcom/samsung/android/hostmanager/br/WatchAppsInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/hostmanager/br/WatchAppsInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hostmanager/br/WatchAppsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/br/WatchAppsInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "classname"    # Ljava/lang/String;
    .param p4, "imageFileName"    # Ljava/lang/String;
    .param p5, "settingFileName"    # Ljava/lang/String;
    .param p6, "isAppWidget"    # Z
    .param p7, "preloadState"    # Z
    .param p8, "appCategory"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/samsung/android/hostmanager/br/WatchAppsInfo;->appName:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/samsung/android/hostmanager/br/WatchAppsInfo;->packageName:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/samsung/android/hostmanager/br/WatchAppsInfo;->className:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/samsung/android/hostmanager/br/WatchAppsInfo;->appImageName:Ljava/lang/String;

    .line 34
    iput-object p5, p0, Lcom/samsung/android/hostmanager/br/WatchAppsInfo;->settingFileName:Ljava/lang/String;

    .line 35
    iput-boolean p6, p0, Lcom/samsung/android/hostmanager/br/WatchAppsInfo;->isAppWidget:Z

    .line 36
    iput-boolean p7, p0, Lcom/samsung/android/hostmanager/br/WatchAppsInfo;->isPreload:Z

    .line 37
    iput-object p8, p0, Lcom/samsung/android/hostmanager/br/WatchAppsInfo;->mAppCategory:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public getAppCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/WatchAppsInfo;->mAppCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getAppType()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/br/WatchAppsInfo;->isAppWidget:Z

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/WatchAppsInfo;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getExplain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getImageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/WatchAppsInfo;->appImageName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/WatchAppsInfo;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/WatchAppsInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPreloadState()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/br/WatchAppsInfo;->isPreload:Z

    return v0
.end method

.method public getSettingFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/WatchAppsInfo;->settingFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getShownState()Z
    .locals 1

    .prologue
    .line 73
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/WatchAppsInfo;->appName:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setPreloadState(Z)V
    .locals 0
    .param p1, "preloadClock"    # Z

    .prologue
    .line 128
    return-void
.end method

.method public setShownState(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 79
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 91
    sget-object v0, Lcom/samsung/android/hostmanager/br/WatchAppsInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeToParcel..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/WatchAppsInfo;->appName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    return-void
.end method
