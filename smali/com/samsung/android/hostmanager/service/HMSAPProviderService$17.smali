.class final Lcom/samsung/android/hostmanager/service/HMSAPProviderService$17;
.super Landroid/content/BroadcastReceiver;
.source "HMSAPProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/service/HMSAPProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17196
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 17199
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 17200
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 17201
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ACTION_SCREEN_ON"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17202
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->dismissKeyGuard()V

    .line 17204
    :try_start_0
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$2800()Landroid/content/BroadcastReceiver;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17209
    :cond_0
    :goto_0
    return-void

    .line 17205
    :catch_0
    move-exception v1

    .line 17206
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
