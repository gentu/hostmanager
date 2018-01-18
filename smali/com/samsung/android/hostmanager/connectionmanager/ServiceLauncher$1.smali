.class Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher$1;
.super Landroid/os/Handler;
.source "ServiceLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 34
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 47
    :goto_0
    return-void

    .line 37
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher;

    iget v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher;->mContentResolverRetryCount:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    .line 38
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher;->access$000(Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher;)V

    goto :goto_0

    .line 41
    :cond_0
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, " failed to initialize CM as Content Resolver is not available"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 34
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
