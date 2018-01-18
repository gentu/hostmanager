.class public Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemListItem;
.super Ljava/lang/Object;
.source "SettingsItemListItem.java"


# instance fields
.field Name:Ljava/lang/String;

.field PackageName:Ljava/lang/String;

.field Screen:Ljava/lang/String;

.field className:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemListItem;->Screen:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemListItem;->Name:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemListItem;->PackageName:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemListItem;->className:Ljava/lang/String;

    .line 7
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "cls"    # Ljava/lang/String;
    .param p3, "scr"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemListItem;->Screen:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemListItem;->Name:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemListItem;->PackageName:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemListItem;->className:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemListItem;->Screen:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemListItem;->Name:Ljava/lang/String;

    .line 11
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemListItem;->PackageName:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemListItem;->className:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemListItem;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemListItem;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemListItem;->PackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemListItem;->Screen:Ljava/lang/String;

    return-object v0
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0
    .param p1, "cls"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemListItem;->className:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemListItem;->Name:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemListItem;->PackageName:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setScreen(Ljava/lang/String;)V
    .locals 0
    .param p1, "pos"    # Ljava/lang/String;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemListItem;->Screen:Ljava/lang/String;

    .line 16
    return-void
.end method
