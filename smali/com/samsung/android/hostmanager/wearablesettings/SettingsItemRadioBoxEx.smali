.class public Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemRadioBoxEx;
.super Ljava/lang/Object;
.source "SettingsItemRadioBoxEx.java"


# instance fields
.field Conditional_Value:Ljava/lang/String;

.field ID:Ljava/lang/String;

.field Item:[Ljava/lang/String;

.field Number:Ljava/lang/String;

.field Popup_Contents:Ljava/lang/String;

.field Popup_Index:Ljava/lang/String;

.field Selected:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object v1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemRadioBoxEx;->ID:Ljava/lang/String;

    .line 5
    iput-object v1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemRadioBoxEx;->Number:Ljava/lang/String;

    .line 6
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemRadioBoxEx;->Item:[Ljava/lang/String;

    .line 7
    iput-object v1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemRadioBoxEx;->Selected:Ljava/lang/String;

    .line 8
    iput-object v1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemRadioBoxEx;->Conditional_Value:Ljava/lang/String;

    .line 9
    iput-object v1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemRadioBoxEx;->Popup_Index:Ljava/lang/String;

    .line 10
    iput-object v1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemRadioBoxEx;->Popup_Contents:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "aID"    # Ljava/lang/String;
    .param p2, "aNumber"    # Ljava/lang/String;
    .param p3, "aSelected"    # Ljava/lang/String;
    .param p4, "aConditional_Value"    # Ljava/lang/String;
    .param p5, "tItem"    # [Ljava/lang/String;
    .param p6, "aPopup_Index"    # Ljava/lang/String;
    .param p7, "tPopup_Contents"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object v1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemRadioBoxEx;->ID:Ljava/lang/String;

    .line 5
    iput-object v1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemRadioBoxEx;->Number:Ljava/lang/String;

    .line 6
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemRadioBoxEx;->Item:[Ljava/lang/String;

    .line 7
    iput-object v1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemRadioBoxEx;->Selected:Ljava/lang/String;

    .line 8
    iput-object v1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemRadioBoxEx;->Conditional_Value:Ljava/lang/String;

    .line 9
    iput-object v1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemRadioBoxEx;->Popup_Index:Ljava/lang/String;

    .line 10
    iput-object v1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemRadioBoxEx;->Popup_Contents:Ljava/lang/String;

    .line 15
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemRadioBoxEx;->ID:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemRadioBoxEx;->Number:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemRadioBoxEx;->Selected:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemRadioBoxEx;->Conditional_Value:Ljava/lang/String;

    .line 19
    iput-object p5, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemRadioBoxEx;->Item:[Ljava/lang/String;

    .line 20
    iput-object p6, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemRadioBoxEx;->Popup_Index:Ljava/lang/String;

    .line 21
    iput-object p7, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemRadioBoxEx;->Popup_Contents:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public getConditionalValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemRadioBoxEx;->Conditional_Value:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemRadioBoxEx;->ID:Ljava/lang/String;

    return-object v0
.end method

.method public getItem()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemRadioBoxEx;->Item:[Ljava/lang/String;

    return-object v0
.end method

.method public getItemString(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemRadioBoxEx;->Item:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemRadioBoxEx;->Number:Ljava/lang/String;

    return-object v0
.end method

.method public getPopupContents()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemRadioBoxEx;->Popup_Contents:Ljava/lang/String;

    return-object v0
.end method

.method public getPopupIndex()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemRadioBoxEx;->Popup_Index:Ljava/lang/String;

    return-object v0
.end method

.method public getSelected()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemRadioBoxEx;->Selected:Ljava/lang/String;

    return-object v0
.end method

.method public setConditionalValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "aConditional_Value"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemRadioBoxEx;->Conditional_Value:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "aID"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemRadioBoxEx;->ID:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setItem([Ljava/lang/String;)V
    .locals 1
    .param p1, "tItem"    # [Ljava/lang/String;

    .prologue
    .line 41
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemRadioBoxEx;->Item:[Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "aNumber"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemRadioBoxEx;->Number:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setPopupContents(Ljava/lang/String;)V
    .locals 0
    .param p1, "tPopupContents"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemRadioBoxEx;->Popup_Contents:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setPopupIndex(Ljava/lang/String;)V
    .locals 0
    .param p1, "aPopup_Index"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemRadioBoxEx;->Popup_Index:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setSelected(Ljava/lang/String;)V
    .locals 0
    .param p1, "aSelected"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemRadioBoxEx;->Selected:Ljava/lang/String;

    .line 34
    return-void
.end method
