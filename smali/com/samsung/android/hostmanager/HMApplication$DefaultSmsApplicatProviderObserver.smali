.class Lcom/samsung/android/hostmanager/HMApplication$DefaultSmsApplicatProviderObserver;
.super Landroid/database/ContentObserver;
.source "HMApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/HMApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultSmsApplicatProviderObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/HMApplication;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hostmanager/HMApplication;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/samsung/android/hostmanager/HMApplication$DefaultSmsApplicatProviderObserver;->this$0:Lcom/samsung/android/hostmanager/HMApplication;

    .line 200
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 201
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 205
    const-string v1, "HMApplication"

    const-string v2, "Sms Default application changed"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.accessory.saproviders.samessage.ACTION_DEFAULT_SMS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->access$000()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 208
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 209
    return-void
.end method
