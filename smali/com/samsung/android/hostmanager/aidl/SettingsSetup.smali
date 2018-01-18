.class public Lcom/samsung/android/hostmanager/aidl/SettingsSetup;
.super Ljava/lang/Object;
.source "SettingsSetup.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/SettingsSetup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlwaysOnClock:Z

.field private mBGColor:Ljava/lang/String;

.field private mBGData:Ljava/lang/String;

.field private mBGMode:I

.field private mClockColor:I

.field private mContacts:Z

.field private mLogs:Z

.field private mMusicController:Z

.field private mPowerkeyDoublePressing:Ljava/lang/String;

.field private mSafety:Z

.field private mSmartRelay:Z

.field private mWakeupbygesture:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/samsung/android/hostmanager/aidl/SettingsSetup$1;

    invoke-direct {v0}, Lcom/samsung/android/hostmanager/aidl/SettingsSetup$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->readFromParcel(Landroid/os/Parcel;)V

    .line 42
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public getAlwayscOnClock()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->mAlwaysOnClock:Z

    return v0
.end method

.method public getBGColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->mBGColor:Ljava/lang/String;

    return-object v0
.end method

.method public getBGData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->mBGData:Ljava/lang/String;

    return-object v0
.end method

.method public getBGMode()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->mBGMode:I

    return v0
.end method

.method public getClockColor()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->mClockColor:I

    return v0
.end method

.method public getContacts()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->mContacts:Z

    return v0
.end method

.method public getLogs()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->mLogs:Z

    return v0
.end method

.method public getMusicController()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->mMusicController:Z

    return v0
.end method

.method public getPDPressing()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->mPowerkeyDoublePressing:Ljava/lang/String;

    return-object v0
.end method

.method public getSafety()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->mSafety:Z

    return v0
.end method

.method public getSmart()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->mSmartRelay:Z

    return v0
.end method

.method public getWakeup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->mWakeupbygesture:Ljava/lang/String;

    return-object v0
.end method

.method public initSettingsSetup(ZLjava/lang/String;ZZLjava/lang/String;IZZZILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "smartRelay"    # Z
    .param p2, "wakeupbygesture"    # Ljava/lang/String;
    .param p3, "alwaysOnClock"    # Z
    .param p4, "musicController"    # Z
    .param p5, "powerkeyDoublePressing"    # Ljava/lang/String;
    .param p6, "clockColor"    # I
    .param p7, "contacts"    # Z
    .param p8, "logs"    # Z
    .param p9, "safety"    # Z
    .param p10, "mode"    # I
    .param p11, "data"    # Ljava/lang/String;
    .param p12, "color"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->mSmartRelay:Z

    .line 27
    iput-object p2, p0, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->mWakeupbygesture:Ljava/lang/String;

    .line 28
    iput-boolean p3, p0, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->mAlwaysOnClock:Z

    .line 29
    iput-boolean p4, p0, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->mMusicController:Z

    .line 30
    iput-object p5, p0, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->mPowerkeyDoublePressing:Ljava/lang/String;

    .line 31
    iput p6, p0, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->mClockColor:I

    .line 32
    iput-boolean p7, p0, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->mContacts:Z

    .line 33
    iput-boolean p8, p0, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->mLogs:Z

    .line 34
    iput-boolean p9, p0, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->mSafety:Z

    .line 35
    iput p10, p0, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->mBGMode:I

    .line 36
    iput-object p11, p0, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->mBGData:Ljava/lang/String;

    .line 37
    iput-object p12, p0, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->mBGColor:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->mSmartRelay:Z

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->mWakeupbygesture:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->mAlwaysOnClock:Z

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->mMusicController:Z

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->mPowerkeyDoublePressing:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->mClockColor:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->mContacts:Z

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->mLogs:Z

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->mSafety:Z

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->mBGMode:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->mBGData:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->mBGColor:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setAlwayscOnClock(Z)V
    .locals 0
    .param p1, "alwaysOnClock"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->mAlwaysOnClock:Z

    .line 119
    return-void
.end method

.method public setBGColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->mBGColor:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setBGData(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->mBGData:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setBGMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 170
    iput p1, p0, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->mBGMode:I

    .line 171
    return-void
.end method

.method public setClockColor(I)V
    .locals 0
    .param p1, "clockColor"    # I

    .prologue
    .line 142
    iput p1, p0, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->mClockColor:I

    .line 143
    return-void
.end method

.method public setContacts(Z)V
    .locals 0
    .param p1, "contacts"    # Z

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->mContacts:Z

    .line 151
    return-void
.end method

.method public setLogs(Z)V
    .locals 0
    .param p1, "logs"    # Z

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->mLogs:Z

    .line 159
    return-void
.end method

.method public setMusicController(Z)V
    .locals 0
    .param p1, "musicController"    # Z

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->mMusicController:Z

    .line 127
    return-void
.end method

.method public setPDPressing(Ljava/lang/String;)V
    .locals 0
    .param p1, "pdPressing"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->mPowerkeyDoublePressing:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setSafety(Z)V
    .locals 0
    .param p1, "safety"    # Z

    .prologue
    .line 166
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->mSafety:Z

    .line 167
    return-void
.end method

.method public setSettingsSetupInfo()V
    .locals 0

    .prologue
    .line 8
    return-void
.end method

.method public setSmart(Z)V
    .locals 0
    .param p1, "smart"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->mSmartRelay:Z

    .line 103
    return-void
.end method

.method public setWakeup(Ljava/lang/String;)V
    .locals 0
    .param p1, "wakeup"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->mWakeupbygesture:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->mSmartRelay:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->mWakeupbygesture:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->mAlwaysOnClock:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->mMusicController:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->mPowerkeyDoublePressing:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget v0, p0, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->mClockColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->mContacts:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->mLogs:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->mSafety:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget v0, p0, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->mBGMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->mBGData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->mBGColor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    return-void
.end method
