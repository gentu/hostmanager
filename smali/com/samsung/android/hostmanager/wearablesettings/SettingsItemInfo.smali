.class public Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;
.super Ljava/lang/Object;
.source "SettingsItemInfo.java"


# instance fields
.field mAppsClockListItem:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemAppsClockListItem;

.field mCheckBox:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemCheckBox;

.field mCondition:Lcom/samsung/android/hostmanager/wearablesettings/SettingsCondition;

.field mConditional:Ljava/lang/String;

.field mDatePicker:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemDatePicker;

.field mFavorites:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemFavorites;

.field mID:Ljava/lang/String;

.field mListItem:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemListItem;

.field mPaletteItem:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemPaletteItem;

.field mRadioBox:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemRadioBox;

.field mRadioBoxEx:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemRadioBoxEx;

.field mSetting_Type:Ljava/lang/String;

.field mStyleClockListItem:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemStyleClockListItem;

.field mSubTitle:Ljava/lang/String;

.field mSwitchBtn:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemSwitchBtn;

.field mTimePicker:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemTimePicker;

.field mTitle:Ljava/lang/String;

.field mTitle_Type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mID:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mTitle_Type:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mSetting_Type:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mTitle:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mSubTitle:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mCheckBox:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemCheckBox;

    .line 10
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mRadioBox:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemRadioBox;

    .line 11
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mSwitchBtn:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemSwitchBtn;

    .line 12
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mTimePicker:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemTimePicker;

    .line 13
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mDatePicker:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemDatePicker;

    .line 14
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mFavorites:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemFavorites;

    .line 15
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mListItem:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemListItem;

    .line 16
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mPaletteItem:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemPaletteItem;

    .line 17
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mRadioBoxEx:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemRadioBoxEx;

    .line 18
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mAppsClockListItem:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemAppsClockListItem;

    .line 19
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mStyleClockListItem:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemStyleClockListItem;

    .line 21
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mConditional:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mCondition:Lcom/samsung/android/hostmanager/wearablesettings/SettingsCondition;

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;)V
    .locals 1
    .param p1, "settingsItemInfo"    # Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mID:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mTitle_Type:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mSetting_Type:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mTitle:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mSubTitle:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mCheckBox:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemCheckBox;

    .line 10
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mRadioBox:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemRadioBox;

    .line 11
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mSwitchBtn:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemSwitchBtn;

    .line 12
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mTimePicker:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemTimePicker;

    .line 13
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mDatePicker:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemDatePicker;

    .line 14
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mFavorites:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemFavorites;

    .line 15
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mListItem:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemListItem;

    .line 16
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mPaletteItem:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemPaletteItem;

    .line 17
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mRadioBoxEx:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemRadioBoxEx;

    .line 18
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mAppsClockListItem:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemAppsClockListItem;

    .line 19
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mStyleClockListItem:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemStyleClockListItem;

    .line 21
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mConditional:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mCondition:Lcom/samsung/android/hostmanager/wearablesettings/SettingsCondition;

    .line 29
    iget-object v0, p1, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mID:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mID:Ljava/lang/String;

    .line 30
    iget-object v0, p1, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mTitle_Type:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mTitle_Type:Ljava/lang/String;

    .line 31
    iget-object v0, p1, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mSetting_Type:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mSetting_Type:Ljava/lang/String;

    .line 32
    iget-object v0, p1, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mTitle:Ljava/lang/String;

    .line 33
    iget-object v0, p1, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mSubTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mSubTitle:Ljava/lang/String;

    .line 34
    iget-object v0, p1, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mCheckBox:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemCheckBox;

    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mCheckBox:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemCheckBox;

    .line 35
    iget-object v0, p1, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mRadioBox:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemRadioBox;

    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mRadioBox:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemRadioBox;

    .line 36
    iget-object v0, p1, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mConditional:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mConditional:Ljava/lang/String;

    .line 37
    iget-object v0, p1, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mCondition:Lcom/samsung/android/hostmanager/wearablesettings/SettingsCondition;

    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mCondition:Lcom/samsung/android/hostmanager/wearablesettings/SettingsCondition;

    .line 38
    iget-object v0, p1, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mTimePicker:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemTimePicker;

    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mTimePicker:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemTimePicker;

    .line 39
    iget-object v0, p1, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mDatePicker:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemDatePicker;

    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mDatePicker:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemDatePicker;

    .line 40
    iget-object v0, p1, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mSwitchBtn:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemSwitchBtn;

    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mSwitchBtn:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemSwitchBtn;

    .line 41
    iget-object v0, p1, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mFavorites:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemFavorites;

    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mFavorites:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemFavorites;

    .line 42
    iget-object v0, p1, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mPaletteItem:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemPaletteItem;

    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mPaletteItem:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemPaletteItem;

    .line 43
    iget-object v0, p1, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mRadioBoxEx:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemRadioBoxEx;

    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mRadioBoxEx:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemRadioBoxEx;

    .line 44
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 192
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mID:Ljava/lang/String;

    .line 193
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mTitle_Type:Ljava/lang/String;

    .line 194
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mSetting_Type:Ljava/lang/String;

    .line 195
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mTitle:Ljava/lang/String;

    .line 196
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mSubTitle:Ljava/lang/String;

    .line 197
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mCheckBox:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemCheckBox;

    .line 198
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mRadioBox:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemRadioBox;

    .line 199
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mRadioBoxEx:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemRadioBoxEx;

    .line 200
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mSwitchBtn:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemSwitchBtn;

    .line 201
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mTimePicker:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemTimePicker;

    .line 202
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mDatePicker:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemDatePicker;

    .line 203
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mFavorites:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemFavorites;

    .line 204
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mListItem:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemListItem;

    .line 205
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mAppsClockListItem:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemAppsClockListItem;

    .line 206
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mPaletteItem:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemPaletteItem;

    .line 207
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mConditional:Ljava/lang/String;

    .line 208
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mCondition:Lcom/samsung/android/hostmanager/wearablesettings/SettingsCondition;

    .line 209
    return-void
