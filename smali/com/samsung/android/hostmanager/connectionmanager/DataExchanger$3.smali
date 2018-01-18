.class Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$3;
.super Ljava/lang/Object;
.source "DataExchanger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    .prologue
    .line 770
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$3;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 773
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[jdub] retry findPeer"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$3;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->findPeer()Z

    .line 775
    return-void
.end method
