.class public Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemSwitchBtn;
.super Ljava/lang/Object;
.source "SettingsItemSwitchBtn.java"


# instance fields
.field ID:Ljava/lang/String;

.field Item:[Ljava/lang/String;

.field SwitchChecked:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object v1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemSwitchBtn;->ID:Ljava/lang/String;

    .line 5
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemSwitchBtn;->Item:[Ljava/lang/String;

    .line 6
    iput-object v1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemSwitchBtn;->SwitchChecked:Ljava/lang/String;

    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "aID"    # Ljava/lang/String;
    .param p2, "tItem"    # [Ljava/lang/String;
    .param p3, "_SwitchChecked"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object v1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemSwitchBtn;->ID:Ljava/lang/String;

    .line 5
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemSwitchBtn;->Item:[Ljava/lang/String;

    .line 6
    iput-object v1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemSwitchBtn;->SwitchChecked:Ljava/lang/String;

    .line 11
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemSwitchBtn;->ID:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemSwitchBtn;->Item:[Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemSwitchBtn;->SwitchChecked:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public ChangeSwitchCheckedStatus(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "beforeTxt"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 42
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemSwitchBtn;->Item:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 59
    :goto_0
    return-object v0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemSwitchBtn;->Item:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 46
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemSwitchBtn;->getSwitchChecked()Ljava/lang/String;

    move-result-object v0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 47
    const-string v0, "no"

    invoke-virtual {p0, v0}, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemSwitchBtn;->setSwitchChecked(Ljava/lang/String;)V

    .line 51
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemSwitchBtn;->Item:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0

    .line 49
    :cond_1
    const-string v0, "yes"

    invoke-virtual {p0, v0}, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemSwitchBtn;->setSwitchChecked(Ljava/lang/String;)V

    goto :goto_1

    .line 54
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemSwitchBtn;->getSwitchChecked()Ljava/lang/String;

    move-result-object v0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 55
    const-string v0, "no"

    invoke-virtual {p0, v0}, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemSwitchBtn;->setSwitchChecked(Ljava/lang/String;)V

    .line 59
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemSwitchBtn;->Item:[Ljava/lang/String;

    aget-object v0, v0, v2

    goto :goto_0

    .line 57
    :cond_3
    const-string v0, "yes"

    invoke-virtual {p0, v0}, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemSwitchBtn;->setSwitchChecked(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemSwitchBtn;->ID:Ljava/lang/String;

    return-object v0
.end method

.method public getItem()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemSwitchBtn;->Item:[Ljava/lang/String;

    return-object v0
.end method

.method public getSwitchChecked()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemSwitchBtn;->SwitchChecked:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "aID"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemSwitchBtn;->ID:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setItem([Ljava/lang/String;)V
    .locals 1
    .param p1, "tItem"    # [Ljava/lang/String;

    .prologue
    .line 21
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemSwitchBtn;->Item:[Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setSwitchChecked(Ljava/lang/String;)V
    .locals 0
    .param p1, "_SwitchChecked"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemSwitchBtn;->SwitchChecked:Ljava/lang/String;

    .line 26
    return-void
.end method
