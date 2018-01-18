.class public abstract Lcom/samsung/android/sdk/accessory/SABufferAccessor;
.super Ljava/lang/Object;
.source "SABufferAccessor.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final BUFFER_ACCESSOR_IMPL_CLASS:Ljava/lang/String; = "com.samsung.accessory.utils.buffer.SABufferAccessorImpl"

.field public static DEFAULT:Lcom/samsung/android/sdk/accessory/SABufferAccessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/samsung/android/sdk/accessory/SABufferAccessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/sdk/accessory/SABufferAccessor;->$assertionsDisabled:Z

    .line 11
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getDefault()Lcom/samsung/android/sdk/accessory/SABufferAccessor;
    .locals 6

    .prologue
    .line 14
    const-class v3, Lcom/samsung/android/sdk/accessory/SABufferAccessor;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/samsung/android/sdk/accessory/SABufferAccessor;->DEFAULT:Lcom/samsung/android/sdk/accessory/SABufferAccessor;

    if-eqz v2, :cond_0

    .line 15
    sget-object v2, Lcom/samsung/android/sdk/accessory/SABufferAccessor;->DEFAULT:Lcom/samsung/android/sdk/accessory/SABufferAccessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .local v0, "classObj":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    monitor-exit v3

    return-object v2

    .line 20
    .end local v0    # "classObj":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :try_start_1
    const-string v2, "com.samsung.accessory.utils.buffer.SABufferAccessorImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 21
    .restart local v0    # "classObj":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_1

    .line 22
    const-string v2, "com.samsung.accessory.utils.buffer.SABufferAccessorImpl"

    const/4 v4, 0x1

    .line 23
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 22
    invoke-static {v2, v4, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    :cond_1
    :try_start_2
    sget-boolean v2, Lcom/samsung/android/sdk/accessory/SABufferAccessor;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    sget-object v2, Lcom/samsung/android/sdk/accessory/SABufferAccessor;->DEFAULT:Lcom/samsung/android/sdk/accessory/SABufferAccessor;

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    const-string v4, "The DEFAULT field must be initialized"

    invoke-direct {v2, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 14
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 24
    :catch_0
    move-exception v1

    .line 25
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 26
    sget-boolean v2, Lcom/samsung/android/sdk/accessory/SABufferAccessor;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 30
    .end local v1    # "ex":Ljava/lang/ClassNotFoundException;
    :cond_2
    sget-object v2, Lcom/samsung/android/sdk/accessory/SABufferAccessor;->DEFAULT:Lcom/samsung/android/sdk/accessory/SABufferAccessor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method protected abstract clearCache(I)V
.end method

.method protected abstract dump()Ljava/lang/String;
.end method

.method protected abstract extractFrom(Lcom/samsung/accessory/utils/buffer/SABuffer;[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/accessory/utils/buffer/SaBufferException;
        }
    .end annotation
.end method

.method protected abstract extractPayload(Lcom/samsung/accessory/utils/buffer/SABuffer;)[B
.end method

.method protected abstract getBuffer(Lcom/samsung/accessory/utils/buffer/SABuffer;)[B
.end method

.method protected abstract getOffset(Lcom/samsung/accessory/utils/buffer/SABuffer;)I
.end method

.method protected abstract getPayloadlength(Lcom/samsung/accessory/utils/buffer/SABuffer;)I
.end method

.method protected abstract getlength(Lcom/samsung/accessory/utils/buffer/SABuffer;)I
.end method

.method protected abstract initializePool(Landroid/content/Context;)V
.end method

.method protected abstract obtain(I)Lcom/samsung/accessory/utils/buffer/SABuffer;
.end method

.method protected abstract obtainExact(I)Lcom/samsung/accessory/utils/buffer/SABuffer;
.end method

.method protected abstract recycle(Lcom/samsung/accessory/utils/buffer/SABuffer;)Z
.end method

.method protected abstract setOffset(Lcom/samsung/accessory/utils/buffer/SABuffer;I)V
.end method

.method protected abstract setPayloadlength(Lcom/samsung/accessory/utils/buffer/SABuffer;I)V
.end method
