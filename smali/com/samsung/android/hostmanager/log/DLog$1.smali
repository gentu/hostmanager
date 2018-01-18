.class final Lcom/samsung/android/hostmanager/log/DLog$1;
.super Ljava/util/TimerTask;
.source "DLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/log/DLog;->sysLogging()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 113
    sget-boolean v1, Lcom/samsung/android/hostmanager/log/MLogger;->mTimer:Z

    if-nez v1, :cond_1

    .line 115
    sput v0, Lcom/samsung/android/hostmanager/log/MLogger;->mbSize:I

    .line 116
    sget-boolean v1, Lcom/samsung/android/hostmanager/log/MLogger;->mSwitchBuffer:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/samsung/android/hostmanager/log/MLogger;->mSwitchBuffer:Z

    .line 117
    new-instance v0, Lcom/samsung/android/hostmanager/log/DLog$1$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/log/DLog$1$1;-><init>(Lcom/samsung/android/hostmanager/log/DLog$1;)V

    .line 122
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/log/DLog$1$1;->start()V

    .line 124
    :cond_1
    return-void
.end method
