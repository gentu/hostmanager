.class public Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemAppsClockListItem;
.super Ljava/lang/Object;
.source "SettingsItemAppsClockListItem.java"


# instance fields
.field mClassName:Ljava/lang/String;

.field mDisplayName:Ljava/lang/String;

.field mPackageName:Ljava/lang/String;

.field mScreen:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemAppsClockListItem;->mPackageName:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemAppsClockListItem;->mClassName:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemAppsClockListItem;->mDisplayName:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemAppsClockListItem;->mScreen:Ljava/lang/String;

    .line 7
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "displayName"    # Ljava/lang/String;
    .param p4, "screen"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemAppsClockListItem;->mPackageName:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemAppsClockListItem;->mClassName:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemAppsClockListItem;->mDisplayName:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemAppsClockListItem;->mScreen:Ljava/lang/String;

    .line 9
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemAppsClockListItem;->mPackageName:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemAppsClockListItem;->mClassName:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemAppsClockListItem;->mDisplayName:Ljava/lang/String;

    .line 12
    iput-object p4, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemAppsClockListItem;->mScreen:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemAppsClockListItem;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemAppsClockListItem;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemAppsClockListItem;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemAppsClockListItem;->mScreen:Ljava/lang/String;

    return-object v0
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemAppsClockListItem;->mClassName:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemAppsClockListItem;->mDisplayName:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemAppsClockListItem;->mPackageName:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setScreen(Ljava/lang/String;)V
    .locals 0
    .param p1, "screen"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemAppsClockListItem;->mScreen:Ljava/lang/String;

    .line 47
    return-void
.end method
