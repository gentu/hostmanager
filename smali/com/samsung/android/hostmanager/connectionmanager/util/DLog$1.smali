.class final Lcom/samsung/android/hostmanager/connectionmanager/util/DLog$1;
.super Ljava/util/TimerTask;
.source "DLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->sysLogging()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 115
    sget-boolean v1, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->mTimer:Z

    if-nez v1, :cond_1

    .line 117
    sput v0, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->mbSize:I

    .line 118
    sget-boolean v1, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->mSwitchBuffer:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->mSwitchBuffer:Z

    .line 119
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog$1$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog$1$1;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/util/DLog$1;)V

    .line 124
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog$1$1;->start()V

    .line 126
    :cond_1
    return-void
.end method
