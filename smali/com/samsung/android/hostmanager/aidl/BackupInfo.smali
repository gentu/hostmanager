.class public Lcom/samsung/android/hostmanager/aidl/BackupInfo;
.super Ljava/lang/Object;
.source "BackupInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/BackupInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appName:Ljava/lang/String;

.field private filePath:Ljava/lang/String;

.field private intentFilter:Ljava/lang/String;

.field private macAddr:Ljava/lang/String;

.field private pkgName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 113
    new-instance v0, Lcom/samsung/android/hostmanager/aidl/BackupInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/hostmanager/aidl/BackupInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hostmanager/aidl/BackupInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v1, 0x5

    new-array v0, v1, [Ljava/lang/String;

    .line 63
    .local v0, "data":[Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 65
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/aidl/BackupInfo;->macAddr:Ljava/lang/String;

    .line 67
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/aidl/BackupInfo;->pkgName:Ljava/lang/String;

    .line 69
    const/4 v1, 0x2

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/aidl/BackupInfo;->intentFilter:Ljava/lang/String;

    .line 71
    const/4 v1, 0x3

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/aidl/BackupInfo;->filePath:Ljava/lang/String;

    .line 73
    const/4 v1, 0x4

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/aidl/BackupInfo;->appName:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "macAddr"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "intentFilter"    # Ljava/lang/String;
    .param p4, "filePath"    # Ljava/lang/String;
    .param p5, "appName"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/BackupInfo;->macAddr:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/samsung/android/hostmanager/aidl/BackupInfo;->pkgName:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/samsung/android/hostmanager/aidl/BackupInfo;->intentFilter:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/samsung/android/hostmanager/aidl/BackupInfo;->filePath:Ljava/lang/String;

    .line 30
    iput-object p5, p0, Lcom/samsung/android/hostmanager/aidl/BackupInfo;->appName:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/BackupInfo;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/BackupInfo;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getIntentFilter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/BackupInfo;->intentFilter:Ljava/lang/String;

    return-object v0
.end method

.method public getMacAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/BackupInfo;->macAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/BackupInfo;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 79
    const/4 v1, 0x5

    new-array v0, v1, [Ljava/lang/String;

    .line 80
    .local v0, "data":[Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 81
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/aidl/BackupInfo;->macAddr:Ljava/lang/String;

    .line 82
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/aidl/BackupInfo;->pkgName:Ljava/lang/String;

    .line 83
    const/4 v1, 0x2

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/aidl/BackupInfo;->intentFilter:Ljava/lang/String;

    .line 84
    const/4 v1, 0x3

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/aidl/BackupInfo;->filePath:Ljava/lang/String;

    .line 85
    const/4 v1, 0x4

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/aidl/BackupInfo;->appName:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/BackupInfo;->appName:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/BackupInfo;->filePath:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setIntentFilter(Ljava/lang/String;)V
    .locals 0
    .param p1, "intentFilter"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/BackupInfo;->intentFilter:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setMacAddr(Ljava/lang/String;)V
    .locals 0
    .param p1, "macAddr"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/BackupInfo;->macAddr:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/BackupInfo;->pkgName:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 92
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/hostmanager/aidl/BackupInfo;->macAddr:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/aidl/BackupInfo;->pkgName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/samsung/android/hostmanager/aidl/BackupInfo;->intentFilter:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/samsung/android/hostmanager/aidl/BackupInfo;->filePath:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/samsung/android/hostmanager/aidl/BackupInfo;->appName:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 96
    return-void
.end method
