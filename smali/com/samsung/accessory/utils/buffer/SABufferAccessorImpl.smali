.class Lcom/samsung/accessory/utils/buffer/SABufferAccessorImpl;
.super Lcom/samsung/android/sdk/accessory/SABufferAccessor;
.source "SABufferAccessorImpl.java"


# static fields
.field private static final DEFAULT_CACHE_SIZE:I = 0x100000

.field private static final DEFAULT_CACHE_SIZE_LOW_RAM:I = 0x80000

.field private static final MAX_CHUNK_SIZE:I = 0x200000


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/samsung/accessory/utils/buffer/SABufferAccessorImpl;

    invoke-direct {v0}, Lcom/samsung/accessory/utils/buffer/SABufferAccessorImpl;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/accessory/SABufferAccessor;->DEFAULT:Lcom/samsung/android/sdk/accessory/SABufferAccessor;

    .line 15
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SABufferAccessor;-><init>()V

    return-void
.end method


# virtual methods
.method protected clearCache(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 41
    invoke-static {p1}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->clearCache(I)Z

    .line 42
    return-void
.end method

.method protected dump()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->isInitialised()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-static {}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->dump()Ljava/lang/String;

    move-result-object v0

    .line 49
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Bufferpool not initialized!"

    goto :goto_0
.end method

.method protected extractFrom(Lcom/samsung/accessory/utils/buffer/SABuffer;[BII)V
    .locals 0
    .param p1, "buffer"    # Lcom/samsung/accessory/utils/buffer/SABuffer;
    .param p2, "src"    # [B
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/accessory/utils/buffer/SaBufferException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-virtual {p1, p2, p3, p4}, Lcom/samsung/accessory/utils/buffer/SABuffer;->extractFrom([BII)V

    .line 101
    return-void
.end method

.method protected extractPayload(Lcom/samsung/accessory/utils/buffer/SABuffer;)[B
    .locals 1
    .param p1, "buffer"    # Lcom/samsung/accessory/utils/buffer/SABuffer;

    .prologue
    .line 94
    invoke-virtual {p1}, Lcom/samsung/accessory/utils/buffer/SABuffer;->extractPayload()[B

    move-result-object v0

    return-object v0
.end method

.method protected getBuffer(Lcom/samsung/accessory/utils/buffer/SABuffer;)[B
    .locals 1
    .param p1, "buffer"    # Lcom/samsung/accessory/utils/buffer/SABuffer;

    .prologue
    .line 74
    invoke-virtual {p1}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getBuffer()[B

    move-result-object v0

    return-object v0
.end method

.method protected getOffset(Lcom/samsung/accessory/utils/buffer/SABuffer;)I
    .locals 1
    .param p1, "buffer"    # Lcom/samsung/accessory/utils/buffer/SABuffer;

    .prologue
    .line 79
    invoke-virtual {p1}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getOffset()I

    move-result v0

    return v0
.end method

.method protected getPayloadlength(Lcom/samsung/accessory/utils/buffer/SABuffer;)I
    .locals 1
    .param p1, "buffer"    # Lcom/samsung/accessory/utils/buffer/SABuffer;

    .prologue
    .line 89
    invoke-virtual {p1}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getPayloadLength()I

    move-result v0

    return v0
.end method

.method protected getlength(Lcom/samsung/accessory/utils/buffer/SABuffer;)I
    .locals 1
    .param p1, "buffer"    # Lcom/samsung/accessory/utils/buffer/SABuffer;

    .prologue
    .line 84
    invoke-virtual {p1}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getLength()I

    move-result v0

    return v0
.end method

.method protected initializePool(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-static {}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->isInitialised()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    :goto_0
    return-void

    .line 29
    :cond_0
    invoke-static {p1}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->isLowMemoryDevice(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 30
    const/high16 v1, 0x280000

    .line 34
    .local v1, "mCacheSize":I
    :goto_1
    new-instance v0, Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;

    .line 35
    const-string v2, "SaBufferPool-SDK"

    const/high16 v3, 0x200000

    .line 34
    invoke-direct {v0, p1, v2, v1, v3}, Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    .line 36
    .local v0, "config":Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;
    invoke-static {v0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->initialise(Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;)V

    goto :goto_0

    .line 32
    .end local v0    # "config":Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;
    .end local v1    # "mCacheSize":I
    :cond_1
    const/high16 v1, 0x700000

    .restart local v1    # "mCacheSize":I
    goto :goto_1
.end method

.method protected obtain(I)Lcom/samsung/accessory/utils/buffer/SABuffer;
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 54
    invoke-static {p1}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->obtain(I)Lcom/samsung/accessory/utils/buffer/SABuffer;

    move-result-object v0

    return-object v0
.end method

.method protected obtainExact(I)Lcom/samsung/accessory/utils/buffer/SABuffer;
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 59
    invoke-static {p1}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->obtainExact(I)Lcom/samsung/accessory/utils/buffer/SABuffer;

    move-result-object v0

    return-object v0
.end method

.method protected recycle(Lcom/samsung/accessory/utils/buffer/SABuffer;)Z
    .locals 1
    .param p1, "buffer"    # Lcom/samsung/accessory/utils/buffer/SABuffer;

    .prologue
    .line 19
    invoke-virtual {p1}, Lcom/samsung/accessory/utils/buffer/SABuffer;->recycle()Z

    move-result v0

    return v0
.end method

.method protected setOffset(Lcom/samsung/accessory/utils/buffer/SABuffer;I)V
    .locals 0
    .param p1, "buffer"    # Lcom/samsung/accessory/utils/buffer/SABuffer;
    .param p2, "offset"    # I

    .prologue
    .line 64
    invoke-virtual {p1, p2}, Lcom/samsung/accessory/utils/buffer/SABuffer;->setOffset(I)V

    .line 65
    return-void
.end method

.method protected setPayloadlength(Lcom/samsung/accessory/utils/buffer/SABuffer;I)V
    .locals 0
    .param p1, "buffer"    # Lcom/samsung/accessory/utils/buffer/SABuffer;
    .param p2, "length"    # I

    .prologue
    .line 69
    invoke-virtual {p1, p2}, Lcom/samsung/accessory/utils/buffer/SABuffer;->setPayloadLength(I)V

    .line 70
    return-void
.end method
