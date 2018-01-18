.class Lcom/samsung/android/hostmanager/devicemotion/MovementManager$TimeoutHandler;
.super Landroid/os/Handler;
.source "MovementManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/devicemotion/MovementManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeoutHandler"
.end annotation


# static fields
.field private static final MSG_TIMEOUT:I = 0x22b


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/devicemotion/MovementManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/devicemotion/MovementManager;)V
    .locals 4

    .prologue
    .line 303
    iput-object p1, p0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$TimeoutHandler;->this$0:Lcom/samsung/android/hostmanager/devicemotion/MovementManager;

    .line 304
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 305
    invoke-static {}, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimeoutHandler :: setting time [8000]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const/16 v0, 0x22b

    invoke-virtual {p0, v0}, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$TimeoutHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x1f40

    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$TimeoutHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 307
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 311
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 317
    :goto_0
    return-void

    .line 313
    :pswitch_0
    invoke-static {}, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MSG_TIMEOUT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v0, p0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$TimeoutHandler;->this$0:Lcom/samsung/android/hostmanager/devicemotion/MovementManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->access$300(Lcom/samsung/android/hostmanager/devicemotion/MovementManager;Z)V

    goto :goto_0

    .line 311
    :pswitch_data_0
    .packed-switch 0x22b
        :pswitch_0
    .end packed-switch
.end method
