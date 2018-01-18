.class public Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemPaletteItem;
.super Ljava/lang/Object;
.source "SettingsItemPaletteItem.java"


# instance fields
.field ID:Ljava/lang/String;

.field Item:[Ljava/lang/String;

.field Number:Ljava/lang/String;

.field Selected:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object v1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemPaletteItem;->ID:Ljava/lang/String;

    .line 5
    iput-object v1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemPaletteItem;->Number:Ljava/lang/String;

    .line 6
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemPaletteItem;->Item:[Ljava/lang/String;

    .line 7
    iput-object v1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemPaletteItem;->Selected:Ljava/lang/String;

    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "aID"    # Ljava/lang/String;
    .param p2, "aNumber"    # Ljava/lang/String;
    .param p3, "aSelected"    # Ljava/lang/String;
    .param p4, "tItem"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object v1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemPaletteItem;->ID:Ljava/lang/String;

    .line 5
    iput-object v1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemPaletteItem;->Number:Ljava/lang/String;

    .line 6
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemPaletteItem;->Item:[Ljava/lang/String;

    .line 7
    iput-object v1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemPaletteItem;->Selected:Ljava/lang/String;

    .line 11
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemPaletteItem;->ID:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemPaletteItem;->Number:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemPaletteItem;->Selected:Ljava/lang/String;

    .line 14
    iput-object p4, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemPaletteItem;->Item:[Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemPaletteItem;->ID:Ljava/lang/String;

    return-object v0
.end method

.method public getItem()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemPaletteItem;->Item:[Ljava/lang/String;

    return-object v0
.end method

.method public getItemString(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemPaletteItem;->Item:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemPaletteItem;->Number:Ljava/lang/String;

    return-object v0
.end method

.method public getSelected()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemPaletteItem;->Selected:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "aID"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemPaletteItem;->ID:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setItem([Ljava/lang/String;)V
    .locals 1
    .param p1, "tItem"    # [Ljava/lang/String;

    .prologue
    .line 26
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemPaletteItem;->Item:[Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "aNumber"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemPaletteItem;->Number:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setSelected(Ljava/lang/String;)V
    .locals 0
    .param p1, "aSelected"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemPaletteItem;->Selected:Ljava/lang/String;

    .line 24
    return-void
.end method
