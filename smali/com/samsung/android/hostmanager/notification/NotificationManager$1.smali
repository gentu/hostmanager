.class Lcom/samsung/android/hostmanager/notification/NotificationManager$1;
.super Ljava/lang/Thread;
.source "NotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/notification/NotificationManager;->init(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/notification/NotificationManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/notification/NotificationManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/notification/NotificationManager;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager$1;->this$0:Lcom/samsung/android/hostmanager/notification/NotificationManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager$1;->this$0:Lcom/samsung/android/hostmanager/notification/NotificationManager;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager$1;->this$0:Lcom/samsung/android/hostmanager/notification/NotificationManager;

    iget-object v1, v1, Lcom/samsung/android/hostmanager/notification/NotificationManager;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->access$000(Lcom/samsung/android/hostmanager/notification/NotificationManager;Landroid/content/Context;)V

    .line 164
    const-string v0, "NotificationManager"

    const-string v1, "send update activity list Intent3"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-void
.end method
