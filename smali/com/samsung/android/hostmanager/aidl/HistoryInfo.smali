.class public Lcom/samsung/android/hostmanager/aidl/HistoryInfo;
.super Ljava/lang/Object;
.source "HistoryInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/HistoryInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private backupOrestore:Ljava/lang/String;

.field private filePath:Ljava/lang/String;

.field private macAddr:Ljava/lang/String;

.field private mdate:Ljava/lang/String;

.field private pkgName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lcom/samsung/android/hostmanager/aidl/HistoryInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/hostmanager/aidl/HistoryInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hostmanager/aidl/HistoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v1, 0x5

    new-array v0, v1, [Ljava/lang/String;

    .line 75
    .local v0, "data":[Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 76
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/aidl/HistoryInfo;->macAddr:Ljava/lang/String;

    .line 77
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/aidl/HistoryInfo;->pkgName:Ljava/lang/String;

    .line 78
    const/4 v1, 0x2

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/aidl/HistoryInfo;->mdate:Ljava/lang/String;

    .line 79
    const/4 v1, 0x3

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/aidl/HistoryInfo;->backupOrestore:Ljava/lang/String;

    .line 80
    const/4 v1, 0x4

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/aidl/HistoryInfo;->filePath:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "macAddr"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "mdate"    # Ljava/lang/String;
    .param p4, "backupOrestore"    # Ljava/lang/String;
    .param p5, "filePath"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/HistoryInfo;->macAddr:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/samsung/android/hostmanager/aidl/HistoryInfo;->pkgName:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/samsung/android/hostmanager/aidl/HistoryInfo;->mdate:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lcom/samsung/android/hostmanager/aidl/HistoryInfo;->backupOrestore:Ljava/lang/String;

    .line 19
    iput-object p5, p0, Lcom/samsung/android/hostmanager/aidl/HistoryInfo;->filePath:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public getBackupOrestore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/HistoryInfo;->backupOrestore:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/HistoryInfo;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getMacAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/HistoryInfo;->macAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getMdate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/HistoryInfo;->mdate:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/HistoryInfo;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public isBackupOrestore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/HistoryInfo;->backupOrestore:Ljava/lang/String;

    return-object v0
.end method

.method public setBackupOrestore(Ljava/lang/String;)V
    .locals 0
    .param p1, "backupOrestore"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/HistoryInfo;->backupOrestore:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/HistoryInfo;->filePath:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setMacAddr(Ljava/lang/String;)V
    .locals 0
    .param p1, "macAddr"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/HistoryInfo;->macAddr:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setMdate(Ljava/lang/String;)V
    .locals 0
    .param p1, "mdate"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/HistoryInfo;->mdate:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/HistoryInfo;->pkgName:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 86
    iget-object v1, p0, Lcom/samsung/android/hostmanager/aidl/HistoryInfo;->backupOrestore:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "backupRestore":Ljava/lang/String;
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/hostmanager/aidl/HistoryInfo;->macAddr:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/samsung/android/hostmanager/aidl/HistoryInfo;->pkgName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/samsung/android/hostmanager/aidl/HistoryInfo;->mdate:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object v0, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/samsung/android/hostmanager/aidl/HistoryInfo;->filePath:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 89
    return-void
.end method
