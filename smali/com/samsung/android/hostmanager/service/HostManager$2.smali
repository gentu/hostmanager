.class Lcom/samsung/android/hostmanager/service/HostManager$2;
.super Ljava/lang/Object;
.source "HostManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/service/HostManager;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/service/HostManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/service/HostManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/service/HostManager;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/samsung/android/hostmanager/service/HostManager$2;->this$0:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HostManager$2;->this$0:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$000()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/service/HostManager;->setInitialConnectedValue(Landroid/content/Context;)V

    .line 261
    return-void
.end method
