.class final Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger$1;
.super Ljava/lang/Thread;
.source "MLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->mTimer:Z

    .line 235
    sget-boolean v0, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->mSwitchBuffer:Z

    invoke-static {v0}, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->startFileWrite(Z)V

    .line 237
    return-void
.end method
