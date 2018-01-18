.class public Lcom/samsung/android/hostmanager/wearablesettings/SettingsAppInfo;
.super Ljava/lang/Object;
.source "SettingsAppInfo.java"


# instance fields
.field mDisplayName:Ljava/lang/String;

.field mLanguage:Ljava/lang/String;

.field mPackageName:Ljava/lang/String;

.field mType:Ljava/lang/String;

.field mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsAppInfo;->mType:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsAppInfo;->mVersion:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsAppInfo;->mLanguage:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsAppInfo;->mPackageName:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsAppInfo;->mDisplayName:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "language"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "displayName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsAppInfo;->mType:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsAppInfo;->mVersion:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsAppInfo;->mLanguage:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsAppInfo;->mPackageName:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsAppInfo;->mDisplayName:Ljava/lang/String;

    .line 13
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsAppInfo;->mType:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsAppInfo;->mVersion:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsAppInfo;->mLanguage:Ljava/lang/String;

    .line 16
    iput-object p4, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsAppInfo;->mPackageName:Ljava/lang/String;

    .line 17
    iput-object p5, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsAppInfo;->mDisplayName:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsAppInfo;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsAppInfo;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsAppInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsAppInfo;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsAppInfo;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "DisplayName"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsAppInfo;->mDisplayName:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0
    .param p1, "Language"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsAppInfo;->mLanguage:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "pakageName"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsAppInfo;->mPackageName:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "Type"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsAppInfo;->mType:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "Version"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsAppInfo;->mVersion:Ljava/lang/String;

    .line 49
    return-void
.end method
