.class Lcom/samsung/android/hostmanager/service/HMSAPProviderService$18;
.super Ljava/lang/Object;
.source "HMSAPProviderService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/service/HMSAPProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    .prologue
    .line 17555
    iput-object p1, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$18;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 17560
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 17578
    :cond_0
    :goto_0
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 17563
    :pswitch_0
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 17564
    .local v0, "deviceId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 17565
    iget-object v4, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$18;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-static {v4, v0}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$2900(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;Ljava/lang/String;)V

    .line 17566
    iget-object v4, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$18;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    iget-object v4, v4, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sHealthHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 17567
    .local v2, "message":Landroid/os/Message;
    iget-object v4, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$18;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    iget-object v4, v4, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sHealthHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$3000()J

    move-result-wide v6

    invoke-virtual {v4, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 17570
    .end local v0    # "deviceId":Ljava/lang/String;
    .end local v2    # "message":Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 17571
    .local v1, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v1}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_0

    .line 17560
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
