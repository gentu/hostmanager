.class public Lcom/samsung/android/hostmanager/aidl/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/AppInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppFeatureFileName:Ljava/lang/String;

.field private mClassName:Ljava/lang/String;

.field private mFeatures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIsAppWidget:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mPreloaded:Ljava/lang/String;

.field private mRole:Ljava/lang/String;

.field private mVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/samsung/android/hostmanager/aidl/AppInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/hostmanager/aidl/AppInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hostmanager/aidl/AppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/AppInfo;->mFeatures:Ljava/util/HashMap;

    .line 49
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/AppInfo;->mFeatures:Ljava/util/HashMap;

    .line 44
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 45
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public getAppFeatureFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/AppInfo;->mAppFeatureFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/AppInfo;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getFeatures()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/AppInfo;->mFeatures:Ljava/util/HashMap;

    return-object v0
.end method

.method public getIsAppWidget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/AppInfo;->mIsAppWidget:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/AppInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/AppInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPreloaded()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/AppInfo;->mPreloaded:Ljava/lang/String;

    return-object v0
.end method

.method public getRole()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/AppInfo;->mRole:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/AppInfo;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/AppInfo;->mName:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/AppInfo;->mPackageName:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/AppInfo;->mClassName:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/AppInfo;->mPreloaded:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/AppInfo;->mVersion:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/AppInfo;->mRole:Ljava/lang/String;

    .line 77
    const-class v0, Landroid/R$string;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/AppInfo;->mFeatures:Ljava/util/HashMap;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/AppInfo;->mIsAppWidget:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/AppInfo;->mAppFeatureFileName:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setAppFeatureFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "AppFeatureFileName"    # Ljava/lang/String;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/AppInfo;->mAppFeatureFileName:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0
    .param p1, "ClassName"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/AppInfo;->mClassName:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setFeatures(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, "Features":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/AppInfo;->mFeatures:Ljava/util/HashMap;

    .line 125
    return-void
.end method

.method public setIsAppWidget(Ljava/lang/String;)V
    .locals 0
    .param p1, "IsAppWidget"    # Ljava/lang/String;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/AppInfo;->mIsAppWidget:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "Name"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/AppInfo;->mName:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "PackageName"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/AppInfo;->mPackageName:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setPreloaded(Ljava/lang/String;)V
    .locals 0
    .param p1, "Preloaded"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/AppInfo;->mPreloaded:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setRole(Ljava/lang/String;)V
    .locals 0
    .param p1, "Role"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/AppInfo;->mRole:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "preload"    # Ljava/lang/String;
    .param p5, "version"    # Ljava/lang/String;
    .param p6, "role"    # Ljava/lang/String;
    .param p8, "isAppWidget"    # Ljava/lang/String;
    .param p9, "appFeatureFilename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    .local p7, "features":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/AppInfo;->mName:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/samsung/android/hostmanager/aidl/AppInfo;->mPackageName:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/samsung/android/hostmanager/aidl/AppInfo;->mClassName:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/samsung/android/hostmanager/aidl/AppInfo;->mPreloaded:Ljava/lang/String;

    .line 36
    iput-object p5, p0, Lcom/samsung/android/hostmanager/aidl/AppInfo;->mVersion:Ljava/lang/String;

    .line 37
    iput-object p6, p0, Lcom/samsung/android/hostmanager/aidl/AppInfo;->mRole:Ljava/lang/String;

    .line 38
    iput-object p7, p0, Lcom/samsung/android/hostmanager/aidl/AppInfo;->mFeatures:Ljava/util/HashMap;

    .line 39
    iput-object p8, p0, Lcom/samsung/android/hostmanager/aidl/AppInfo;->mIsAppWidget:Ljava/lang/String;

    .line 40
    iput-object p9, p0, Lcom/samsung/android/hostmanager/aidl/AppInfo;->mAppFeatureFileName:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "Version"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/AppInfo;->mVersion:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/AppInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/AppInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/AppInfo;->mClassName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/AppInfo;->mPreloaded:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/AppInfo;->mVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/AppInfo;->mRole:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/AppInfo;->mFeatures:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 66
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/AppInfo;->mIsAppWidget:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/AppInfo;->mAppFeatureFileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    return-void
.end method
