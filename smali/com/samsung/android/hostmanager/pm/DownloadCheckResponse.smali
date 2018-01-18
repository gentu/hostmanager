.class public Lcom/samsung/android/hostmanager/pm/DownloadCheckResponse;
.super Ljava/lang/Object;
.source "DownloadCheckResponse.java"


# instance fields
.field public appId:Ljava/lang/String;

.field public downloadURL:Ljava/lang/String;

.field public resultCode:Ljava/lang/String;

.field public versionCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "resultCode"    # Ljava/lang/String;
    .param p3, "downloadURL"    # Ljava/lang/String;
    .param p4, "versionCode"    # I

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/samsung/android/hostmanager/pm/DownloadCheckResponse;->appId:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/samsung/android/hostmanager/pm/DownloadCheckResponse;->resultCode:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/samsung/android/hostmanager/pm/DownloadCheckResponse;->downloadURL:Ljava/lang/String;

    .line 16
    iput p4, p0, Lcom/samsung/android/hostmanager/pm/DownloadCheckResponse;->versionCode:I

    .line 17
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appId :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hostmanager/pm/DownloadCheckResponse;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " resultCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hostmanager/pm/DownloadCheckResponse;->resultCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " downloadURL:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hostmanager/pm/DownloadCheckResponse;->downloadURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " versionCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/hostmanager/pm/DownloadCheckResponse;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