.end method

.method public getAppsClockListItem()Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemAppsClockListItem;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mAppsClockListItem:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemAppsClockListItem;

    return-object v0
.end method

.method public getCheckBox()Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemCheckBox;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mCheckBox:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemCheckBox;

    return-object v0
.end method

.method public getCondition()Lcom/samsung/android/hostmanager/wearablesettings/SettingsCondition;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mCondition:Lcom/samsung/android/hostmanager/wearablesettings/SettingsCondition;

    return-object v0
.end method

.method public getConditional()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mConditional:Ljava/lang/String;

    return-object v0
.end method

.method public getDatePicker()Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemDatePicker;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mDatePicker:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemDatePicker;

    return-object v0
.end method

.method public getFavorites()Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemFavorites;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mFavorites:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemFavorites;

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mID:Ljava/lang/String;

    return-object v0
.end method

.method public getListItem()Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemListItem;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mListItem:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemListItem;

    return-object v0
.end method

.method public getPalette()Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemPaletteItem;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mPaletteItem:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemPaletteItem;

    return-object v0
.end method

.method public getRadioBox()Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemRadioBox;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mRadioBox:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemRadioBox;

    return-object v0
.end method

.method public getRadioBoxEx()Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemRadioBoxEx;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mRadioBoxEx:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemRadioBoxEx;

    return-object v0
.end method

.method public getSettingType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mSetting_Type:Ljava/lang/String;

    return-object v0
.end method

.method public getStyleClockListItem()Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemStyleClockListItem;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mStyleClockListItem:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemStyleClockListItem;

    return-object v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mSubTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getSwitchBtn()Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemSwitchBtn;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mSwitchBtn:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemSwitchBtn;

    return-object v0
.end method

.method public getTimePicker()Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemTimePicker;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mTimePicker:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemTimePicker;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mTitle_Type:Ljava/lang/String;

    return-object v0
.end method

.method public setAppsClockListItem(Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemAppsClockListItem;)V
    .locals 0
    .param p1, "appsClockListItem"    # Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemAppsClockListItem;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mAppsClockListItem:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemAppsClockListItem;

    .line 101
    return-void
.end method

.method public setCheckBox(Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemCheckBox;)V
    .locals 0
    .param p1, "checkBox"    # Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemCheckBox;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mCheckBox:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemCheckBox;

    .line 77
    return-void
.end method

.method public setCondition(Lcom/samsung/android/hostmanager/wearablesettings/SettingsCondition;)V
    .locals 0
    .param p1, "condition"    # Lcom/samsung/android/hostmanager/wearablesettings/SettingsCondition;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mCondition:Lcom/samsung/android/hostmanager/wearablesettings/SettingsCondition;

    .line 113
    return-void
.end method

.method public setConditional(Ljava/lang/String;)V
    .locals 0
    .param p1, "conditional"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mConditional:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setDatePicker(Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemDatePicker;)V
    .locals 0
    .param p1, "datePicker"    # Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemDatePicker;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mDatePicker:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemDatePicker;

    .line 89
    return-void
.end method

.method public setFavorites(Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemFavorites;)V
    .locals 0
    .param p1, "favorites"    # Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemFavorites;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mFavorites:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemFavorites;

    .line 93
    return-void
.end method

.method public setID(Ljava/lang/String;)V
    .locals 0
    .param p1, "ID"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mID:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setListItem(Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemListItem;)V
    .locals 0
    .param p1, "listitem"    # Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemListItem;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mListItem:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemListItem;

    .line 97
    return-void
.end method

.method public setPalette(Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemPaletteItem;)V
    .locals 0
    .param p1, "paletteItem"    # Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemPaletteItem;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mPaletteItem:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemPaletteItem;

    .line 73
    return-void
.end method

.method public setRadioBox(Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemRadioBox;)V
    .locals 0
    .param p1, "radioBox"    # Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemRadioBox;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mRadioBox:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemRadioBox;

    .line 69
    return-void
.end method

.method public setRadioBoxEx(Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemRadioBoxEx;)V
    .locals 0
    .param p1, "radioBoxEx"    # Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemRadioBoxEx;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mRadioBoxEx:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemRadioBoxEx;

    .line 116
    return-void
.end method

.method public setSettingType(Ljava/lang/String;)V
    .locals 0
    .param p1, "setting_type"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mSetting_Type:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setStyleClockListItem(Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemStyleClockListItem;)V
    .locals 0
    .param p1, "styleClockListItem"    # Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemStyleClockListItem;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mStyleClockListItem:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemStyleClockListItem;

    .line 105
    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "subtitle"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mSubTitle:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setSwitchBtn(Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemSwitchBtn;)V
    .locals 0
    .param p1, "switchBtn"    # Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemSwitchBtn;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mSwitchBtn:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemSwitchBtn;

    .line 81
    return-void
.end method

.method public setTimePicker(Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemTimePicker;)V
    .locals 0
    .param p1, "timePicker"    # Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemTimePicker;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mTimePicker:Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemTimePicker;

    .line 85
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mTitle:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setTitleType(Ljava/lang/String;)V
    .locals 0
    .param p1, "title_type"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemInfo;->mTitle_Type:Ljava/lang/String;

    .line 53
    return-void
.end method
