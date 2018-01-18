.class Lcom/samsung/accessory/utils/buffer/SaBufferPool;
.super Ljava/lang/Object;
.source "SaBufferPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;
    }
.end annotation


# static fields
.field private static final BUFFER_ACCESS_LOCK:Ljava/lang/Object;

.field private static final BUFFER_CACHE_SIZE_DEFUALT:I = 0x400000

.field private static final CHUNK_LIMIT_DEFAULT:I = 0x1

.field private static final MAX_CHUNK_SIZE:I = 0x10400

.field private static final MAX_NUM_OF_BUFFER_AVAILABILITY_RETRY:I = 0x3

.field private static final MIN_CHUNK_DEMAND_FACTOR:F = 0.9f

.field private static final MIN_CHUNK_SIZE:I = 0x18

.field private static sBufferCacheSize:I

.field private static final sBufferRangeMap:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sCacheThresholdHigh:I

.field private static sCacheThresholdMed:I

.field private static final sChunkList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;",
            ">;"
        }
    .end annotation
.end field

.field private static sCurrentCacheSize:I

.field private static sIsInitialised:Z

.field private static sLogTag:Ljava/lang/String;

.field private static sMaxChunkSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 973
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sBufferRangeMap:Ljava/util/TreeMap;

    .line 979
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sChunkList:Landroid/util/SparseArray;

    .line 984
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->BUFFER_ACCESS_LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 944
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 946
    return-void
.end method

.method static synthetic access$0()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 984
    sget-object v0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->BUFFER_ACCESS_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1()I
    .locals 1

    .prologue
    .line 948
    sget v0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sBufferCacheSize:I

    return v0
.end method

