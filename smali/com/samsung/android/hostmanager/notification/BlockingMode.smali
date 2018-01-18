.class public final Lcom/samsung/android/hostmanager/notification/BlockingMode;
.super Ljava/lang/Object;
.source "BlockingMode.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "BlockingMode"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAlarmBlocked(Landroid/content/Context;)Z
    .locals 15
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 120
    const/4 v1, 0x0

    .line 121
    .local v1, "UNCHECK":I
    const/4 v0, 0x1

    .line 123
    .local v0, "CHECK":I
    const/4 v8, 0x0

    .line 125
    .local v8, "isEnabled":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/settings/SystemSettingsFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/settings/SystemSettingsInterface;

    move-result-object v11

    invoke-interface {v11}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/settings/SystemSettingsInterface;->DORMANT_SWITCH_ONOFF()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 126
    .local v7, "isBlockingModeOn":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/settings/SystemSettingsFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/settings/SystemSettingsInterface;

    move-result-object v11

    invoke-interface {v11}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/settings/SystemSettingsInterface;->DORMANT_DISABLE_ALARM_AND_TIMER()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 128
    .local v5, "isAlarmChecked":I
    const-string v10, "BlockingMode"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isBlockingModeOn = ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] and isAlarmChecked = ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]..."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    if-ne v5, v14, :cond_0

    if-ne v7, v14, :cond_0

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/settings/SystemSettingsFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/settings/SystemSettingsInterface;

    move-result-object v11

    invoke-interface {v11}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/settings/SystemSettingsInterface;->DORMANT_ALWAYS()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 131
    .local v6, "isBlockingModeAlways":I
    const-string v10, "BlockingMode"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isBlockingModeAlways = ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    if-ne v6, v14, :cond_1

    .line 134
    const/4 v8, 0x1

    .line 160
    .end local v6    # "isBlockingModeAlways":I
    :cond_0
    :goto_0
    return v8

    .line 136
    .restart local v6    # "isBlockingModeAlways":I
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 137
    .local v2, "c":Ljava/util/Calendar;
    const/16 v10, 0xb

    invoke-virtual {v2, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    mul-int/lit8 v10, v10, 0x3c

    const/16 v11, 0xc

    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    add-int v3, v10, v11

    .line 139
    .local v3, "curTime":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 140
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/settings/SystemSettingsFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/settings/SystemSettingsInterface;

    move-result-object v11

    invoke-interface {v11}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/settings/SystemSettingsInterface;->DORMANT_START_HOUR()Ljava/lang/String;

    move-result-object v11

    .line 139
    invoke-static {v10, v11, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    mul-int/lit8 v10, v10, 0x3c

    .line 140
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 141
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/settings/SystemSettingsFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/settings/SystemSettingsInterface;

    move-result-object v12

    invoke-interface {v12}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/settings/SystemSettingsInterface;->DORMANT_START_MIN()Ljava/lang/String;

    move-result-object v12

    .line 140
    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    add-int v9, v10, v11

    .line 142
    .local v9, "startTime":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 143
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/settings/SystemSettingsFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/settings/SystemSettingsInterface;

    move-result-object v11

    invoke-interface {v11}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/settings/SystemSettingsInterface;->DORMANT_END_HOUR()Ljava/lang/String;

    move-result-object v11

    .line 142
    invoke-static {v10, v11, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    mul-int/lit8 v10, v10, 0x3c

    .line 143
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 144
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/settings/SystemSettingsFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/settings/SystemSettingsInterface;

    move-result-object v12

    invoke-interface {v12}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/settings/SystemSettingsInterface;->DORMANT_END_MIN()Ljava/lang/String;

    move-result-object v12

    .line 143
    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    add-int v4, v10, v11

    .line 146
    .local v4, "endTime":I
    if-ge v9, v4, :cond_2

    .line 147
    if-lt v3, v9, :cond_0

    if-ge v3, v4, :cond_0

    .line 148
    const/4 v8, 0x1

    goto :goto_0

    .line 151
    :cond_2
    if-le v9, v4, :cond_4

    .line 152
    if-lt v3, v4, :cond_3

    if-lt v3, v9, :cond_0

    .line 153
    :cond_3
    const/4 v8, 0x1

    goto :goto_0

    .line 156
    :cond_4
    const/4 v8, 0x1

    goto :goto_0
.end method

.method public static isBlockingMode(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 20
    const/4 v1, 0x0

    .line 21
    .local v1, "UNCHECK":I
    const/4 v0, 0x1

    .line 23
    .local v0, "CHECK":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/settings/SystemSettingsFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/settings/SystemSettingsInterface;

    move-result-object v6

    invoke-interface {v6}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/settings/SystemSettingsInterface;->DORMANT_SWITCH_ONOFF()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 24
    .local v2, "isBlockingModeOn":I
    const-string v5, "BlockingMode"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isBlockingModeOn = ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    if-ne v2, v3, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method public static isIncomingCallBlocked(Landroid/content/Context;)Z
    .locals 15
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 30
    const/4 v1, 0x0

    .line 31
    .local v1, "UNCHECK":I
    const/4 v0, 0x1

    .line 33
    .local v0, "CHECK":I
    const/4 v7, 0x0

    .line 35
    .local v7, "isEnabled":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/settings/SystemSettingsFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/settings/SystemSettingsInterface;

    move-result-object v11

    invoke-interface {v11}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/settings/SystemSettingsInterface;->DORMANT_SWITCH_ONOFF()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 36
    .local v6, "isBlockingModeOn":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/settings/SystemSettingsFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/settings/SystemSettingsInterface;

    move-result-object v11

    invoke-interface {v11}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/settings/SystemSettingsInterface;->DORMANT_DISABLE_INCOMING_CALLS()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 38
    .local v8, "isIncomingCallChecked":I
    const-string v10, "BlockingMode"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isBlockingModeOn = ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] and isIncomingCallChecked = ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]..."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    if-ne v8, v14, :cond_0

    if-ne v6, v14, :cond_0

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/settings/SystemSettingsFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/settings/SystemSettingsInterface;

    move-result-object v11

    invoke-interface {v11}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/settings/SystemSettingsInterface;->DORMANT_ALWAYS()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 41
    .local v5, "isBlockingModeAlways":I
    const-string v10, "BlockingMode"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isBlockingModeAlways = ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    if-ne v5, v14, :cond_1

    .line 44
    const/4 v7, 0x1

    .line 70
    .end local v5    # "isBlockingModeAlways":I
    :cond_0
    :goto_0
    return v7

    .line 46
    .restart local v5    # "isBlockingModeAlways":I
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 47
    .local v2, "c":Ljava/util/Calendar;
    const/16 v10, 0xb

    invoke-virtual {v2, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    mul-int/lit8 v10, v10, 0x3c

    const/16 v11, 0xc

    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    add-int v3, v10, v11

    .line 49
    .local v3, "curTime":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 50
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/settings/SystemSettingsFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/settings/SystemSettingsInterface;

    move-result-object v11

    invoke-interface {v11}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/settings/SystemSettingsInterface;->DORMANT_START_HOUR()Ljava/lang/String;

    move-result-object v11

    .line 49
    invoke-static {v10, v11, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    mul-int/lit8 v10, v10, 0x3c

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 51
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/settings/SystemSettingsFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/settings/SystemSettingsInterface;

    move-result-object v12

    invoke-interface {v12}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/settings/SystemSettingsInterface;->DORMANT_START_MIN()Ljava/lang/String;

    move-result-object v12

    .line 50
    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    add-int v9, v10, v11

    .line 52
    .local v9, "startTime":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 53
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/settings/SystemSettingsFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/settings/SystemSettingsInterface;

    move-result-object v11

    invoke-interface {v11}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/settings/SystemSettingsInterface;->DORMANT_END_HOUR()Ljava/lang/String;

    move-result-object v11

    .line 52
    invoke-static {v10, v11, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    mul-int/lit8 v10, v10, 0x3c

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 54
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/settings/SystemSettingsFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/settings/SystemSettingsInterface;

    move-result-object v12

    invoke-interface {v12}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/settings/SystemSettingsInterface;->DORMANT_END_MIN()Ljava/lang/String;

    move-result-object v12

    .line 53
    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    add-int v4, v10, v11

    .line 56
    .local v4, "endTime":I
    if-ge v9, v4, :cond_2

    .line 57
    if-lt v3, v9, :cond_0

    if-ge v3, v4, :cond_0

    .line 58
    const/4 v7, 0x1

    goto :goto_0

    .line 61
    :cond_2
    if-le v9, v4, :cond_4

    .line 62
    if-lt v3, v4, :cond_3

    if-lt v3, v9, :cond_0

    .line 63
    :cond_3
    const/4 v7, 0x1

    goto :goto_0

    .line 66
    :cond_4
    const/4 v7, 0x1

    goto :goto_0
.end method

.method public static isNotiBlocked(Landroid/content/Context;)Z
    .locals 15
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 75
    const/4 v1, 0x0

    .line 76
    .local v1, "UNCHECK":I
    const/4 v0, 0x1

    .line 78
    .local v0, "CHECK":I
    const/4 v7, 0x0

    .line 80
    .local v7, "isEnabled":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/settings/SystemSettingsFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/settings/SystemSettingsInterface;

    move-result-object v11

    invoke-interface {v11}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/settings/SystemSettingsInterface;->DORMANT_SWITCH_ONOFF()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 81
    .local v6, "isBlockingModeOn":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/settings/SystemSettingsFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/settings/SystemSettingsInterface;

    move-result-object v11

    invoke-interface {v11}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/settings/SystemSettingsInterface;->DORMANT_DISABLE_NOTIFICATIONS()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 83
    .local v8, "isNotificationChecked":I
    const-string v10, "BlockingMode"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isBlockingModeOn = ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] and isNotificationChecked = ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]..."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    if-ne v8, v14, :cond_0

    if-ne v6, v14, :cond_0

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/settings/SystemSettingsFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/settings/SystemSettingsInterface;

    move-result-object v11

    invoke-interface {v11}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/settings/SystemSettingsInterface;->DORMANT_ALWAYS()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 86
    .local v5, "isBlockingModeAlways":I
    const-string v10, "BlockingMode"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isBlockingModeAlways = ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    if-ne v5, v14, :cond_1

    .line 89
    const/4 v7, 0x1

    .line 115
    .end local v5    # "isBlockingModeAlways":I
    :cond_0
    :goto_0
    return v7

    .line 91
    .restart local v5    # "isBlockingModeAlways":I
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 92
    .local v2, "c":Ljava/util/Calendar;
    const/16 v10, 0xb

    invoke-virtual {v2, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    mul-int/lit8 v10, v10, 0x3c

    const/16 v11, 0xc

    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    add-int v3, v10, v11

    .line 94
    .local v3, "curTime":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 95
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/settings/SystemSettingsFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/settings/SystemSettingsInterface;

    move-result-object v11

    invoke-interface {v11}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/settings/SystemSettingsInterface;->DORMANT_START_HOUR()Ljava/lang/String;

    move-result-object v11

    .line 94
    invoke-static {v10, v11, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    mul-int/lit8 v10, v10, 0x3c

    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 96
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/settings/SystemSettingsFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/settings/SystemSettingsInterface;

    move-result-object v12

    invoke-interface {v12}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/settings/SystemSettingsInterface;->DORMANT_START_MIN()Ljava/lang/String;

    move-result-object v12

    .line 95
    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    add-int v9, v10, v11

    .line 97
    .local v9, "startTime":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 98
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/settings/SystemSettingsFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/settings/SystemSettingsInterface;

    move-result-object v11

    invoke-interface {v11}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/settings/SystemSettingsInterface;->DORMANT_END_HOUR()Ljava/lang/String;

    move-result-object v11

    .line 97
    invoke-static {v10, v11, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    mul-int/lit8 v10, v10, 0x3c

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 99
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/settings/SystemSettingsFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/settings/SystemSettingsInterface;

    move-result-object v12

    invoke-interface {v12}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/settings/SystemSettingsInterface;->DORMANT_END_MIN()Ljava/lang/String;

    move-result-object v12

    .line 98
    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    add-int v4, v10, v11

    .line 101
    .local v4, "endTime":I
    if-ge v9, v4, :cond_2

    .line 102
    if-lt v3, v9, :cond_0

    if-ge v3, v4, :cond_0

    .line 103
    const/4 v7, 0x1

    goto :goto_0

    .line 106
    :cond_2
    if-le v9, v4, :cond_4

    .line 107
    if-lt v3, v4, :cond_3

    if-lt v3, v9, :cond_0

    .line 108
    :cond_3
    const/4 v7, 0x1

    goto :goto_0

    .line 111
    :cond_4
    const/4 v7, 0x1

    goto :goto_0
.end method
