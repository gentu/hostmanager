.class public Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;
.super Ljava/lang/Object;
.source "MyAppsSetup.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appImageName:Ljava/lang/String;

.field private appName:Ljava/lang/String;

.field private className:Ljava/lang/String;

.field private isAppWidget:Z

.field private isPreload:Z

.field private mAppCategory:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private precheckSettingCondition:Z

.field private settingFileName:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 154
    new-instance v0, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup$1;

    invoke-direct {v0}, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->readFromParcel(Landroid/os/Parcel;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "imageFileName"    # Ljava/lang/String;
    .param p5, "settingFileName"    # Ljava/lang/String;
    .param p6, "isAppWidget"    # Z
    .param p7, "isPreload"    # Z
    .param p8, "preCheckSettingConditionState"    # Z
    .param p9, "version"    # Ljava/lang/String;
    .param p10, "appCategory"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->appName:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->packageName:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->className:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->appImageName:Ljava/lang/String;

    .line 29
    iput-object p5, p0, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->settingFileName:Ljava/lang/String;

    .line 30
    iput-boolean p6, p0, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->isAppWidget:Z

    .line 31
    iput-boolean p7, p0, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->isPreload:Z

    .line 32
    iput-boolean p8, p0, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->precheckSettingCondition:Z

    .line 33
    iput-object p9, p0, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->version:Ljava/lang/String;

    .line 34
    iput-object p10, p0, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->mAppCategory:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public getAppCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->mAppCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getAppType()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->isAppWidget:Z

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getImageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->appImageName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPreCheckSettingCondition()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->precheckSettingCondition:Z

    return v0
.end method

.method public getPreloadState()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->isPreload:Z

    return v0
.end method

.method public getSettingFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->settingFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->version:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->appName:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->packageName:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->className:Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->appImageName:Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->settingFileName:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->isAppWidget:Z

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->isPreload:Z

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->precheckSettingCondition:Z

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->version:Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->mAppCategory:Ljava/lang/String;

    .line 152
    return-void

    :cond_0
    move v0, v2

    .line 147
    goto :goto_0

    :cond_1
    move v0, v2

    .line 148
    goto :goto_1

    :cond_2
    move v1, v2

    .line 149
    goto :goto_2
.end method

.method public setAppCategory(Ljava/lang/String;)V
    .locals 0
    .param p1, "appCategory"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->mAppCategory:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setAppType(Z)V
    .locals 0
    .param p1, "isAppWidget"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->isAppWidget:Z

    .line 111
    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->className:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setImageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appImageName"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->appImageName:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->appName:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->packageName:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setPreCheckSettingCondition(Z)V
    .locals 0
    .param p1, "precheckSettingCondition"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->precheckSettingCondition:Z

    .line 115
    return-void
.end method

.method public setPreloadState(Z)V
    .locals 0
    .param p1, "isPreload"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->isPreload:Z

    .line 107
    return-void
.end method

.method public setSettingFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "settingFileName"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->settingFileName:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->version:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setupMyAppsSetupInfor()V
    .locals 0

    .prologue
    .line 7
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 130
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->appName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->className:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->appImageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->settingFileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->isAppWidget:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 136
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->isPreload:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 137
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->precheckSettingCondition:Z

    if-eqz v0, :cond_2

    :goto_2
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 138
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->version:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->mAppCategory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    return-void

    :cond_0
    move v0, v2

    .line 135
    goto :goto_0

    :cond_1
    move v0, v2

    .line 136
    goto :goto_1

    :cond_2
    move v1, v2

    .line 137
    goto :goto_2
.end method
