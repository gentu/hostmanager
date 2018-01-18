.class Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher$ServiceLauncherTask;
.super Landroid/os/AsyncTask;
.source "ServiceLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceLauncherTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher$ServiceLauncherObj;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher;


# direct methods
.method private constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher$ServiceLauncherTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher;Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher;
    .param p2, "x1"    # Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher$1;

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher$ServiceLauncherTask;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 129
    check-cast p1, [Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher$ServiceLauncherObj;

    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher$ServiceLauncherTask;->doInBackground([Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher$ServiceLauncherObj;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher$ServiceLauncherObj;)Ljava/lang/Void;
    .locals 10
    .param p1, "arg"    # [Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher$ServiceLauncherObj;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 134
    aget-object v6, p1, v8

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher$ServiceLauncherObj;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 135
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ServiceLauncherTask : Received intent"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    if-nez v0, :cond_1

    .line 140
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Intent action is null"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_0
    :goto_0
    return-object v9

    .line 144
    :cond_1
    const-string v6, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 146
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher$ServiceLauncherTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher;

    aget-object v7, p1, v8

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher$ServiceLauncherObj;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher;->access$302(Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher;Landroid/content/Context;)Landroid/content/Context;

    .line 147
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher$ServiceLauncherTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher;

    invoke-static {v6}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher;->access$000(Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher;)V

    goto :goto_0

    .line 149
    :cond_2
    const-string v6, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 151
    aget-object v6, p1, v8

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher$ServiceLauncherObj;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 152
    .local v2, "context":Landroid/content/Context;
    const-string v6, "android.bluetooth.adapter.extra.STATE"

    const/high16 v7, -0x80000000

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 153
    .local v5, "state":I
    const/16 v6, 0xc

    if-ne v5, v6, :cond_0

    .line 154
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v7, " BluetoothAdapter ACTION_STATE_CHANGED (STATE_ON) event received.."

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .line 157
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .local v1, "cName":Landroid/content/ComponentName;
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v6, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    .line 159
    .local v4, "startIntent":Landroid/content/Intent;
    const-string v6, "STATE_ON"

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 161
    invoke-virtual {v2, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v6

    if-nez v6, :cond_3

    .line 162
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher;->access$100()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not start service "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_3
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Connection Manager Started"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
