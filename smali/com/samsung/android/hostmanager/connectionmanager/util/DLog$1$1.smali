.class Lcom/samsung/android/hostmanager/connectionmanager/util/DLog$1$1;
.super Ljava/lang/Thread;
.source "DLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/connectionmanager/util/DLog$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/util/DLog$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/util/DLog$1;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connectionmanager/util/DLog$1;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog$1$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/util/DLog$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->mTimer:Z

    .line 122
    sget-boolean v0, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->mSwitchBuffer:Z

    invoke-static {v0}, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->startFileWrite(Z)V

    .line 123
    return-void
.end method
