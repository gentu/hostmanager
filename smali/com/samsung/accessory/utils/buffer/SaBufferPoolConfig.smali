.class Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;
.super Ljava/lang/Object;
.source "SaBufferPoolConfig.java"


# static fields
.field static final VERSION:Ljava/lang/String; = "1.0.2"


# instance fields
.field mCacheSize:I

.field mContext:Landroid/content/Context;

.field mIsDefault:Z

.field mLogTag:Ljava/lang/String;

.field mMaxChunkSize:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    if-nez p1, :cond_0

    .line 24
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to configure the Pool!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;->mContext:Landroid/content/Context;

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;->mIsDefault:Z

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "logTag"    # Ljava/lang/String;
    .param p3, "maxCacheSize"    # I
    .param p4, "maxChunkSize"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    if-nez p1, :cond_0

    .line 32
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to configure the Pool!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;->mLogTag:Ljava/lang/String;

    .line 36
    iput p3, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;->mCacheSize:I

    .line 37
    iput p4, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;->mMaxChunkSize:I

    .line 38
    return-void
.end method

.method static createDefault(Landroid/content/Context;)Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    new-instance v0, Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;

    invoke-direct {v0, p0}, Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
