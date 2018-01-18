.class Lcom/samsung/android/sdk/accessory/SARegistrationTask;
.super Ljava/lang/Object;
.source "SARegistrationTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/accessory/SARegistrationTask$TaskRunner;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SARegistrationTask"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFutureTask:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mIsRunning:Z

.field private mRegistrationTask:Lcom/samsung/android/sdk/accessory/SARegistrationTask$TaskRunner;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    if-nez p1, :cond_0

    .line 19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid context:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SARegistrationTask;->mContext:Landroid/content/Context;

    .line 22
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/android/sdk/accessory/SARegistrationTask;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SARegistrationTask;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/samsung/android/sdk/accessory/SARegistrationTask;Z)V
    .locals 0

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/samsung/android/sdk/accessory/SARegistrationTask;->mIsRunning:Z

    return-void
.end method


# virtual methods
.method declared-synchronized prepare()Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SARegistrationTask;->mRegistrationTask:Lcom/samsung/android/sdk/accessory/SARegistrationTask$TaskRunner;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SARegistrationTask;->mFutureTask:Ljava/util/concurrent/FutureTask;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/samsung/android/sdk/accessory/SARegistrationTask$TaskRunner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/accessory/SARegistrationTask$TaskRunner;-><init>(Lcom/samsung/android/sdk/accessory/SARegistrationTask;Lcom/samsung/android/sdk/accessory/SARegistrationTask$TaskRunner;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SARegistrationTask;->mRegistrationTask:Lcom/samsung/android/sdk/accessory/SARegistrationTask$TaskRunner;

    .line 27
    new-instance v0, Ljava/util/concurrent/FutureTask;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SARegistrationTask;->mRegistrationTask:Lcom/samsung/android/sdk/accessory/SARegistrationTask$TaskRunner;

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SARegistrationTask;->mFutureTask:Ljava/util/concurrent/FutureTask;

    .line 28
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SARegistrationTask;->mFutureTask:Ljava/util/concurrent/FutureTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 30
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SARegistrationTask instance cannot be reused"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized start()V
    .locals 3

    .prologue
    .line 35
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SARegistrationTask;->mRegistrationTask:Lcom/samsung/android/sdk/accessory/SARegistrationTask$TaskRunner;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SARegistrationTask;->mFutureTask:Ljava/util/concurrent/FutureTask;

    if-nez v1, :cond_1

    .line 36
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Prepare not called"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 37
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Lcom/samsung/android/sdk/accessory/SARegistrationTask;->mIsRunning:Z

    if-eqz v1, :cond_2

    .line 38
    const-string v1, "SARegistrationTask"

    const-string v2, "Registration task has already started"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Registration task is already running!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 41
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SARegistrationTask;->mFutureTask:Ljava/util/concurrent/FutureTask;

    const-string v2, "RegistreationThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 42
    .local v0, "registrationThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 43
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/sdk/accessory/SARegistrationTask;->mIsRunning:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    monitor-exit p0

    return-void
.end method
