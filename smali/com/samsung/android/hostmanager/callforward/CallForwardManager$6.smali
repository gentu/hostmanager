.class Lcom/samsung/android/hostmanager/callforward/CallForwardManager$6;
.super Ljava/lang/Object;
.source "CallForwardManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->startgetCallForwardingNumberWithReason(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

.field final synthetic val$reason:I


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$6;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    iput p2, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$6;->val$reason:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 344
    :try_start_0
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mIRemoteService.getCallForwardingNumberWithReason"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v1, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$6;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-static {v1}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$100(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Lcom/samsung/accessory/callprovider/ICallForwardingInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$6;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-static {v2}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$300(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Lcom/samsung/accessory/callprovider/ICallForwardingCallbackInterface$Stub;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$6;->val$reason:I

    iget-object v4, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$6;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-static {v4}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$400(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;->value()I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lcom/samsung/accessory/callprovider/ICallForwardingInterface;->getCallForwardingNumberWithReason(Lcom/samsung/accessory/callprovider/ICallForwardingCallbackInterface;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    :goto_0
    return-void

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
