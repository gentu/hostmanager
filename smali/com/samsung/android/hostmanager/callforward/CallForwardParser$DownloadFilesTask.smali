.class Lcom/samsung/android/hostmanager/callforward/CallForwardParser$DownloadFilesTask;
.super Landroid/os/AsyncTask;
.source "CallForwardParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/callforward/CallForwardParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadFilesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardParser;


# direct methods
.method private constructor <init>(Lcom/samsung/android/hostmanager/callforward/CallForwardParser;)V
    .locals 0

    .prologue
    .line 461
    iput-object p1, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardParser$DownloadFilesTask;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardParser;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 461
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/callforward/CallForwardParser$DownloadFilesTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 472
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadFilesTask starts"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardParser$DownloadFilesTask;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardParser;

    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->copyCallFwdFileFromNetwork(Landroid/content/Context;)V

    .line 474
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadFilesTask ends"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 461
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/callforward/CallForwardParser$DownloadFilesTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 468
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 461
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/callforward/CallForwardParser$DownloadFilesTask;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 0
    .param p1, "progress"    # [Ljava/lang/Void;

    .prologue
    .line 464
    return-void
.end method
