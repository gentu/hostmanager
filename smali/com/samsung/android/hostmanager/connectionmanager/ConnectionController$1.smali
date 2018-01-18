.class Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$1;
.super Ljava/lang/Object;
.source "ConnectionController.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 146
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->access$000(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;)V

    .line 151
    return-void
.end method
