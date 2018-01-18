.class public Lcom/samsung/android/hostmanager/connectionmanager/ForwardScheduler;
.super Ljava/lang/Thread;
.source "ForwardScheduler.java"


# static fields
.field private static __instance:Lcom/samsung/android/hostmanager/connectionmanager/ForwardScheduler;

.field private static __mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ForwardScheduler;->__instance:Lcom/samsung/android/hostmanager/connectionmanager/ForwardScheduler;

    .line 14
    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ForwardScheduler;->__mHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 18
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/hostmanager/connectionmanager/ForwardScheduler;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ForwardScheduler;->__instance:Lcom/samsung/android/hostmanager/connectionmanager/ForwardScheduler;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/ForwardScheduler;

    invoke-direct {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ForwardScheduler;-><init>()V

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ForwardScheduler;->__instance:Lcom/samsung/android/hostmanager/connectionmanager/ForwardScheduler;

    .line 24
    :cond_0
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ForwardScheduler;->__instance:Lcom/samsung/android/hostmanager/connectionmanager/ForwardScheduler;

    return-object v0
.end method


# virtual methods
.method public StopScheduler()V
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ForwardScheduler;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ForwardScheduler;->__mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 61
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ForwardScheduler;->__mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ForwardScheduler;->__instance:Lcom/samsung/android/hostmanager/connectionmanager/ForwardScheduler;

    goto :goto_0
.end method

.method public pushSyncData(I)V
    .locals 1
    .param p1, "sequenceNumber"    # I

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ForwardScheduler;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    :cond_0
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 31
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 33
    new-instance v1, Lcom/samsung/android/hostmanager/connectionmanager/ForwardScheduler$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/hostmanager/connectionmanager/ForwardScheduler$1;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ForwardScheduler;)V

    sput-object v1, Lcom/samsung/android/hostmanager/connectionmanager/ForwardScheduler;->__mHandler:Landroid/os/Handler;

    .line 49
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
