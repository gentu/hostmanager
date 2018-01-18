.class Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;
.super Ljava/lang/Object;
.source "SaBufferPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/utils/buffer/SaBufferPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SAChunk"
.end annotation


# static fields
.field private static sTotalObtainHits:I


# instance fields
.field private bufferList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<[B>;"
        }
    .end annotation
.end field

.field private limit:I

.field private obtainHits:I

.field private recycleHits:I

.field private final size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 864
    const/4 v0, 0x0

    sput v0, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->sTotalObtainHits:I

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    const/4 v0, 0x0

    .line 872
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 873
    iput p1, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->size:I

    .line 874
    iput v0, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->obtainHits:I

    .line 875
    iput v0, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->recycleHits:I

    .line 876
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->bufferList:Ljava/util/LinkedList;

    .line 877
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->limit:I

    .line 878
    return-void
.end method

.method synthetic constructor <init>(ILcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;)V
    .locals 0

    .prologue
    .line 872
    invoke-direct {p0, p1}, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;-><init>(I)V

    return-void
.end method

.method private getDemandFactor()F
    .locals 2

    .prologue
    .line 919
    iget v0, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->recycleHits:I

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->obtainHits:I

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->obtainHits:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->recycleHits:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method private getObtainRatio()F
    .locals 2

    .prologue
    .line 915
    iget v0, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->obtainHits:I

    int-to-float v0, v0

    sget v1, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->sTotalObtainHits:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public static onObtained(Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;)V
    .locals 1
    .param p0, "chunk"    # Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;

    .prologue
    .line 881
    invoke-virtual {p0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->onObtained()V

    .line 882
    sget v0, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->sTotalObtainHits:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->sTotalObtainHits:I

    .line 883
    return-void
.end method


# virtual methods
.method declared-synchronized getBufferList()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 893
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->bufferList:Ljava/util/LinkedList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getObtainHits()I
    .locals 1

    .prologue
    .line 907
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->obtainHits:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getOrCreateBufferList()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 886
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->bufferList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 887
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->bufferList:Ljava/util/LinkedList;

    .line 889
    :cond_0
    iget-object v0, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->bufferList:Ljava/util/LinkedList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 886
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getRecycleHits()I
    .locals 1

    .prologue
    .line 911
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->recycleHits:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getSize()I
    .locals 1

    .prologue
    .line 897
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getSizeLimit()F
    .locals 3

    .prologue
    .line 901
    invoke-static {}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->access$0()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 902
    :try_start_0
    invoke-static {}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->access$1()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->getObtainRatio()F

    move-result v2

    mul-float/2addr v0, v2

    monitor-exit v1

    return v0

    .line 901
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method declared-synchronized onObtained()V
    .locals 1

    .prologue
    .line 923
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->obtainHits:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->obtainHits:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 924
    monitor-exit p0

    return-void

    .line 923
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onRecycled()Z
    .locals 3

    .prologue
    .line 927
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->recycleHits:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->recycleHits:I

    .line 928
    iget-object v1, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->bufferList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    iget v2, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->limit:I

    if-ne v1, v2, :cond_1

    .line 929
    invoke-direct {p0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->getDemandFactor()F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 930
    .local v0, "demandFactor":F
    const v1, 0x3f666666    # 0.9f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 933
    const/4 v1, 0x0

    .line 940
    .end local v0    # "demandFactor":F
    :goto_0
    monitor-exit p0

    return v1

    .line 938
    .restart local v0    # "demandFactor":F
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->limit:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->limit:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 940
    .end local v0    # "demandFactor":F
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 927
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
