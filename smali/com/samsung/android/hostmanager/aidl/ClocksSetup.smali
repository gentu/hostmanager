.class public Lcom/samsung/android/hostmanager/aidl/ClocksSetup;
.super Ljava/lang/Object;
.source "ClocksSetup.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/ClocksSetup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppCategory:Ljava/lang/String;

.field private mClassName:Ljava/lang/String;

.field private mClockExplain:Ljava/lang/String;

.field private mClockImageName:Ljava/lang/String;

.field private mClockName:Ljava/lang/String;

.field public mClockType:Ljava/lang/String;

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
    .line 174
    new-instance v0, Lcom/samsung/android/hostmanager/aidl/ClocksSetup$1;

    invoke-direct {v0}, Lcom/samsung/android/hostmanager/aidl/ClocksSetup$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->readFromParcel(Landroid/os/Parcel;)V

    .line 27
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public getAppCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->mAppCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getClockExplain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->mClockExplain:Ljava/lang/String;

    return-object v0
.end method

.method public getClockImageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->mClockImageName:Ljava/lang/String;

    return-object v0
.end method

.method public getClockName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->mClockName:Ljava/lang/String;

    return-object v0
.end method

.method public getGroup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->mGroup:Ljava/lang/String;

    return-object v0
.end method

.method public getPacakgename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPrecheckSettingCondition()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->mPrecheckSettingCondition:Z

    return v0
.end method

.method public getPreloadClock()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->mPreloadClock:Z

    return v0
.end method

.method public getSettingFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->mSettingFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getShownState()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->mShownState:Z

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->mClockName:Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->mClockExplain:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->mPackageName:Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->mClassName:Ljava/lang/String;

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->mClockImageName:Ljava/lang/String;

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->mSettingFileName:Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->mShownState:Z

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->mPreloadClock:Z

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->mPrecheckSettingCondition:Z

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->mGroup:Ljava/lang/String;

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->mAppCategory:Ljava/lang/String;

    .line 172
    return-void

    :cond_0
    move v0, v2

    .line 167
    goto :goto_0

    :cond_1
    move v0, v2

    .line 168
    goto :goto_1

    :cond_2
    move v1, v2

    .line 169
    goto :goto_2
.end method

.method public setAppCategory(Ljava/lang/String;)V
    .locals 0
    .param p1, "appCategory"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->mAppCategory:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0
    .param p1, "clsName"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->mClassName:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setClockExplain(Ljava/lang/String;)V
    .locals 0
    .param p1, "expl"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->mClockExplain:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setClockImageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "imgName"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->mClockImageName:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setClockName(Ljava/lang/String;)V
    .locals 0
    .param p1, "clkName"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->mClockName:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setClocksSetupInfo()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public setClocksSetupInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "appname"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "className"    # Ljava/lang/String;
    .param p5, "imageFileName"    # Ljava/lang/String;
    .param p6, "settingFileName"    # Ljava/lang/String;
    .param p7, "shownState"    # Z
    .param p8, "preloadState"    # Z
    .param p9, "preCheckSettingConditionState"    # Z
    .param p10, "group"    # Ljava/lang/String;
    .param p11, "appCategory"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->mClockName:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->mClockExplain:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->mPackageName:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->mClassName:Ljava/lang/String;

    .line 38
    iput-object p5, p0, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->mClockImageName:Ljava/lang/String;

    .line 39
    iput-object p6, p0, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->mSettingFileName:Ljava/lang/String;

    .line 40
    iput-boolean p7, p0, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->mShownState:Z

    .line 41
    iput-boolean p8, p0, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->mPreloadClock:Z

    .line 42
    iput-boolean p9, p0, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->mPrecheckSettingCondition:Z

    .line 43
    iput-object p10, p0, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->mGroup:Ljava/lang/String;

    .line 44
    iput-object p11, p0, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->mAppCategory:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setGroup(Ljava/lang/String;)V
    .locals 0
    .param p1, "group"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->mGroup:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setPacakgename(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->mPackageName:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setPrecheckSettingCondition(Z)V
    .locals 0
    .param p1, "isPrecheck"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->mPrecheckSettingCondition:Z

    .line 81
    return-void
.end method

.method public setPreloadClock(Z)V
    .locals 0
    .param p1, "isPreloaded"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->mPreloadClock:Z

    .line 77
    return-void
.end method

.method public setSettingFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->mSettingFileName:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setShownState(Z)V
    .locals 0
    .param p1, "isShow"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->mShownState:Z

    .line 73
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 147
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->mClockName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->mClockExplain:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->mClassName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->mClockImageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->mSettingFileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->mShownState:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 154
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->mPreloadClock:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 155
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->mPrecheckSettingCondition:Z

    if-eqz v0, :cond_2

    :goto_2
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 156
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->mGroup:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->mAppCategory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    return-void

    :cond_0
    move v0, v2

    .line 153
    goto :goto_0

    :cond_1
    move v0, v2

    .line 154
    goto :goto_1

    :cond_2
    move v1, v2

    .line 155
    goto :goto_2
.end method
