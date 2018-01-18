.class public Lcom/samsung/android/app/watchmanager/plugin/selibrary/settings/SystemSettings;
.super Ljava/lang/Object;
.source "SystemSettings.java"

# interfaces
.implements Lcom/samsung/android/app/watchmanager/plugin/libinterface/settings/SystemSettingsInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DORMANT_ALLOW_LIST()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    const-string v0, "DORMANT_ALLOW_LIST"

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/util/ExceptionUtil;->throwException(Ljava/lang/String;)V

    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public DORMANT_ALWAYS()Ljava/lang/String;
    .locals 3

    .prologue
    .line 29
    const-class v1, Landroid/provider/Settings$System;

    const-string v2, "SEM_DORMANT_ALWAYS"

    invoke-static {v1, v2}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/ReflectUtil;->callField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 30
    .local v0, "retObj":Ljava/lang/Object;
    if-nez v0, :cond_0

    const-string v0, ""

    .end local v0    # "retObj":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "retObj":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public DORMANT_DISABLE_ALARM_AND_TIMER()Ljava/lang/String;
    .locals 3

    .prologue
    .line 59
    const-class v1, Landroid/provider/Settings$System;

    const-string v2, "SEM_DORMANT_DISABLE_ALARM_AND_TIMER"

    invoke-static {v1, v2}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/ReflectUtil;->callField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 60
    .local v0, "retObj":Ljava/lang/Object;
    if-nez v0, :cond_0

    const-string v0, ""

    .end local v0    # "retObj":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "retObj":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public DORMANT_DISABLE_INCOMING_CALLS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-string v0, "DORMANT_DISABLE_INCOMING_CALLS"

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/util/ExceptionUtil;->throwException(Ljava/lang/String;)V

    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public DORMANT_DISABLE_NOTIFICATIONS()Ljava/lang/String;
    .locals 3

    .prologue
    .line 23
    const-class v1, Landroid/provider/Settings$System;

    const-string v2, "SEM_DORMANT_DISABLE_NOTIFICATIONS"

    invoke-static {v1, v2}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/ReflectUtil;->callField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 24
    .local v0, "retObj":Ljava/lang/Object;
    if-nez v0, :cond_0

    const-string v0, ""

    .end local v0    # "retObj":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "retObj":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public DORMANT_END_HOUR()Ljava/lang/String;
    .locals 3

    .prologue
    .line 47
    const-class v1, Landroid/provider/Settings$System;

    const-string v2, "SEM_DORMANT_END_HOUR"

    invoke-static {v1, v2}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/ReflectUtil;->callField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 48
    .local v0, "retObj":Ljava/lang/Object;
    if-nez v0, :cond_0

    const-string v0, ""

    .end local v0    # "retObj":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "retObj":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public DORMANT_END_MIN()Ljava/lang/String;
    .locals 3

    .prologue
    .line 53
    const-class v1, Landroid/provider/Settings$System;

    const-string v2, "SEM_DORMANT_END_MIN"

    invoke-static {v1, v2}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/ReflectUtil;->callField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 54
    .local v0, "retObj":Ljava/lang/Object;
    if-nez v0, :cond_0

    const-string v0, ""

    .end local v0    # "retObj":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "retObj":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public DORMANT_START_HOUR()Ljava/lang/String;
    .locals 3

    .prologue
    .line 35
    const-class v1, Landroid/provider/Settings$System;

    const-string v2, "SEM_DORMANT_START_HOUR"

    invoke-static {v1, v2}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/ReflectUtil;->callField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 36
    .local v0, "retObj":Ljava/lang/Object;
    if-nez v0, :cond_0

    const-string v0, ""

    .end local v0    # "retObj":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "retObj":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public DORMANT_START_MIN()Ljava/lang/String;
    .locals 3

    .prologue
    .line 41
    const-class v1, Landroid/provider/Settings$System;

    const-string v2, "SEM_DORMANT_START_MIN"

    invoke-static {v1, v2}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/ReflectUtil;->callField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 42
    .local v0, "retObj":Ljava/lang/Object;
    if-nez v0, :cond_0

    const-string v0, ""

    .end local v0    # "retObj":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "retObj":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public DORMANT_SWITCH_ONOFF()Ljava/lang/String;
    .locals 3

    .prologue
    .line 17
    const-class v1, Landroid/provider/Settings$System;

    const-string v2, "SEM_DORMANT_SWITCH_ONOFF"

    invoke-static {v1, v2}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/ReflectUtil;->callField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 18
    .local v0, "retObj":Ljava/lang/Object;
    if-nez v0, :cond_0

    const-string v0, ""

    .end local v0    # "retObj":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "retObj":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public EASY_INTERACTION()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    const-string v0, "EASY_INTERACTION"

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/util/ExceptionUtil;->throwException(Ljava/lang/String;)V

    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method public ENABLED_NOTIFICATION_LISTENERS()Ljava/lang/String;
    .locals 3

    .prologue
    .line 11
    const-class v1, Landroid/provider/Settings$Secure;

    const-string v2, "SEM_ENABLED_NOTIFICATION_LISTENERS"

    invoke-static {v1, v2}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/ReflectUtil;->callField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 12
    .local v0, "retObj":Ljava/lang/Object;
    if-nez v0, :cond_0

    const-string v0, ""

    .end local v0    # "retObj":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "retObj":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public FONT_SIZE()Ljava/lang/String;
    .locals 3

    .prologue
    .line 92
    const-class v1, Landroid/provider/Settings$Global;

    const-string v2, "SEM_FONT_SIZE"

    invoke-static {v1, v2}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/ReflectUtil;->callField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 93
    .local v0, "retObj":Ljava/lang/Object;
    if-nez v0, :cond_0

    const-string v0, ""

    .end local v0    # "retObj":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "retObj":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public MASTER_MOTION()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const-string v0, ""

    return-object v0
.end method

.method public MOTION_ENGINE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-string v0, ""

    return-object v0
.end method

.method public isProductShip()I
    .locals 1

    .prologue
    .line 84
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    const/4 v0, 0x1

    .line 87
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
