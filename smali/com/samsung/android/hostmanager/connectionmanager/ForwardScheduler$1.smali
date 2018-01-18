.class Lcom/samsung/android/hostmanager/connectionmanager/ForwardScheduler$1;
.super Landroid/os/Handler;
.source "ForwardScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/connectionmanager/ForwardScheduler;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/ForwardScheduler;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/ForwardScheduler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connectionmanager/ForwardScheduler;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ForwardScheduler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ForwardScheduler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 46
    return-void
.end method
