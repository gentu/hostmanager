.class public Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemCheckBox;
.super Ljava/lang/Object;
.source "SettingsItemCheckBox.java"


# instance fields
.field mChecked:Ljava/lang/String;

.field mID:Ljava/lang/String;

.field mItem:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object v1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemCheckBox;->mID:Ljava/lang/String;

    .line 6
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemCheckBox;->mItem:[Ljava/lang/String;

    .line 7
    iput-object v1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemCheckBox;->mChecked:Ljava/lang/String;

    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "item"    # [Ljava/lang/String;
    .param p3, "checked"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object v1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemCheckBox;->mID:Ljava/lang/String;

    .line 6
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemCheckBox;->mItem:[Ljava/lang/String;

    .line 7
    iput-object v1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemCheckBox;->mChecked:Ljava/lang/String;

    .line 12
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemCheckBox;->mID:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemCheckBox;->mItem:[Ljava/lang/String;

    .line 14
    iput-object p3, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemCheckBox;->mChecked:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public ChangeCheckedStatus(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "beforeTxt"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 46
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemCheckBox;->mItem:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 47
    const/4 v0, 0x0

    .line 66
    :goto_0
    return-object v0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemCheckBox;->mItem:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 51
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemCheckBox;->getChecked()Ljava/lang/String;

    move-result-object v0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 52
    const-string v0, "no"

    invoke-virtual {p0, v0}, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemCheckBox;->setChecked(Ljava/lang/String;)V

    .line 57
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemCheckBox;->mItem:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0

    .line 54
    :cond_1
    const-string v0, "yes"

    invoke-virtual {p0, v0}, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemCheckBox;->setChecked(Ljava/lang/String;)V

    goto :goto_1

    .line 60
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemCheckBox;->getChecked()Ljava/lang/String;

    move-result-object v0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 61
    const-string v0, "no"

    invoke-virtual {p0, v0}, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemCheckBox;->setChecked(Ljava/lang/String;)V

    .line 66
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemCheckBox;->mItem:[Ljava/lang/String;

    aget-object v0, v0, v2

    goto :goto_0

    .line 63
    :cond_3
    const-string v0, "yes"

    invoke-virtual {p0, v0}, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemCheckBox;->setChecked(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public getChecked()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemCheckBox;->mChecked:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemCheckBox;->mID:Ljava/lang/String;

    return-object v0
.end method

.method public getItem()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemCheckBox;->mItem:[Ljava/lang/String;

    return-object v0
.end method

.method public setChecked(Ljava/lang/String;)V
    .locals 0
    .param p1, "checked"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemCheckBox;->mChecked:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemCheckBox;->mID:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setItem([Ljava/lang/String;)V
    .locals 1
    .param p1, "item"    # [Ljava/lang/String;

    .prologue
    .line 37
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemCheckBox;->mItem:[Ljava/lang/String;

    .line 38
    return-void
.end method
