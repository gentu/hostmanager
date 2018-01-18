.class public Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemTimePicker;
.super Ljava/lang/Object;
.source "SettingsItemTimePicker.java"


# instance fields
.field Hour:Ljava/lang/String;

.field ID:Ljava/lang/String;

.field Minute:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemTimePicker;->ID:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemTimePicker;->Hour:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemTimePicker;->Minute:Ljava/lang/String;

    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "aID"    # Ljava/lang/String;
    .param p2, "aHour"    # Ljava/lang/String;
    .param p3, "aMinute"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemTimePicker;->ID:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemTimePicker;->Hour:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemTimePicker;->Minute:Ljava/lang/String;

    .line 10
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemTimePicker;->ID:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemTimePicker;->Hour:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemTimePicker;->Minute:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public getHour()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemTimePicker;->Hour:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemTimePicker;->ID:Ljava/lang/String;

    return-object v0
.end method

.method public getMinute()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemTimePicker;->Minute:Ljava/lang/String;

    return-object v0
.end method

.method public getTime(Z)Ljava/lang/String;
    .locals 13
    .param p1, "is24HourFormat"    # Z

    .prologue
    const/16 v12, 0xa

    .line 42
    const/4 v5, 0x1

    if-ne p1, v5, :cond_2

    .line 43
    iget-object v5, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemTimePicker;->Minute:Ljava/lang/String;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 44
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemTimePicker;->Hour:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "00"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "mTime":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 45
    .end local v0    # "mTime":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemTimePicker;->Minute:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v5, v12, :cond_1

    .line 46
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemTimePicker;->Hour:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemTimePicker;->Minute:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "mTime":Ljava/lang/String;
    goto :goto_0

    .line 48
    .end local v0    # "mTime":Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemTimePicker;->Hour:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemTimePicker;->Minute:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "mTime":Ljava/lang/String;
    goto :goto_0

    .line 51
    .end local v0    # "mTime":Ljava/lang/String;
    :cond_2
    const-wide/32 v6, 0x15180

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 52
    .local v4, "v24hour":Ljava/lang/Long;
    const-wide/32 v6, 0xa8c0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 53
    .local v3, "v12hour":Ljava/lang/Long;
    iget-object v5, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemTimePicker;->Hour:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0xe10

    mul-long/2addr v6, v8

    iget-object v5, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemTimePicker;->Hour:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x3c

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 56
    .local v2, "totalTime":Ljava/lang/Long;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-gez v5, :cond_5

    .line 57
    const-string v1, " PM"

    .line 58
    .local v1, "strPmAm":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemTimePicker;->Minute:Ljava/lang/String;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 59
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemTimePicker;->Hour:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, -0xc

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "00"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "mTime":Ljava/lang/String;
    goto/16 :goto_0

    .line 60
    .end local v0    # "mTime":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemTimePicker;->Minute:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v5, v12, :cond_4

    .line 61
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemTimePicker;->Hour:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, -0xc

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemTimePicker;->Minute:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "mTime":Ljava/lang/String;
    goto/16 :goto_0

    .line 63
    .end local v0    # "mTime":Ljava/lang/String;
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemTimePicker;->Hour:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, -0xc

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemTimePicker;->Minute:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "mTime":Ljava/lang/String;
    goto/16 :goto_0

    .line 65
    .end local v0    # "mTime":Ljava/lang/String;
    .end local v1    # "strPmAm":Ljava/lang/String;
    :cond_5
    const-string v1, " AM"

    .line 67
    .restart local v1    # "strPmAm":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemTimePicker;->Minute:Ljava/lang/String;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 68
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemTimePicker;->Hour:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "00"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "mTime":Ljava/lang/String;
    goto/16 :goto_0

    .line 69
    .end local v0    # "mTime":Ljava/lang/String;
    :cond_6
    iget-object v5, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemTimePicker;->Minute:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v5, v12, :cond_7

    .line 70
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemTimePicker;->Hour:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemTimePicker;->Minute:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "mTime":Ljava/lang/String;
    goto/16 :goto_0

    .line 72
    .end local v0    # "mTime":Ljava/lang/String;
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemTimePicker;->Hour:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemTimePicker;->Minute:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "mTime":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public setHour(Ljava/lang/String;)V
    .locals 0
    .param p1, "aHour"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemTimePicker;->Hour:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "aID"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemTimePicker;->ID:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setMinute(Ljava/lang/String;)V
    .locals 0
    .param p1, "aMinute"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsItemTimePicker;->Minute:Ljava/lang/String;

    .line 25
    return-void
.end method
