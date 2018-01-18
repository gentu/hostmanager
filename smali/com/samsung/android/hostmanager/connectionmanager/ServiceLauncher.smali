.class public Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher;
.super Landroid/content/BroadcastReceiver;
.source "ServiceLauncher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher$ServiceLauncherTask;,
        Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher$ServiceLauncherObj;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_ON:I = 0x1

.field private static final MSG_CONTENT_RESOLVER_RETRY:I = 0x1

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mBootCompContext:Landroid/content/Context;

.field private mContentResolver:Landroid/content/ContentResolver;

.field mContentResolverRetryCount:I

.field private selfHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "[CM]ServiceLauncher"

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 22
    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher;->mContentResolver:Landroid/content/ContentResolver;

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher;->mContentResolverRetryCount:I

    .line 30
    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher;->mBootCompContext:Landroid/content/Context;

    .line 32
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher$1;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher;->selfHandler:Landroid/os/Handler;

    return-void
.end method

.method private StartConnectionManagerService()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 52
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher;->TAG:Ljava/lang/String;

    const-string v3, "BOOT_COMPLETED event received"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v2, :cond_0

    .line 54
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher;->mBootCompContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher;->mContentResolver:Landroid/content/ContentResolver;

    .line 56
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v2, :cond_1

    .line 57
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Unable to retrieve ContentResolver, Trying after 1 sec delay, trial count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher;->mContentResolverRetryCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher;->selfHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 61
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher;->selfHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 89
    .end local v1    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 78
    :cond_1
    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher;->mBootCompContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .line 79
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .local v0, "cName":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher;->mBootCompContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_2

    .line 81
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not start service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_2
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher;->TAG:Ljava/lang/String;

    const-string v3, "Connection Manager Started"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher;->StartConnectionManagerService()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher;->mBootCompContext:Landroid/content/Context;

    return-object p1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 94
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher;->TAG:Ljava/lang/String;

    const-string v4, "ServiceLauncher : onReceive().."

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    if-eqz p2, :cond_0

    .line 97
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "action":Ljava/lang/String;
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "intent msg : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    new-instance v1, Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher$ServiceLauncherObj;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher$ServiceLauncherObj;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 106
    .local v1, "obj":Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher$ServiceLauncherObj;
    new-instance v2, Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher$ServiceLauncherTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher$ServiceLauncherTask;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher;Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher$1;)V

    .line 107
    .local v2, "task":Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher$ServiceLauncherTask;
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher$ServiceLauncherObj;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher$ServiceLauncherTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 108
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "obj":Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher$ServiceLauncherObj;
    .end local v2    # "task":Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher$ServiceLauncherTask;
    :goto_0
    return-void

    .line 100
    :cond_0
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher;->TAG:Ljava/lang/String;

    const-string v4, "intent is null"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
