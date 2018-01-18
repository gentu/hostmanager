.class Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$3;
.super Ljava/lang/Object;
.source "MultiSimCallForwardManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->proceedNextSimSot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;

    .prologue
    .line 355
    iput-object p1, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$3;->this$0:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$3;->this$0:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->access$500(Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;)Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$CFAction;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$CFAction;->doAction()V

    .line 359
    return-void
.end method
