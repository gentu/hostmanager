.class Lcom/samsung/android/hostmanager/HMApplication$3;
.super Landroid/database/ContentObserver;
.source "HMApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/HMApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/HMApplication;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/HMApplication;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/HMApplication;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/samsung/android/hostmanager/HMApplication$3;->this$0:Lcom/samsung/android/hostmanager/HMApplication;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 182
    const-string v1, "HMApplication"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "messageContentObserver :: onChange = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v0, "com.samsung.accessory.saproviders.samessage.DATA_CHANGED"

    .line 186
    .local v0, "intent":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->access$000()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 187
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->access$000()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.accessory.saproviders.samessage.DATA_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 188
    const-string v1, "HMApplication"

    const-string v2, "sent broadcast Intent [com.samsung.accessory.saproviders.samessage.DATA_CHANGED]"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :goto_0
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 193
    return-void

    .line 190
    :cond_0
    const-string v1, "HMApplication"

    const-string v2, "context is NULL, so we did not send broadcast Intent [com.samsung.accessory.saproviders.samessage.DATA_CHANGED]"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
