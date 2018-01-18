.class Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GetIPTask;
.super Landroid/os/AsyncTask;
.source "WifiP2pHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetIPTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;


# direct methods
.method private constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;)V
    .locals 0

    .prologue
    .line 1230
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GetIPTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;
    .param p2, "x1"    # Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$1;

    .prologue
    .line 1230
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GetIPTask;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1230
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GetIPTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "macs"    # [Ljava/lang/String;

    .prologue
    .line 1234
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v1}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getPeerIP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1235
    .local v0, "peerIP":Ljava/lang/String;
    const-string v1, "WifiP2pHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "peerIP : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1230
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GetIPTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .param p1, "peerIP"    # Ljava/lang/String;

    .prologue
    .line 1242
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1243
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GetIPTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getDataExchanger()Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->sendRequestWifiP2pIpAddress()V

    .line 1247
    :goto_0
    return-void

    .line 1245
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GetIPTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GetIPTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getCurrentCommand()Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;->getBtAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->connectSAP(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
