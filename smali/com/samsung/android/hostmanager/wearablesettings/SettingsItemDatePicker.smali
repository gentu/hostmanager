.class public Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemDatePicker;
.super Ljava/lang/Object;
.source "SettingsItemDatePicker.java"


# instance fields
.field mDay:Ljava/lang/String;

.field mID:Ljava/lang/String;

.field mMonth:Ljava/lang/String;

.field mYear:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemDatePicker;->mID:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemDatePicker;->mYear:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemDatePicker;->mMonth:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemDatePicker;->mDay:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "year"    # Ljava/lang/String;
    .param p3, "month"    # Ljava/lang/String;
    .param p4, "day"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemDatePicker;->mID:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemDatePicker;->mYear:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemDatePicker;->mMonth:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemDatePicker;->mDay:Ljava/lang/String;

    .line 15
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemDatePicker;->mID:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemDatePicker;->mYear:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemDatePicker;->mMonth:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemDatePicker;->mDay:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 3

    .prologue
    .line 39
    iget-object v1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemDatePicker;->mMonth:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 40
    .local v0, "month":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemDatePicker;->mYear:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemDatePicker;->mDay:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemDatePicker;->mDay:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemDatePicker;->mID:Ljava/lang/String;

    return-object v0
.end method

.method public getMonth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemDatePicker;->mMonth:Ljava/lang/String;

    return-object v0
.end method

.method public getYear()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemDatePicker;->mYear:Ljava/lang/String;

    return-object v0
.end method

.method public setDay(Ljava/lang/String;)V
    .locals 0
    .param p1, "day"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemDatePicker;->mDay:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemDatePicker;->mID:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setMonth(Ljava/lang/String;)V
    .locals 0
    .param p1, "month"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemDatePicker;->mMonth:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setYear(Ljava/lang/String;)V
    .locals 0
    .param p1, "year"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemDatePicker;->mYear:Ljava/lang/String;

    .line 51
    return-void
.end method
