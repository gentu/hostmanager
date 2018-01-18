.class public final Lcom/samsung/android/sdk/accessory/RegisterUponInstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RegisterUponInstallReceiver.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "RegisterUponInstallReceiver"

    sput-object v0, Lcom/samsung/android/sdk/accessory/RegisterUponInstallReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/samsung/android/sdk/accessory/RegisterUponInstallReceiver;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 28
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 29
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.samsung.accessory.action.REGISTER_AGENT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 30
    sget-object v4, Lcom/samsung/android/sdk/accessory/RegisterUponInstallReceiver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Received Resgister after install:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :try_start_0
    new-instance v4, Lcom/samsung/android/sdk/accessory/SASdkConfig;

    invoke-direct {v4, p1}, Lcom/samsung/android/sdk/accessory/SASdkConfig;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/RegisterUponInstallReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v2

    .line 39
    .local v2, "pendingResult":Landroid/content/BroadcastReceiver$PendingResult;
    new-instance v3, Lcom/samsung/android/sdk/accessory/SARegistrationTask;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/sdk/accessory/SARegistrationTask;-><init>(Landroid/content/Context;)V

    .line 40
    .local v3, "registrationTask":Lcom/samsung/android/sdk/accessory/SARegistrationTask;
    invoke-virtual {v3}, Lcom/samsung/android/sdk/accessory/SARegistrationTask;->prepare()Ljava/util/concurrent/Future;

    move-result-object v1

    .line 42
    .local v1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Void;>;"
    new-instance v4, Lcom/samsung/android/sdk/accessory/RegisterUponInstallReceiver$1;

    const-string v5, "RegistrationThread"

    invoke-direct {v4, p0, v5, v2, v1}, Lcom/samsung/android/sdk/accessory/RegisterUponInstallReceiver$1;-><init>(Lcom/samsung/android/sdk/accessory/RegisterUponInstallReceiver;Ljava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;Ljava/util/concurrent/Future;)V

    .line 55
    invoke-virtual {v4}, Lcom/samsung/android/sdk/accessory/RegisterUponInstallReceiver$1;->start()V

    .line 57
    invoke-virtual {v3}, Lcom/samsung/android/sdk/accessory/SARegistrationTask;->start()V

    .line 60
    .end local v1    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Void;>;"
    .end local v2    # "pendingResult":Landroid/content/BroadcastReceiver$PendingResult;
    .end local v3    # "registrationTask":Lcom/samsung/android/sdk/accessory/SARegistrationTask;
    :cond_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Lcom/samsung/android/sdk/accessory/SAException;
    sget-object v4, Lcom/samsung/android/sdk/accessory/RegisterUponInstallReceiver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SDK config initialization failed."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
