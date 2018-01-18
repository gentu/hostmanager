.class public Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;
.super Ljava/lang/Object;
.source "ClocksInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/samsung/android/hostmanager/br/BPackageInfo;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppCategory:Ljava/lang/String;

.field private mClassName:Ljava/lang/String;

.field private mClockExplain:Ljava/lang/String;

.field private mClockImageName:Ljava/lang/String;

.field public mClockName:Ljava/lang/String;

.field private mGroup:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mPrecheckSettingCondition:Z

.field private mPreloadClock:Z

.field private mSettingFileName:Ljava/lang/String;

.field private mShownState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->TAG:Ljava/lang/String;

    .line 170
    new-instance v0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "clockExplain"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "className"    # Ljava/lang/String;
    .param p5, "imageFileName"    # Ljava/lang/String;
    .param p6, "settingFileName"    # Ljava/lang/String;
    .param p7, "shownState"    # Z
    .param p8, "preloadState"    # Z
    .param p9, "precheckSettingCondition"    # Z
    .param p10, "group"    # Ljava/lang/String;
    .param p11, "appCategory"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->mClockName:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->mClockExplain:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->mPackageName:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->mClassName:Ljava/lang/String;

    .line 39
    iput-object p5, p0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->mClockImageName:Ljava/lang/String;

    .line 40
    iput-object p6, p0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->mSettingFileName:Ljava/lang/String;

    .line 41
    iput-boolean p7, p0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->mShownState:Z

    .line 42
    iput-boolean p8, p0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->mPreloadClock:Z

    .line 43
    iput-boolean p9, p0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->mPrecheckSettingCondition:Z

    .line 44
    iput-object p10, p0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->mGroup:Ljava/lang/String;

    .line 45
    iput-object p11, p0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->mAppCategory:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public getAppCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->mAppCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getAppType()Z
    .locals 1

    .prologue
    .line 124
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getExplain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->mClockExplain:Ljava/lang/String;

    return-object v0
.end method

.method public getGroup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->mGroup:Ljava/lang/String;

    return-object v0
.end method

.method public getImageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->mClockImageName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->mClockName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPreCheckSettingCondition()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->mPrecheckSettingCondition:Z

    return v0
.end method

.method public getPreloadState()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->mPreloadClock:Z

    return v0
.end method

.method public getSettingFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->mSettingFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getShownState()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->mShownState:Z

    return v0
.end method

.method public getmAppCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->mAppCategory:Ljava/lang/String;

    return-object v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->mClockName:Ljava/lang/String;

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->mClockExplain:Ljava/lang/String;

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->mPackageName:Ljava/lang/String;

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->mClassName:Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->mClockImageName:Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->mSettingFileName:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->mShownState:Z

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->mPreloadClock:Z

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->mPrecheckSettingCondition:Z

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->mGroup:Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->mAppCategory:Ljava/lang/String;

    .line 168
    return-void

    :cond_0
    move v0, v2

    .line 163
    goto :goto_0

    :cond_1
    move v0, v2

    .line 164
    goto :goto_1

    :cond_2
    move v1, v2

    .line 165
    goto :goto_2
.end method

.method public setClockInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "clockExplain"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "className"    # Ljava/lang/String;
    .param p5, "imageFileName"    # Ljava/lang/String;
    .param p6, "settingFileName"    # Ljava/lang/String;
    .param p7, "shownState"    # Z
    .param p8, "preloadState"    # Z
    .param p9, "precheckSettingCondition"    # Z
    .param p10, "group"    # Ljava/lang/String;
    .param p11, "appCategory"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->mClockName:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->mClockExplain:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->mPackageName:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->mClassName:Ljava/lang/String;

    .line 55
    iput-object p5, p0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->mClockImageName:Ljava/lang/String;

    .line 56
    iput-object p6, p0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->mSettingFileName:Ljava/lang/String;

    .line 57
    iput-boolean p7, p0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->mShownState:Z

    .line 58
    iput-boolean p8, p0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->mPreloadClock:Z

    .line 59
    iput-boolean p9, p0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->mPrecheckSettingCondition:Z

    .line 60
    iput-object p10, p0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->mGroup:Ljava/lang/String;

    .line 61
    iput-object p11, p0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->mAppCategory:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setGroup(Ljava/lang/String;)V
    .locals 0
    .param p1, "group"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->mGroup:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setPreloadState(Z)V
    .locals 0
    .param p1, "preloadClock"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->mPreloadClock:Z

    .line 70
    return-void
.end method

.method public setShownState(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->mShownState:Z

    .line 66
    return-void
.end method

.method public setmAppCategory(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAppCategory"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->mAppCategory:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 134
    sget-object v0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeToParcel..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->mClockName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->mClockExplain:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->mClassName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->mClockImageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->mSettingFileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->mShownState:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 142
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->mPreloadClock:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 143
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->mPrecheckSettingCondition:Z

    if-eqz v0, :cond_2

    :goto_2
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 144
    iget-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->mGroup:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->mAppCategory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    return-void

    :cond_0
    move v0, v2

    .line 141
    goto :goto_0

    :cond_1
    move v0, v2

    .line 142
    goto :goto_1

    :cond_2
    move v1, v2

    .line 143
    goto :goto_2
.end method
