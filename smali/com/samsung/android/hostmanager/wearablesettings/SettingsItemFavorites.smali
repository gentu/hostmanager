.class public Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemFavorites;
.super Ljava/lang/Object;
.source "SettingsItemFavorites.java"


# instance fields
.field ClassNameItem:[Ljava/lang/String;

.field ID:Ljava/lang/String;

.field IsAppWidget:[Ljava/lang/String;

.field Item:[Ljava/lang/String;

.field Number:Ljava/lang/String;

.field Selected:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object v2, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemFavorites;->ID:Ljava/lang/String;

    .line 5
    iput-object v2, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemFavorites;->Number:Ljava/lang/String;

    .line 6
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemFavorites;->Item:[Ljava/lang/String;

    .line 7
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemFavorites;->ClassNameItem:[Ljava/lang/String;

    .line 8
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemFavorites;->IsAppWidget:[Ljava/lang/String;

    .line 9
    iput-object v2, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemFavorites;->Selected:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "selected"    # Ljava/lang/String;
    .param p4, "item"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object v2, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemFavorites;->ID:Ljava/lang/String;

    .line 5
    iput-object v2, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemFavorites;->Number:Ljava/lang/String;

    .line 6
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemFavorites;->Item:[Ljava/lang/String;

    .line 7
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemFavorites;->ClassNameItem:[Ljava/lang/String;

    .line 8
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemFavorites;->IsAppWidget:[Ljava/lang/String;

    .line 9
    iput-object v2, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemFavorites;->Selected:Ljava/lang/String;

    .line 14
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemFavorites;->ID:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemFavorites;->Number:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemFavorites;->Selected:Ljava/lang/String;

    .line 17
    iput-object p4, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemFavorites;->Item:[Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getClassName(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemFavorites;->ClassNameItem:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getClassNameItem()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemFavorites;->ClassNameItem:[Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemFavorites;->ID:Ljava/lang/String;

    return-object v0
.end method

.method public getIsAppWidget(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemFavorites;->IsAppWidget:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getIsAppWidgetItem()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemFavorites;->IsAppWidget:[Ljava/lang/String;

    return-object v0
.end method

.method public getItem()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemFavorites;->Item:[Ljava/lang/String;

    return-object v0
.end method

.method public getItemString(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemFavorites;->Item:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemFavorites;->Number:Ljava/lang/String;

    return-object v0
.end method

.method public getSelected()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemFavorites;->Selected:Ljava/lang/String;

    return-object v0
.end method

.method public setClassNameItem([Ljava/lang/String;)V
    .locals 1
    .param p1, "tClassNameItem"    # [Ljava/lang/String;

    .prologue
    .line 37
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemFavorites;->ClassNameItem:[Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "aID"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemFavorites;->ID:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setIsAppWidgetItem([Ljava/lang/String;)V
    .locals 1
    .param p1, "tIsAppWidget"    # [Ljava/lang/String;

    .prologue
    .line 41
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemFavorites;->IsAppWidget:[Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setItem([Ljava/lang/String;)V
    .locals 1
    .param p1, "tItem"    # [Ljava/lang/String;

    .prologue
    .line 33
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemFavorites;->Item:[Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "aNumber"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemFavorites;->Number:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setSelected(Ljava/lang/String;)V
    .locals 0
    .param p1, "aSelected"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemFavorites;->Selected:Ljava/lang/String;

    .line 30
    return-void
.end method
