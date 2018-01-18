.class Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$7;
.super Ljava/lang/Object;
.source "WifiP2pHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->processConnectionFail(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

.field final synthetic val$reason:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    .prologue
    .line 1061
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$7;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    iput-object p2, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$7;->val$reason:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$7;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection Fail. reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$7;->val$reason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->showToast(Ljava/lang/String;)V

    .line 1065
    return-void
.end method
