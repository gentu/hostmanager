.class public Lcom/samsung/android/hostmanager/connectionmanager/receiver/ConnectionManagerNotifier;
.super Landroid/content/BroadcastReceiver;
.source "ConnectionManagerNotifier.java"


# static fields
.field private static final ACTION_CONNECTION_INFO_NOTIFY:Ljava/lang/String; = "com.sec.android.service.connectionmanager.action.CONNECTION_INFO_NOTIFY"

.field private static final EXTRA_ADDRESS:Ljava/lang/String; = "com.sec.android.service.connectionmanager.extra.ADDRESS"

.field private static final EXTRA_NAME:Ljava/lang/String; = "com.sec.android.service.connectionmanager.extra.NAME"

.field private static final EXTRA_SENDER_TAG:Ljava/lang/String; = "com.sec.android.service.connectionmanager.extra.SENDER_TAG"

.field private static final SENDER_TAG:Ljava/lang/String; = "CM"

.field private static final TAG:Ljava/lang/String; = "ConnectionManagerNotifier"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static notifyConnectionDeviceInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 163
    if-nez p0, :cond_0

    .line 164
    const/4 v1, 0x0

    .line 175
    :goto_0
    return v1

    .line 166
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.service.connectionmanager.action.CONNECTION_INFO_NOTIFY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.service.connectionmanager.extra.SENDER_TAG"

    const-string v2, "CM"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const-string v1, "com.sec.android.service.connectionmanager.extra.ADDRESS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string v1, "com.sec.android.service.connectionmanager.extra.NAME"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const-string v1, "ConnectionManagerNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notify the device info : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v5, "com.sec.android.service.connectionmanager.action.CONNECTION_INFO_NOTIFY"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 46
    const-string v5, "com.sec.android.service.connectionmanager.extra.SENDER_TAG"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 49
    .local v4, "sender":Ljava/lang/String;
    const-string v5, "CM"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 76
    .end local v4    # "sender":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 52
    .restart local v4    # "sender":Ljava/lang/String;
    :cond_1
    const-string v5, "com.sec.android.service.connectionmanager.extra.ADDRESS"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "address":Ljava/lang/String;
    const-string v5, "com.sec.android.service.connectionmanager.extra.NAME"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, "name":Ljava/lang/String;
    const-string v5, "ConnectionManagerNotifier"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Receive the ACTION_CM_NOTIFY from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getInstance()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v2

    .line 60
    .local v2, "cm":Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;
    if-nez v2, :cond_2

    .line 61
    const-string v5, "ConnectionManagerNotifier"

    const-string v6, "[jdub] Connection Manager is not running.."

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_2
    const-string v5, "ConnectionManagerNotifier"

    const-string v6, "[jdub] Connection Manager is running.."

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
