.class Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$2$1;
.super Ljava/lang/Object;
.source "DataExchanger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$2;->onError(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$2;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$2$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 368
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "checkSAPConnection - start diff thread "

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$2$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$2;

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->access$1400(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;)Z

    .line 370
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "checkSAPConnection - end diff thread "

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    return-void
.end method