.method private static addCustomKeys(I)V
    .locals 5
    .param p0, "val"    # I

    .prologue
    .line 837
    const/4 v3, 0x4

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    .line 838
    .local v0, "CUST_BUFF_SIZE":[I
    array-length v1, v0

    .line 839
    .local v1, "arrayLen":I
    sget-object v4, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->BUFFER_ACCESS_LOCK:Ljava/lang/Object;

    monitor-enter v4

    .line 840
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 839
    :try_start_0
    monitor-exit v4

    .line 844
    return-void

    .line 841
    :cond_0
    aget v3, v0, v2

    invoke-static {v3}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->addKey(I)Z

    .line 840
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 839
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 837
    :array_0
    .array-data 4
        0x780b
        0x800b
        0xf00b
        0x10005
    .end array-data
.end method

.method private static addKey(I)Z
    .locals 4
    .param p0, "val"    # I

    .prologue
    .line 847
    sget-object v1, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->BUFFER_ACCESS_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 848
    :try_start_0
    sget v0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sMaxChunkSize:I

    if-gt p0, v0, :cond_0

    .line 849
    sget-object v0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sChunkList:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 850
    sget-object v0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sBufferRangeMap:Ljava/util/TreeMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    sget-object v0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sChunkList:Landroid/util/SparseArray;

    new-instance v2, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;-><init>(ILcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;)V

    invoke-virtual {v0, p0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 853
    monitor-exit v1

    const/4 v0, 0x1

    .line 857
    :goto_0
    return v0

    .line 847
    :cond_0
    monitor-exit v1

    .line 857
    const/4 v0, 0x0

    goto :goto_0

    .line 847
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static clearCache(I)Z
    .locals 11
    .param p0, "level"    # I

    .prologue
    const/4 v8, 0x5

    const/4 v6, 0x0

    .line 620
    invoke-static {}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->isInitialised()Z

    move-result v7

    if-nez v7, :cond_0

    .line 621
    const-string v7, "Failed to clear cache - Bufferpool not initialised!"

    invoke-static {v8, v7}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->log(ILjava/lang/String;)V

    .line 676
    :goto_0
    return v6

    .line 631
    :cond_0
    sget-object v7, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->BUFFER_ACCESS_LOCK:Ljava/lang/Object;

    monitor-enter v7

    .line 633
    sparse-switch p0, :sswitch_data_0

    .line 647
    :try_start_0
    monitor-exit v7

    goto :goto_0

    .line 631
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 636
    :sswitch_0
    :try_start_1
    sget v2, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCacheThresholdHigh:I

    .line 650
    .local v2, "cacheThresholdVal":I
    :goto_1
    const/4 v8, 0x2

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "ClearCache["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] : Cache Size BEFORE = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCurrentCacheSize:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->log(ILjava/lang/String;)V

    .line 653
    sget v8, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCurrentCacheSize:I

    if-gt v8, v2, :cond_1

    .line 654
    const/4 v8, 0x5

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "ClearCache : Current cache size is lesser than the threshold of "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->log(ILjava/lang/String;)V

    .line 655
    monitor-exit v7

    goto :goto_0

    .line 640
    .end local v2    # "cacheThresholdVal":I
    :sswitch_1
    sget v2, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCacheThresholdMed:I

    .line 641
    .restart local v2    # "cacheThresholdVal":I
    goto :goto_1

    .line 644
    .end local v2    # "cacheThresholdVal":I
    :sswitch_2
    const/4 v2, 0x0

    .line 645
    .restart local v2    # "cacheThresholdVal":I
    goto :goto_1

    .line 658
    :cond_1
    sget-object v6, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sChunkList:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 659
    .local v5, "totChunks":I
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_2
    if-lt v4, v5, :cond_3

    .line 673
    :cond_2
    const/4 v6, 0x3

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "ClearCache : Cache Size AFTER = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v9, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCurrentCacheSize:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->log(ILjava/lang/String;)V

    .line 631
    monitor-exit v7

    .line 676
    const/4 v6, 0x1

    goto :goto_0

    .line 660
    :cond_3
    sget-object v6, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sChunkList:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;

    .line 661
    .local v3, "chunk":Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;
    invoke-virtual {v3}, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->getBufferList()Ljava/util/LinkedList;

    move-result-object v1

    .line 662
    .local v1, "bufferList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<[B>;"
    if-eqz v1, :cond_4

    .line 663
    :goto_3
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    sget v6, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCurrentCacheSize:I

    if-gt v6, v2, :cond_5

    .line 669
    :cond_4
    sget v6, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCurrentCacheSize:I

    if-le v6, v2, :cond_2

    .line 659
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 664
    :cond_5
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 665
    .local v0, "buffer":[B
    sget v6, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCurrentCacheSize:I

    array-length v8, v0

    sub-int/2addr v6, v8

    sput v6, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCurrentCacheSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 633
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0xa -> :sswitch_1
        0xf -> :sswitch_2
        0x28 -> :sswitch_0
        0x3c -> :sswitch_1
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method public static dump()Ljava/lang/String;
    .locals 10

    .prologue
    .line 731
    invoke-static {}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->isInitialised()Z

    move-result v6

    if-nez v6, :cond_0

    .line 732
    const/4 v6, 0x5

    const-string v7, "Failed to dump - Bufferpool not initialised!"

    invoke-static {v6, v7}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->log(ILjava/lang/String;)V

    .line 733
    const-string v0, " - Bufferpool not initialised! "

    .line 763
    .local v0, "bufferData":Ljava/lang/String;
    .local v4, "listSize":I
    .local v5, "temp":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 738
    .end local v0    # "bufferData":Ljava/lang/String;
    .end local v4    # "listSize":I
    .end local v5    # "temp":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 741
    .restart local v0    # "bufferData":Ljava/lang/String;
    sget-object v7, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->BUFFER_ACCESS_LOCK:Ljava/lang/Object;

    monitor-enter v7

    .line 742
    :try_start_0
    sget-object v6, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sChunkList:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 743
    .restart local v4    # "listSize":I
    if-lez v4, :cond_1

    .line 744
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_1
    if-lt v3, v4, :cond_2

    .line 759
    .end local v3    # "index":I
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sLogTag:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " ===> \""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v8, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCurrentCacheSize:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\" bytes"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 760
    .restart local v5    # "temp":Ljava/lang/String;
    const/4 v6, 0x4

    invoke-static {v6, v5}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->log(ILjava/lang/String;)V

    .line 761
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "\n "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 741
    monitor-exit v7

    goto :goto_0

    .end local v4    # "listSize":I
    .end local v5    # "temp":Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 745
    .restart local v3    # "index":I
    .restart local v4    # "listSize":I
    :cond_2
    :try_start_1
    sget-object v6, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sChunkList:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;

    .line 746
    .local v2, "chunk":Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;
    if-eqz v2, :cond_3

    .line 747
    invoke-virtual {v2}, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->getBufferList()Ljava/util/LinkedList;

    move-result-object v1

    .line 748
    .local v1, "bufferList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<[B>;"
    if-eqz v1, :cond_3

    .line 749
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Buffer \'"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->getSize()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\' x "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " = \""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 750
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v8

    invoke-virtual {v2}, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->getSize()I

    move-result v9

    mul-int/2addr v8, v9

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\" bytes "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "[ Obtained "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 751
    invoke-virtual {v2}, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->getObtainHits()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " & Recycled "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->getRecycleHits()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 752
    const-string v8, " times ]"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 749
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 753
    .restart local v5    # "temp":Ljava/lang/String;
    const/4 v6, 0x2

    invoke-static {v6, v5}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->log(ILjava/lang/String;)V

    .line 754
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "\n "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 744
    .end local v1    # "bufferList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<[B>;"
    .end local v5    # "temp":Ljava/lang/String;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1
.end method

.method private static getCeilingSize(I)I
    .locals 3
    .param p0, "size"    # I

    .prologue
    .line 776
    sget-object v1, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sBufferRangeMap:Ljava/util/TreeMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 777
    .local v0, "key":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .end local p0    # "size":I
    :goto_0
    return p0

    .restart local p0    # "size":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0
.end method

.method protected static getChunk(I)Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;
    .locals 2
    .param p0, "size"    # I

    .prologue
    .line 796
    sget-object v1, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->BUFFER_ACCESS_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 797
    :try_start_0
    sget-object v0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sChunkList:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;

    monitor-exit v1

    return-object v0

    .line 796
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getCurrentCacheSize()I
    .locals 2

    .prologue
    .line 767
    invoke-static {}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->isInitialised()Z

    move-result v0

    if-nez v0, :cond_0

    .line 768
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Bufferpool not initialised!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 770
    :cond_0
    sget-object v1, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->BUFFER_ACCESS_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 771
    :try_start_0
    sget v0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCurrentCacheSize:I

    monitor-exit v1

    return v0

    .line 770
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getFloorSize(I)I
    .locals 3
    .param p0, "size"    # I

    .prologue
    .line 781
    sget-object v1, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sBufferRangeMap:Ljava/util/TreeMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 782
    .local v0, "key":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .end local p0    # "size":I
    :goto_0
    return p0

    .restart local p0    # "size":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0
.end method

.method private static getNextBigSize(I)I
    .locals 3
    .param p0, "size"    # I

    .prologue
    .line 786
    sget-object v1, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sBufferRangeMap:Ljava/util/TreeMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 787
    .local v0, "key":Ljava/lang/Integer;
    if-nez v0, :cond_0

    const v1, 0x7fffffff

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method private static getNextSmallSize(I)I
    .locals 3
    .param p0, "size"    # I

    .prologue
    .line 791
    sget-object v1, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sBufferRangeMap:Ljava/util/TreeMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->lowerKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 792
    .local v0, "key":Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/high16 v1, -0x80000000

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public static initialise(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-static {p0}, Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;->createDefault(Landroid/content/Context;)Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->initialise(Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;)V

    .line 54
    return-void
.end method

.method public static initialise(Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;)V
    .locals 8
    .param p0, "config"    # Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;

    .prologue
    const/16 v7, 0x18

    const v6, 0x10400

    .line 68
    invoke-static {}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->isInitialised()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 69
    const/4 v3, 0x5

    const-string v4, "BufferPool already initialised!"

    invoke-static {v3, v4}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->log(ILjava/lang/String;)V

    .line 121
    :goto_0
    return-void

    .line 72
    :cond_0
    if-nez p0, :cond_1

    .line 73
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Failed to initialise the Bufferpool!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 75
    :cond_1
    sget-object v4, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->BUFFER_ACCESS_LOCK:Ljava/lang/Object;

    monitor-enter v4

    .line 76
    const v1, 0x10400

    .line 77
    .local v1, "maxChunkSlabSize":I
    const/4 v3, 0x0

    :try_start_0
    sput v3, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCurrentCacheSize:I

    .line 79
    iget-boolean v3, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;->mIsDefault:Z

    if-eqz v3, :cond_4

    .line 80
    const-class v3, Lcom/samsung/accessory/utils/buffer/SaBufferPool;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sLogTag:Ljava/lang/String;

    .line 81
    iget-object v3, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->isLowMemoryDevice(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 82
    const/high16 v3, 0x200000

    sput v3, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sBufferCacheSize:I

    .line 86
    :goto_1
    const v3, 0x10400

    sput v3, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sMaxChunkSize:I

    .line 99
    :cond_2
    :goto_2
    sget v3, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sBufferCacheSize:I

    div-int/lit8 v3, v3, 0x4

    sput v3, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCacheThresholdHigh:I

    .line 100
    sget v3, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sBufferCacheSize:I

    div-int/lit8 v3, v3, 0x2

    sput v3, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCacheThresholdMed:I

    .line 102
    const/16 v0, 0x18

    .local v0, "index":I
    const/16 v2, 0x24

    .local v2, "subIndex":I
    :goto_3
    if-le v0, v1, :cond_7

    .line 111
    sget v3, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sMaxChunkSize:I

    invoke-static {v3}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->addCustomKeys(I)V

    .line 112
    sget v3, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sMaxChunkSize:I

    if-le v3, v6, :cond_a

    .line 113
    sget v3, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sMaxChunkSize:I

    invoke-static {v3}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->addKey(I)Z

    .line 117
    :goto_4
    const/4 v3, 0x1

    sput-boolean v3, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sIsInitialised:Z

    .line 118
    const/4 v3, 0x4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "BufferPool[v1.0.2] initialised with capacity "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    sget v6, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sBufferCacheSize:I

    const/high16 v7, 0x100000

    div-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "MB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 118
    invoke-static {v3, v5}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->log(ILjava/lang/String;)V

    .line 75
    monitor-exit v4

    goto :goto_0

    .end local v0    # "index":I
    .end local v2    # "subIndex":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 84
    :cond_3
    const/high16 v3, 0x400000

    :try_start_1
    sput v3, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sBufferCacheSize:I

    goto :goto_1

    .line 88
    :cond_4
    iget v3, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;->mMaxChunkSize:I

    if-lt v3, v7, :cond_5

    iget v3, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;->mCacheSize:I

    iget v5, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;->mMaxChunkSize:I

    if-ge v3, v5, :cond_6

    .line 89
    :cond_5
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to initialise the Bufferpool! [Cache size="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;->mCacheSize:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 90
    const-string v6, "; Max chunk size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;->mMaxChunkSize:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 89
    invoke-direct {v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 92
    :cond_6
    iget-object v3, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;->mLogTag:Ljava/lang/String;

    sput-object v3, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sLogTag:Ljava/lang/String;

    .line 93
    iget v3, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;->mCacheSize:I

    sput v3, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sBufferCacheSize:I

    .line 94
    iget v3, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;->mMaxChunkSize:I

    sput v3, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sMaxChunkSize:I

    .line 95
    sget v3, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sMaxChunkSize:I

    if-gt v3, v6, :cond_2

    .line 96
    sget v1, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sMaxChunkSize:I

    goto/16 :goto_2

    .line 103
    .restart local v0    # "index":I
    .restart local v2    # "subIndex":I
    :cond_7
    if-gt v0, v1, :cond_8

    .line 104
    invoke-static {v0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->addKey(I)Z

    .line 106
    :cond_8
    if-eq v0, v7, :cond_9

    if-gt v2, v1, :cond_9

    .line 107
    invoke-static {v2}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->addKey(I)Z

    .line 102
    :cond_9
    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v2, v2, 0x2

    goto/16 :goto_3

    .line 115
    :cond_a
    invoke-static {v1}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->addKey(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_4
.end method

.method public static isInitialised()Z
    .locals 2

    .prologue
    .line 127
    sget-object v1, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->BUFFER_ACCESS_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 128
    :try_start_0
    sget-boolean v0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sIsInitialised:Z

    monitor-exit v1

    return v0

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static isLowMemoryDevice(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 817
    const/16 v0, 0x80

    .line 818
    .local v0, "APP_HEAP_THRESHHOLD_LIMIT":I
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 819
    .local v1, "am":Landroid/app/ActivityManager;
    if-nez v1, :cond_1

    .line 820
    const/4 v3, 0x5

    const-string v4, "isLowMemoryDevice(): ActivityManager is null!"

    invoke-static {v3, v4}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->log(ILjava/lang/String;)V

    .line 826
    :cond_0
    :goto_0
    return v2

    .line 823
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_2

    .line 824
    invoke-virtual {v1}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v2

    goto :goto_0

    .line 826
    :cond_2
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v3

    const/16 v4, 0x80

    if-lt v3, v4, :cond_0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static log(ILjava/lang/String;)V
    .locals 1
    .param p0, "level"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 259
    packed-switch p0, :pswitch_data_0

    .line 278
    :goto_0
    return-void

    .line 261
    :pswitch_0
    sget-object v0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sLogTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 264
    :pswitch_1
    sget-object v0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sLogTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 267
    :pswitch_2
    sget-object v0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sLogTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 270
    :pswitch_3
    sget-object v0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sLogTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 273
    :pswitch_4
    sget-object v0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sLogTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 259
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static obtain(I)Lcom/samsung/accessory/utils/buffer/SABuffer;
    .locals 2
    .param p0, "size"    # I

    .prologue
    .line 420
    invoke-static {}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->isInitialised()Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Bufferpool not initialised!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 423
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->obtain(IZ)Lcom/samsung/accessory/utils/buffer/SABuffer;

    move-result-object v0

    return-object v0
.end method

.method private static obtain(IZ)Lcom/samsung/accessory/utils/buffer/SABuffer;
    .locals 9
    .param p0, "size"    # I
    .param p1, "isExact"    # Z

    .prologue
    .line 450
    sget-object v6, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->BUFFER_ACCESS_LOCK:Ljava/lang/Object;

    monitor-enter v6

    .line 451
    :try_start_0
    sget v5, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sMaxChunkSize:I

    if-le p0, v5, :cond_0

    .line 452
    const/4 v5, 0x5

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Buffer \'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' is not matching with the pool sizes! creating new..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->log(ILjava/lang/String;)V

    .line 453
    new-instance v4, Lcom/samsung/accessory/utils/buffer/SABuffer;

    new-array v5, p0, [B

    invoke-direct {v4, v5, p0}, Lcom/samsung/accessory/utils/buffer/SABuffer;-><init>([BI)V

    monitor-exit v6

    .line 489
    :goto_0
    return-object v4

    .line 456
    :cond_0
    if-eqz p1, :cond_3

    move v0, p0

    .line 457
    .local v0, "bufferCacheSize":I
    :goto_1
    move v1, v0

    .line 459
    .local v1, "bufferCacheSizeRef":I
    invoke-static {v0, p0, p1}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->obtainChunk(IIZ)Lcom/samsung/accessory/utils/buffer/SABuffer;

    move-result-object v4

    .line 460
    .local v4, "sABuffer":Lcom/samsung/accessory/utils/buffer/SABuffer;
    if-nez v4, :cond_2

    .line 462
    const/4 v3, 0x1

    .line 464
    .local v3, "loopCount":I
    :goto_2
    if-nez v4, :cond_1

    const/4 v5, 0x3

    if-le v3, v5, :cond_4

    .line 480
    :cond_1
    if-nez v4, :cond_2

    .line 482
    new-instance v4, Lcom/samsung/accessory/utils/buffer/SABuffer;

    .end local v4    # "sABuffer":Lcom/samsung/accessory/utils/buffer/SABuffer;
    new-array v5, v1, [B

    invoke-direct {v4, v5, p0}, Lcom/samsung/accessory/utils/buffer/SABuffer;-><init>([BI)V

    .line 483
    .restart local v4    # "sABuffer":Lcom/samsung/accessory/utils/buffer/SABuffer;
    invoke-static {v1}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->getChunk(I)Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;

    move-result-object v2

    .line 484
    .local v2, "chunk":Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;
    if-eqz v2, :cond_2

    .line 485
    invoke-static {v2}, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->onObtained(Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;)V

    .line 489
    .end local v2    # "chunk":Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;
    .end local v3    # "loopCount":I
    :cond_2
    monitor-exit v6

    goto :goto_0

    .line 450
    .end local v0    # "bufferCacheSize":I
    .end local v1    # "bufferCacheSizeRef":I
    .end local v4    # "sABuffer":Lcom/samsung/accessory/utils/buffer/SABuffer;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 456
    :cond_3
    :try_start_1
    invoke-static {p0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->getCeilingSize(I)I

    move-result v0

    goto :goto_1

    .line 465
    .restart local v0    # "bufferCacheSize":I
    .restart local v1    # "bufferCacheSizeRef":I
    .restart local v3    # "loopCount":I
    .restart local v4    # "sABuffer":Lcom/samsung/accessory/utils/buffer/SABuffer;
    :cond_4
    if-eqz p1, :cond_5

    invoke-static {p0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->getCeilingSize(I)I

    move-result v5

    if-eq p0, v5, :cond_5

    .line 466
    invoke-static {v0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->getNextSmallSize(I)I

    move-result v0

    .line 471
    :goto_3
    const/16 v5, 0x18

    if-lt v0, v5, :cond_1

    const v5, 0x10400

    if-gt v0, v5, :cond_1

    .line 472
    sget v5, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sMaxChunkSize:I

    if-gt v0, v5, :cond_1

    .line 476
    invoke-static {v0, p0, p1}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->obtainChunk(IIZ)Lcom/samsung/accessory/utils/buffer/SABuffer;

    move-result-object v4

    .line 477
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 468
    :cond_5
    invoke-static {v0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->getNextBigSize(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_3
.end method

.method private static obtainChunk(IIZ)Lcom/samsung/accessory/utils/buffer/SABuffer;
    .locals 9
    .param p0, "bufferCacheSize"    # I
    .param p1, "reqSize"    # I
    .param p2, "isExact"    # Z

    .prologue
    const/4 v6, 0x0

    .line 495
    const/4 v1, 0x0

    .line 497
    .local v1, "buffer":[B
    const/4 v4, 0x0

    .line 501
    .local v4, "sABuffer":Lcom/samsung/accessory/utils/buffer/SABuffer;
    sget-object v7, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->BUFFER_ACCESS_LOCK:Ljava/lang/Object;

    monitor-enter v7

    .line 502
    :try_start_0
    invoke-static {p0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->getChunk(I)Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;

    move-result-object v3

    .line 504
    .local v3, "chunk":Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;
    if-nez v3, :cond_0

    .line 505
    monitor-exit v7

    .line 535
    :goto_0
    return-object v6

    .line 508
    :cond_0
    invoke-virtual {v3}, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->getBufferList()Ljava/util/LinkedList;

    move-result-object v2

    .line 509
    .local v2, "bufferList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<[B>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 510
    :cond_1
    monitor-exit v7

    goto :goto_0

    .line 501
    .end local v2    # "bufferList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<[B>;"
    .end local v3    # "chunk":Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 513
    .restart local v2    # "bufferList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<[B>;"
    .restart local v3    # "chunk":Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;
    :cond_2
    if-eqz p2, :cond_6

    .line 514
    if-ne p0, p1, :cond_5

    .line 515
    :try_start_1
    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    array-length v6, v6

    if-ne v6, p1, :cond_3

    .line 516
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, [B

    move-object v1, v0

    .line 527
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 528
    sget v6, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCurrentCacheSize:I

    array-length v8, v1

    sub-int/2addr v6, v8

    sput v6, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCurrentCacheSize:I

    .line 531
    invoke-static {v3}, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->onObtained(Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;)V

    .line 532
    new-instance v5, Lcom/samsung/accessory/utils/buffer/SABuffer;

    invoke-direct {v5, v1, p1}, Lcom/samsung/accessory/utils/buffer/SABuffer;-><init>([BI)V

    .end local v4    # "sABuffer":Lcom/samsung/accessory/utils/buffer/SABuffer;
    .local v5, "sABuffer":Lcom/samsung/accessory/utils/buffer/SABuffer;
    move-object v4, v5

    .line 535
    .end local v5    # "sABuffer":Lcom/samsung/accessory/utils/buffer/SABuffer;
    .restart local v4    # "sABuffer":Lcom/samsung/accessory/utils/buffer/SABuffer;
    :cond_4
    monitor-exit v7

    move-object v6, v4

    goto :goto_0

    .line 519
    :cond_5
    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    array-length v6, v6

    if-ne v6, p1, :cond_3

    .line 520
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, [B

    move-object v1, v0

    .line 523
    goto :goto_1

    .line 524
    :cond_6
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, [B

    move-object v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public static obtainExact(I)Lcom/samsung/accessory/utils/buffer/SABuffer;
    .locals 2
    .param p0, "size"    # I

    .prologue
    .line 437
    invoke-static {}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->isInitialised()Z

    move-result v0

    if-nez v0, :cond_0

    .line 438
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Bufferpool not initialised!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->obtain(IZ)Lcom/samsung/accessory/utils/buffer/SABuffer;

    move-result-object v0

    return-object v0
.end method

.method public static recycle([B)Z
    .locals 11
    .param p0, "buffer"    # [B

    .prologue
    const/4 v8, 0x5

    const/4 v6, 0x0

    .line 548
    invoke-static {}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->isInitialised()Z

    move-result v7

    if-nez v7, :cond_0

    .line 549
    const-string v7, "Failed to recycle buffer - Bufferpool not initialised!"

    invoke-static {v8, v7}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->log(ILjava/lang/String;)V

    .line 604
    :goto_0
    return v6

    .line 552
    :cond_0
    if-nez p0, :cond_1

    .line 553
    const-string v7, "Cannot recycle null buffer!"

    invoke-static {v8, v7}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->log(ILjava/lang/String;)V

    goto :goto_0

    .line 556
    :cond_1
    array-length v5, p0

    .line 557
    .local v5, "size":I
    sget-object v7, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->BUFFER_ACCESS_LOCK:Ljava/lang/Object;

    monitor-enter v7

    .line 558
    const/16 v8, 0x18

    if-lt v5, v8, :cond_2

    :try_start_0
    sget v8, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sMaxChunkSize:I

    if-le v5, v8, :cond_3

    .line 559
    :cond_2
    const/4 v8, 0x5

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Cannot recycle buffer \'"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\', Non-matcing size!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->log(ILjava/lang/String;)V

    .line 560
    monitor-exit v7

    goto :goto_0

    .line 557
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_3
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 566
    invoke-static {v5}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->getFloorSize(I)I

    move-result v0

    .line 567
    .local v0, "bufferCacheSize":I
    sget-object v7, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->BUFFER_ACCESS_LOCK:Ljava/lang/Object;

    monitor-enter v7

    .line 568
    :try_start_2
    invoke-static {v0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->getChunk(I)Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;

    move-result-object v2

    .line 569
    .local v2, "chunk":Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;
    if-eqz v2, :cond_8

    .line 570
    invoke-virtual {v2}, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->getOrCreateBufferList()Ljava/util/LinkedList;

    move-result-object v1

    .line 572
    .local v1, "bufferList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<[B>;"
    invoke-virtual {v2}, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->onRecycled()Z

    move-result v4

    .line 573
    .local v4, "recycle":Z
    if-nez v4, :cond_4

    .line 574
    monitor-exit v7

    goto :goto_0

    .line 567
    .end local v1    # "bufferList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<[B>;"
    .end local v2    # "chunk":Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;
    .end local v4    # "recycle":Z
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    .line 577
    .restart local v1    # "bufferList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<[B>;"
    .restart local v2    # "chunk":Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;
    .restart local v4    # "recycle":Z
    :cond_4
    :try_start_3
    sget v8, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCurrentCacheSize:I

    add-int/2addr v8, v5

    sget v9, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sBufferCacheSize:I

    if-le v8, v9, :cond_6

    .line 579
    invoke-virtual {v2}, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->getSizeLimit()F

    move-result v8

    float-to-int v8, v8

    div-int v3, v8, v0

    .line 580
    .local v3, "chunkCountLimit":I
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-lt v8, v3, :cond_5

    .line 581
    const/4 v8, 0x5

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Cannot recycle buffer \'"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\', Buffer chunk count("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 582
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") exceeded the limit"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 581
    invoke-static {v8, v9}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->log(ILjava/lang/String;)V

    .line 583
    monitor-exit v7

    goto/16 :goto_0

    .line 585
    :cond_5
    invoke-static {}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->stabilizePool()I

    .line 586
    sget v8, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCurrentCacheSize:I

    add-int/2addr v8, v5

    sget v9, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sBufferCacheSize:I

    if-le v8, v9, :cond_6

    .line 587
    const/4 v8, 0x5

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Cannot recycle buffer \'"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\', Buffer cache limit exceeded!!!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->log(ILjava/lang/String;)V

    .line 588
    monitor-exit v7

    goto/16 :goto_0

    .line 592
    .end local v3    # "chunkCountLimit":I
    :cond_6
    if-ne v0, v5, :cond_7

    .line 593
    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 598
    :goto_1
    sget v6, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCurrentCacheSize:I

    add-int/2addr v6, v5

    sput v6, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCurrentCacheSize:I

    .line 601
    monitor-exit v7

    const/4 v6, 0x1

    goto/16 :goto_0

    .line 595
    :cond_7
    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_1

    .line 567
    .end local v1    # "bufferList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<[B>;"
    .end local v4    # "recycle":Z
    :cond_8
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0
.end method

.method private static stabilizePool()I
    .locals 12

    .prologue
    .line 695
    sget-object v9, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->BUFFER_ACCESS_LOCK:Ljava/lang/Object;

    monitor-enter v9

    .line 696
    :try_start_0
    sget v3, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCurrentCacheSize:I

    .line 698
    .local v3, "currCacheSizeRef":I
    sget-object v8, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sChunkList:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 699
    .local v7, "totChunks":I
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_0
    if-lt v5, v7, :cond_0

    .line 722
    const/4 v8, 0x5

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Pool Stabilized; Cache size reduced from  "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " -> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCurrentCacheSize:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->log(ILjava/lang/String;)V

    .line 723
    sget v8, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCurrentCacheSize:I

    sub-int v8, v3, v8

    monitor-exit v9

    return v8

    .line 700
    :cond_0
    sget-object v8, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sChunkList:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;

    .line 701
    .local v2, "chunk":Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;
    if-eqz v2, :cond_2

    .line 702
    invoke-virtual {v2}, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->getSizeLimit()F

    move-result v8

    invoke-virtual {v2}, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->getSize()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v8, v10

    float-to-int v6, v8

    .line 703
    .local v6, "permittedCount":I
    invoke-virtual {v2}, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->getBufferList()Ljava/util/LinkedList;

    move-result-object v1

    .line 704
    .local v1, "bufferList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<[B>;"
    if-nez v1, :cond_3

    const/4 v4, 0x0

    .line 713
    .local v4, "currentCount":I
    :cond_1
    :goto_1
    if-gt v4, v6, :cond_4

    .line 699
    .end local v1    # "bufferList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<[B>;"
    .end local v4    # "currentCount":I
    .end local v6    # "permittedCount":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 704
    .restart local v1    # "bufferList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<[B>;"
    .restart local v6    # "permittedCount":I
    :cond_3
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v4

    goto :goto_1

    .line 714
    .restart local v4    # "currentCount":I
    :cond_4
    if-eqz v1, :cond_1

    .line 715
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 716
    .local v0, "buffer":[B
    sget v8, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCurrentCacheSize:I

    array-length v10, v0

    sub-int/2addr v8, v10

    sput v8, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCurrentCacheSize:I

    .line 717
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 695
    .end local v0    # "buffer":[B
    .end local v1    # "bufferList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<[B>;"
    .end local v2    # "chunk":Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;
    .end local v4    # "currentCount":I
    .end local v5    # "index":I
    .end local v6    # "permittedCount":I
    .end local v7    # "totChunks":I
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method public static testClearCache(I)Z
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 808
    invoke-static {p0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->clearCache(I)Z

    move-result v0

    return v0
.end method

.method public static wrapPayload(II[BI)Lcom/samsung/accessory/utils/buffer/SABuffer;
    .locals 3
    .param p0, "payloadOffset"    # I
    .param p1, "payloadLength"    # I
    .param p2, "payload"    # [B
    .param p3, "offset"    # I

    .prologue
    .line 182
    invoke-static {}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->isInitialised()Z

    move-result v1

    if-nez v1, :cond_0

    .line 183
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Bufferpool not initialised!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    :cond_0
    add-int v1, p1, p3

    invoke-static {v1}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->obtain(I)Lcom/samsung/accessory/utils/buffer/SABuffer;

    move-result-object v0

    .line 186
    .local v0, "objSABuffer":Lcom/samsung/accessory/utils/buffer/SABuffer;
    invoke-virtual {v0, p3}, Lcom/samsung/accessory/utils/buffer/SABuffer;->setOffset(I)V

    .line 187
    invoke-virtual {v0, p1}, Lcom/samsung/accessory/utils/buffer/SABuffer;->setPayloadLength(I)V

    .line 188
    invoke-virtual {v0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getBuffer()[B

    move-result-object v1

    invoke-static {p2, p0, v1, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 189
    return-object v0
.end method

.method public static wrapPayload(Lcom/samsung/accessory/utils/buffer/SABuffer;I)Lcom/samsung/accessory/utils/buffer/SABuffer;
    .locals 5
    .param p0, "buffer"    # Lcom/samsung/accessory/utils/buffer/SABuffer;
    .param p1, "offset"    # I

    .prologue
    .line 363
    invoke-static {}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->isInitialised()Z

    move-result v1

    if-nez v1, :cond_0

    .line 364
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Bufferpool not initialised!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 366
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getLength()I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {v1}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->obtain(I)Lcom/samsung/accessory/utils/buffer/SABuffer;

    move-result-object v0

    .line 367
    .local v0, "objSABuffer":Lcom/samsung/accessory/utils/buffer/SABuffer;
    invoke-virtual {v0, p1}, Lcom/samsung/accessory/utils/buffer/SABuffer;->setOffset(I)V

    .line 368
    invoke-virtual {p0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getLength()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/utils/buffer/SABuffer;->setPayloadLength(I)V

    .line 369
    invoke-virtual {p0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getBuffer()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getBuffer()[B

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getLength()I

    move-result v4

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 370
    invoke-virtual {p0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->recycle()Z

    .line 371
    return-object v0
.end method

.method public static wrapPayload(Lcom/samsung/accessory/utils/buffer/SABuffer;II)Lcom/samsung/accessory/utils/buffer/SABuffer;
    .locals 5
    .param p0, "buffer"    # Lcom/samsung/accessory/utils/buffer/SABuffer;
    .param p1, "offset"    # I
    .param p2, "trailingBufSize"    # I

    .prologue
    .line 395
    invoke-static {}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->isInitialised()Z

    move-result v1

    if-nez v1, :cond_0

    .line 396
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Bufferpool not initialised!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 398
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getLength()I

    move-result v1

    add-int/2addr v1, p1

    add-int/2addr v1, p2

    invoke-static {v1}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->obtain(I)Lcom/samsung/accessory/utils/buffer/SABuffer;

    move-result-object v0

    .line 399
    .local v0, "objSABuffer":Lcom/samsung/accessory/utils/buffer/SABuffer;
    invoke-virtual {v0, p1}, Lcom/samsung/accessory/utils/buffer/SABuffer;->setOffset(I)V

    .line 400
    invoke-virtual {p0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getLength()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/utils/buffer/SABuffer;->setPayloadLength(I)V

    .line 401
    invoke-virtual {p0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getBuffer()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getBuffer()[B

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getLength()I

    move-result v4

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 402
    invoke-virtual {p0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->recycle()Z

    .line 403
    return-object v0
.end method

.method public static wrapPayload([BI)Lcom/samsung/accessory/utils/buffer/SABuffer;
    .locals 4
    .param p0, "payload"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 150
    invoke-static {}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->isInitialised()Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Bufferpool not initialised!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 153
    :cond_0
    array-length v1, p0

    add-int/2addr v1, p1

    invoke-static {v1}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->obtain(I)Lcom/samsung/accessory/utils/buffer/SABuffer;

    move-result-object v0

    .line 154
    .local v0, "objSABuffer":Lcom/samsung/accessory/utils/buffer/SABuffer;
    invoke-virtual {v0, p1}, Lcom/samsung/accessory/utils/buffer/SABuffer;->setOffset(I)V

    .line 155
    array-length v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/utils/buffer/SABuffer;->setPayloadLength(I)V

    .line 156
    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getBuffer()[B

    move-result-object v2

    array-length v3, p0

    invoke-static {p0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    return-object v0
.end method

.method public static wrapPayload([BII)Lcom/samsung/accessory/utils/buffer/SABuffer;
    .locals 4
    .param p0, "payload"    # [B
    .param p1, "offset"    # I
    .param p2, "trailingBufSize"    # I

    .prologue
    .line 300
    invoke-static {}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->isInitialised()Z

    move-result v1

    if-nez v1, :cond_0

    .line 301
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Bufferpool not initialised!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 303
    :cond_0
    array-length v1, p0

    add-int/2addr v1, p1

    add-int/2addr v1, p2

    invoke-static {v1}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->obtain(I)Lcom/samsung/accessory/utils/buffer/SABuffer;

    move-result-object v0

    .line 304
    .local v0, "objSABuffer":Lcom/samsung/accessory/utils/buffer/SABuffer;
    invoke-virtual {v0, p1}, Lcom/samsung/accessory/utils/buffer/SABuffer;->setOffset(I)V

    .line 305
    array-length v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/utils/buffer/SABuffer;->setPayloadLength(I)V

    .line 306
    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getBuffer()[B

    move-result-object v2

    array-length v3, p0

    invoke-static {p0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 307
    return-object v0
.end method

.method public static wrapPayload([BIIII)Lcom/samsung/accessory/utils/buffer/SABuffer;
    .locals 3
    .param p0, "payload"    # [B
    .param p1, "payloadOffset"    # I
    .param p2, "payloadLength"    # I
    .param p3, "offset"    # I
    .param p4, "trailingBufSize"    # I

    .prologue
    .line 334
    invoke-static {}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->isInitialised()Z

    move-result v1

    if-nez v1, :cond_0

    .line 335
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Bufferpool not initialised!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 337
    :cond_0
    add-int v1, p2, p3

    add-int/2addr v1, p4

    invoke-static {v1}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->obtain(I)Lcom/samsung/accessory/utils/buffer/SABuffer;

    move-result-object v0

    .line 338
    .local v0, "objSABuffer":Lcom/samsung/accessory/utils/buffer/SABuffer;
    invoke-virtual {v0, p3}, Lcom/samsung/accessory/utils/buffer/SABuffer;->setOffset(I)V

    .line 339
    invoke-virtual {v0, p2}, Lcom/samsung/accessory/utils/buffer/SABuffer;->setPayloadLength(I)V

    .line 340
    invoke-virtual {v0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getBuffer()[B

    move-result-object v1

    invoke-static {p0, p1, v1, p3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 341
    return-object v0
.end method

.method public static wrapPayloadInPlace([BIIII)Lcom/samsung/accessory/utils/buffer/SABuffer;
    .locals 8
    .param p0, "payload"    # [B
    .param p1, "payloadOffset"    # I
    .param p2, "payloadLength"    # I
    .param p3, "headerLen"    # I
    .param p4, "footerLen"    # I

    .prologue
    .line 212
    invoke-static {}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->isInitialised()Z

    move-result v5

    if-nez v5, :cond_0

    .line 213
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Bufferpool not initialised!"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 215
    :cond_0
    if-ge p1, p3, :cond_3

    .line 221
    add-int v1, p1, p2

    .line 222
    .local v1, "endIndex":I
    sub-int v0, p3, p1

    .line 224
    .local v0, "diff":I
    array-length v5, p0

    add-int v6, v1, v0

    if-lt v5, v6, :cond_1

    .line 225
    const/4 v5, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "shifting data \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' positions to wrap in place..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->log(ILjava/lang/String;)V

    .line 226
    move v2, v1

    .local v2, "index":I
    :goto_0
    if-ge v2, p1, :cond_2

    .line 229
    move p1, p3

    .line 252
    .end local v0    # "diff":I
    .end local v1    # "endIndex":I
    .end local v2    # "index":I
    :cond_1
    :goto_1
    new-instance v3, Lcom/samsung/accessory/utils/buffer/SABuffer;

    add-int v5, p2, p3

    add-int/2addr v5, p4

    invoke-direct {v3, p0, v5}, Lcom/samsung/accessory/utils/buffer/SABuffer;-><init>([BI)V

    .line 253
    .local v3, "objSABuffer":Lcom/samsung/accessory/utils/buffer/SABuffer;
    invoke-virtual {v3, p1}, Lcom/samsung/accessory/utils/buffer/SABuffer;->setOffset(I)V

    .line 254
    invoke-virtual {v3, p2}, Lcom/samsung/accessory/utils/buffer/SABuffer;->setPayloadLength(I)V

    .line 255
    return-object v3

    .line 227
    .end local v3    # "objSABuffer":Lcom/samsung/accessory/utils/buffer/SABuffer;
    .restart local v0    # "diff":I
    .restart local v1    # "endIndex":I
    .restart local v2    # "index":I
    :cond_2
    add-int v5, v2, v0

    aget-byte v6, p0, v2

    aput-byte v6, p0, v5

    .line 226
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 237
    .end local v0    # "diff":I
    .end local v1    # "endIndex":I
    .end local v2    # "index":I
    :cond_3
    array-length v5, p0

    add-int v6, p1, p2

    add-int/2addr v6, p4

    if-ge v5, v6, :cond_1

    .line 240
    add-int v5, p1, p2

    add-int/2addr v5, p4

    array-length v6, p0

    sub-int v0, v5, v6

    .line 241
    .restart local v0    # "diff":I
    sub-int v4, p1, v0

    .line 242
    .local v4, "startIndex":I
    if-ltz v4, :cond_1

    if-lt v4, p3, :cond_1

    .line 243
    move v2, v4

    .restart local v2    # "index":I
    :goto_2
    add-int v5, v4, p2

    if-lt v2, v5, :cond_4

    .line 246
    move p1, v4

    goto :goto_1

    .line 244
    :cond_4
    add-int v5, v2, v0

    aget-byte v5, p0, v5

    aput-byte v5, p0, v2

    .line 243
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method
