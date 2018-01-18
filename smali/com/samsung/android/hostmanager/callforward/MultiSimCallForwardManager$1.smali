.class Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$1;
.super Ljava/lang/Object;
.source "MultiSimCallForwardManager.java"

# interfaces
.implements Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$CFAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->startsetCallForwarding(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;

.field final synthetic val$phone:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$1;->this$0:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;

    iput-object p2, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$1;->val$phone:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doAction()V
    .locals 6

    .prologue
    .line 213
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startsetCallForwarding :: doAction starts, getCurrentSim() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$1;->this$0:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;

    invoke-static {v2}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->access$100(Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;)Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    new-instance v0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$1;->this$0:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;

    invoke-static {v1}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->access$200(Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$1;->this$0:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;

    invoke-static {v2}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->access$300(Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$1;->this$0:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;

    iget-object v3, v3, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->mInternalListener:Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    iget-object v4, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$1;->this$0:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;

    invoke-static {v4}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->access$400(Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;)Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$1;->this$0:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;

    invoke-static {v5}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->access$100(Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;)Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;)V

    iget-object v1, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$1;->val$phone:Ljava/lang/String;

    .line 215
    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->startsetCallForwarding(Ljava/lang/String;)V

    .line 216
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "startsetCallForwarding :: doAction ends"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return-void
.end method
