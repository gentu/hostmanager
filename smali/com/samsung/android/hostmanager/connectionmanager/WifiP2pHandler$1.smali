.class Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$1;
.super Ljava/lang/Object;
.source "WifiP2pHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->connect(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    .prologue
    .line 403
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->access$200(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;)V

    .line 407
    return-void
.end method
