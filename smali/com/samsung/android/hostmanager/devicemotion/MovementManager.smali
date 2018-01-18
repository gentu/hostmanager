.class public Lcom/samsung/android/hostmanager/devicemotion/MovementManager;
.super Ljava/lang/Object;
.source "MovementManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hostmanager/devicemotion/MovementManager$TimeoutHandler;
    }
.end annotation


# static fields
.field static NoMoveSensingBufferFullFlag:Z = false

.field static NoMoveSensingDataIndex:I = 0x0

.field private static TAG:Ljava/lang/String; = null

.field private static final TIMEOUT:J = 0x1f40L

.field private static final WRISTONOFF_10SEC_COUNT:J = 0x1770L

.field private static final WRISTONOFF_3SEC_COUNT:J = 0xbb8L

.field private static final WRISTONOFF_60MIN_COUNT:J = 0xea60L

.field private static final WRISTONOFF_MAX_SENSOR_DATA:I = 0x14

.field private static final WRISTONOFF_MOVEMENT_MOVE:I = 0x1

.field private static final WRISTONOFF_MOVEMENT_NOMOVE:I = 0x0

.field private static final WRONOFF_THRESHOLD_ACCELEROMETER_VARIANCE:F = 0.1f

.field private static mTimeStamp:J


# instance fields
.field NoMoveSensingData:[[F

.field private accTm:J

.field g_avgAx:F

.field g_avgAx2:F

.field g_avgAy:F

.field g_avgAy2:F

.field g_avgAz:F

.field g_avgAz2:F

.field g_moveSensingPeriod:I

.field g_nog_moveSensingPeriod:I

.field g_userStatus:I

.field private mAcc:Landroid/hardware/Sensor;

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/samsung/android/hostmanager/devicemotion/IMovementListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private pm:Landroid/os/PowerManager;

.field sensorEventListener:Landroid/hardware/SensorEventListener;

.field private timeoutHandler:Lcom/samsung/android/hostmanager/devicemotion/MovementManager$TimeoutHandler;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    const-class v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->TAG:Ljava/lang/String;

    .line 40
    sput v1, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->NoMoveSensingDataIndex:I

    .line 41
    sput-boolean v1, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->NoMoveSensingBufferFullFlag:Z

    .line 43
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->mTimeStamp:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/hostmanager/devicemotion/IMovementListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/hostmanager/devicemotion/IMovementListener;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v3, p0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->pm:Landroid/os/PowerManager;

    .line 25
    iput-object v3, p0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->accTm:J

    .line 46
    const/16 v0, 0x14

    const/4 v1, 0x3

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->NoMoveSensingData:[[F

    .line 55
    iput v2, p0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->g_nog_moveSensingPeriod:I

    .line 56
    iput v2, p0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->g_moveSensingPeriod:I

    .line 57
    iput v2, p0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->g_userStatus:I

    .line 120
    new-instance v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$1;-><init>(Lcom/samsung/android/hostmanager/devicemotion/MovementManager;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->sensorEventListener:Landroid/hardware/SensorEventListener;

    .line 297
    iput-object v3, p0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->timeoutHandler:Lcom/samsung/android/hostmanager/devicemotion/MovementManager$TimeoutHandler;

    .line 60
    iput-object p1, p0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->mContext:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->mListener:Lcom/samsung/android/hostmanager/devicemotion/IMovementListener;

    .line 62
    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .prologue
    .line 16
    sget-wide v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->mTimeStamp:J

    return-wide v0
.end method

.method static synthetic access$002(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 16
    sput-wide p0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->mTimeStamp:J

    return-wide p0
.end method

.method static synthetic access$100(Lcom/samsung/android/hostmanager/devicemotion/MovementManager;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/devicemotion/MovementManager;

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->accTm:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/samsung/android/hostmanager/devicemotion/MovementManager;J)J
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/devicemotion/MovementManager;
    .param p1, "x1"    # J

    .prologue
    .line 16
    iput-wide p1, p0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->accTm:J

    return-wide p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/hostmanager/devicemotion/MovementManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/devicemotion/MovementManager;
    .param p1, "x1"    # Z

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->handleMotionEvent(Z)V

    return-void
.end method

.method private clearHandler()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 289
    sget-object v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearHandler starts, timeoutHandler ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->timeoutHandler:Lcom/samsung/android/hostmanager/devicemotion/MovementManager$TimeoutHandler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v0, p0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->timeoutHandler:Lcom/samsung/android/hostmanager/devicemotion/MovementManager$TimeoutHandler;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->timeoutHandler:Lcom/samsung/android/hostmanager/devicemotion/MovementManager$TimeoutHandler;

    invoke-virtual {v0, v3}, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$TimeoutHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 292
    iput-object v3, p0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->timeoutHandler:Lcom/samsung/android/hostmanager/devicemotion/MovementManager$TimeoutHandler;

    .line 294
    :cond_0
    sget-object v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->TAG:Ljava/lang/String;

    const-string v1, "clearHandler ends"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    return-void
.end method

.method private handleMotionEvent(Z)V
    .locals 3
    .param p1, "motion"    # Z

    .prologue
    .line 252
    sget-object v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMotionEvent ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->unregisterSensor()V

    .line 255
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->releaseWakeLock()V

    .line 257
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->clearHandler()V

    .line 259
    iget-object v0, p0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->mListener:Lcom/samsung/android/hostmanager/devicemotion/IMovementListener;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->mListener:Lcom/samsung/android/hostmanager/devicemotion/IMovementListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/hostmanager/devicemotion/IMovementListener;->onResult(Z)V

    .line 262
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->mListener:Lcom/samsung/android/hostmanager/devicemotion/IMovementListener;

    .line 263
    return-void
.end method

.method private init_value()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 266
    sput-wide v6, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->mTimeStamp:J

    .line 267
    iput-wide v6, p0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->accTm:J

    .line 269
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    .line 270
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    const/16 v2, 0x14

    if-ge v1, v2, :cond_0

    .line 271
    iget-object v2, p0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->NoMoveSensingData:[[F

    aget-object v2, v2, v1

    aput v3, v2, v0

    .line 270
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 269
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 276
    .end local v1    # "j":I
    :cond_1
    iput v3, p0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->g_avgAx:F

    .line 277
    iput v3, p0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->g_avgAy:F

    .line 278
    iput v3, p0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->g_avgAz:F

    .line 279
    iput v3, p0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->g_avgAx2:F

    .line 280
    iput v3, p0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->g_avgAy2:F

    .line 281
    iput v3, p0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->g_avgAz2:F

    .line 283
    iput v4, p0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->g_nog_moveSensingPeriod:I

    .line 284
    iput v4, p0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->g_moveSensingPeriod:I

    .line 285
    iput v4, p0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->g_userStatus:I

    .line 286
    return-void
.end method

.method private registerSensor()V
    .locals 4

    .prologue
    .line 74
    sget-object v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->TAG:Ljava/lang/String;

    const-string v1, "registerSensor starts"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->unregisterSensor()V

    .line 76
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->init_value()V

    .line 78
    iget-object v0, p0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->pm:Landroid/os/PowerManager;

    .line 79
    iget-object v0, p0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->pm:Landroid/os/PowerManager;

    const/16 v1, 0x1a

    const-string v2, "MyWakeLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 81
    iget-object v0, p0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 83
    iget-object v0, p0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 84
    iget-object v0, p0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->mAcc:Landroid/hardware/Sensor;

    .line 86
    iget-object v0, p0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->sensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->mAcc:Landroid/hardware/Sensor;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 89
    sget-object v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->TAG:Ljava/lang/String;

    const-string v1, "registerSensor ends"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void
.end method

.method private releaseWakeLock()V
    .locals 4

    .prologue
    .line 107
    sget-object v1, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseWakeLock starts, wakeLock ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 111
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->wakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :cond_0
    :goto_0
    sget-object v1, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->TAG:Ljava/lang/String;

    const-string v2, "releaseWakeLock ends"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->TAG:Ljava/lang/String;

    const-string v2, "Exception while releasing WakeLock"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private unregisterSensor()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 93
    sget-object v1, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->TAG:Ljava/lang/String;

    const-string v2, "unregisterSensor starts"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v1, p0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_0

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->sensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :cond_0
    :goto_0
    iput-object v4, p0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->mAcc:Landroid/hardware/Sensor;

    .line 102
    iput-object v4, p0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 103
    sget-object v1, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->TAG:Ljava/lang/String;

    const-string v2, "unregisterSensor ends"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while unregister = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public isMoving()V
    .locals 2

    .prologue
    .line 65
    sget-object v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->TAG:Ljava/lang/String;

    const-string v1, "isMoving starts"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->registerSensor()V

    .line 68
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->clearHandler()V

    .line 69
    new-instance v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$TimeoutHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$TimeoutHandler;-><init>(Lcom/samsung/android/hostmanager/devicemotion/MovementManager;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->timeoutHandler:Lcom/samsung/android/hostmanager/devicemotion/MovementManager$TimeoutHandler;

    .line 70
    sget-object v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->TAG:Ljava/lang/String;

    const-string v1, "isMoving ends"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method
