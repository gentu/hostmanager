.class Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$2;
.super Ljava/lang/Object;
.source "ConnectionController.java"

# interfaces
.implements Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$IDataExchangeEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    .prologue
    .line 533
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "eventType"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 537
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[jdub] ConnectionController, onEvent() eventType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    const/16 v1, 0x100

    if-ne p1, v1, :cond_0

    .line 540
    const-string v1, "BUNDLE_CMKEY_INT_ERRORCODE"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 542
    .local v0, "errorCode":I
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEvent(), errorCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    .end local v0    # "errorCode":I
    :cond_0
    return-void
.end method
