.class public Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/settings/SystemSettings;
.super Ljava/lang/Object;
.source "SystemSettings.java"

# interfaces
.implements Lcom/samsung/android/app/watchmanager/plugin/libinterface/settings/SystemSettingsInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DORMANT_ALLOW_LIST()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const-string v0, "dormant_allow_list"

    return-object v0
.end method

.method public DORMANT_ALWAYS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const-string v0, "dormant_always"

    return-object v0
.end method

.method public DORMANT_DISABLE_ALARM_AND_TIMER()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string v0, "dormant_disable_alarm_and_timer"

    return-object v0
.end method

.method public DORMANT_DISABLE_INCOMING_CALLS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string v0, "dormant_disable_incoming_calls"

    return-object v0
.end method

.method public DORMANT_DISABLE_NOTIFICATIONS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    const-string v0, "dormant_disable_notifications"

    return-object v0
.end method

.method public DORMANT_END_HOUR()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "dormant_end_hour"

    return-object v0
.end method

.method public DORMANT_END_MIN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "dormant_end_min"

    return-object v0
.end method

.method public DORMANT_START_HOUR()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, "dormant_start_hour"

    return-object v0
.end method

.method public DORMANT_START_MIN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, "dormant_start_min"

    return-object v0
.end method

.method public DORMANT_SWITCH_ONOFF()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const-string v0, "dormant_switch_onoff"

    return-object v0
.end method

.method public EASY_INTERACTION()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const-string v0, "easy_interaction"

    return-object v0
.end method

.method public ENABLED_NOTIFICATION_LISTENERS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    const-string v0, "enabled_notification_listeners"

    return-object v0
.end method

.method public FONT_SIZE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const-string v0, "font_size"

    return-object v0
.end method

.method public MASTER_MOTION()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "master_motion"

    return-object v0
.end method

.method public MOTION_ENGINE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const-string v0, "motion_engine"

    return-object v0
.end method

.method public isProductShip()I
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    return v0
.end method
