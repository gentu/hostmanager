.class Lcom/samsung/android/hostmanager/log/Log$1$1;
.super Ljava/lang/Thread;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/log/Log$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/log/Log$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/log/Log$1;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/log/Log$1;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/samsung/android/hostmanager/log/Log$1$1;->this$0:Lcom/samsung/android/hostmanager/log/Log$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/hostmanager/log/MLogger;->mTimer:Z

    .line 161
    sget-boolean v0, Lcom/samsung/android/hostmanager/log/MLogger;->mSwitchBuffer:Z

    invoke-static {v0}, Lcom/samsung/android/hostmanager/log/MLogger;->startFileWrite(Z)V

    .line 162
    return-void
.end method
