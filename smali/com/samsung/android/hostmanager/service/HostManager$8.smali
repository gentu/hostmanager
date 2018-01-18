.class Lcom/samsung/android/hostmanager/service/HostManager$8;
.super Ljava/lang/Object;
.source "HostManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/service/HostManager;->isConnected(Ljava/lang/String;)Z
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
    .line 2514
    iput-object p1, p0, Lcom/samsung/android/hostmanager/service/HostManager$8;->this$0:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2517
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CM::isConnecting is true for 60s. set false..."

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2518
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HostManager$8;->this$0:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->access$300(Lcom/samsung/android/hostmanager/service/HostManager;)Lcom/samsung/android/hostmanager/connection/IWConnectionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HostManager$8;->this$0:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-static {v1}, Lcom/samsung/android/hostmanager/service/HostManager;->access$900(Lcom/samsung/android/hostmanager/service/HostManager;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/hostmanager/connection/IWConnectionManager;->getSASocket(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->isConnecting:Z

    .line 2519
    return-void
.end method
