.class Lcom/samsung/android/sdk/accessory/SAFragmenter;
.super Ljava/lang/Object;
.source "SAFragmenter.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sFragmenters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/samsung/android/sdk/accessory/SAFragmenter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAPDU:[B

.field private mFragment:Lcom/samsung/android/sdk/accessory/SAFragment;

.field private mMaxFooterLen:I

.field private mMaxFragmentSize:I

.field private mMaxHeaderLen:I

.field private mMaxPaddingLen:I

.field mMyKey:Ljava/lang/Object;

.field private mTotSent:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/sdk/accessory/SAFragmenter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "-SDK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->TAG:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->sFragmenters:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(ILjava/lang/Object;)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "key"    # Ljava/lang/Object;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p2, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mMyKey:Ljava/lang/Object;

    .line 40
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAFragment;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/accessory/SAFragment;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mFragment:Lcom/samsung/android/sdk/accessory/SAFragment;

    .line 41
    return-void
.end method


# virtual methods
.method configure(IIII[B)V
    .locals 3
    .param p1, "maxHeader"    # I
    .param p2, "maxFooter"    # I
    .param p3, "dataUnitLen"    # I
    .param p4, "paddingSize"    # I
    .param p5, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->sFragmenters:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mMyKey:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Concurrent write detected! Another write active: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mMyKey:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    iput p1, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mMaxHeaderLen:I

    .line 48
    iput p2, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mMaxFooterLen:I

    .line 49
    iput p4, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mMaxPaddingLen:I

    .line 50
    sub-int v0, p3, p4

    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mMaxFragmentSize:I

    .line 51
    iput-object p5, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mAPDU:[B

    .line 52
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->sFragmenters:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mMyKey:Ljava/lang/Object;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "confiureDataFragmenter: maxHeader="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; maxFooter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; paddingSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 54
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; dataUnitLen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; datalen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void
.end method

.method getFragment()Lcom/samsung/android/sdk/accessory/SAFragment;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mFragment:Lcom/samsung/android/sdk/accessory/SAFragment;

    return-object v0
.end method

.method getTotalSent()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mTotSent:I

    return v0
.end method

.method nextFragment()Lcom/samsung/android/sdk/accessory/SAFragment;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 58
    iget-object v4, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mAPDU:[B

    if-nez v4, :cond_0

    .line 59
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Send Failed! Fragmenter is already shutdown"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 61
    :cond_0
    iget v4, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mTotSent:I

    iget-object v5, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mAPDU:[B

    array-length v5, v5

    if-ne v4, v5, :cond_1

    .line 92
    :goto_0
    return-object v3

    .line 67
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mAPDU:[B

    array-length v4, v4

    iget v5, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mMaxFragmentSize:I

    if-gt v4, v5, :cond_2

    .line 68
    iget-object v4, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mAPDU:[B

    array-length v2, v4

    .line 69
    .local v2, "fragmentLength":I
    iget-object v4, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mFragment:Lcom/samsung/android/sdk/accessory/SAFragment;

    iget-object v5, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mFragment:Lcom/samsung/android/sdk/accessory/SAFragment;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/accessory/SAFragment;->getIndexNotFragment()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/accessory/SAFragment;->setIndex(I)V

    .line 83
    :goto_1
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SABufferAccessor;->getDefault()Lcom/samsung/android/sdk/accessory/SABufferAccessor;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mMaxHeaderLen:I

    add-int/2addr v5, v2

    iget v6, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mMaxPaddingLen:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mMaxFooterLen:I

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/accessory/SABufferAccessor;->obtain(I)Lcom/samsung/accessory/utils/buffer/SABuffer;

    move-result-object v0

    .line 84
    .local v0, "buffer":Lcom/samsung/accessory/utils/buffer/SABuffer;
    iget v4, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mMaxHeaderLen:I

    invoke-virtual {v0, v4}, Lcom/samsung/accessory/utils/buffer/SABuffer;->setOffset(I)V

    .line 86
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mAPDU:[B

    iget v5, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mTotSent:I

    invoke-virtual {v0, v4, v5, v2}, Lcom/samsung/accessory/utils/buffer/SABuffer;->extractFrom([BII)V

    .line 87
    iget-object v4, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mFragment:Lcom/samsung/android/sdk/accessory/SAFragment;

    invoke-virtual {v4, v0}, Lcom/samsung/android/sdk/accessory/SAFragment;->setBuffer(Lcom/samsung/accessory/utils/buffer/SABuffer;)V

    .line 88
    iget v4, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mTotSent:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mTotSent:I

    .line 89
    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mFragment:Lcom/samsung/android/sdk/accessory/SAFragment;
    :try_end_0
    .catch Lcom/samsung/accessory/utils/buffer/SaBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 71
    .end local v0    # "buffer":Lcom/samsung/accessory/utils/buffer/SABuffer;
    .end local v2    # "fragmentLength":I
    :cond_2
    iget v4, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mTotSent:I

    if-nez v4, :cond_3

    .line 72
    iget v2, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mMaxFragmentSize:I

    .line 73
    .restart local v2    # "fragmentLength":I
    iget-object v4, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mFragment:Lcom/samsung/android/sdk/accessory/SAFragment;

    iget-object v5, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mFragment:Lcom/samsung/android/sdk/accessory/SAFragment;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/accessory/SAFragment;->getIndexFirstFragment()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/accessory/SAFragment;->setIndex(I)V

    goto :goto_1

    .line 74
    .end local v2    # "fragmentLength":I
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mAPDU:[B

    array-length v4, v4

    iget v5, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mTotSent:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mMaxFragmentSize:I

    if-le v4, v5, :cond_4

    .line 75
    iget v2, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mMaxFragmentSize:I

    .line 76
    .restart local v2    # "fragmentLength":I
    iget-object v4, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mFragment:Lcom/samsung/android/sdk/accessory/SAFragment;

    iget-object v5, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mFragment:Lcom/samsung/android/sdk/accessory/SAFragment;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/accessory/SAFragment;->getIndexIntermediateFragment()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/accessory/SAFragment;->setIndex(I)V

    goto :goto_1

    .line 78
    .end local v2    # "fragmentLength":I
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mAPDU:[B

    array-length v4, v4

    iget v5, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mTotSent:I

    sub-int v2, v4, v5

    .line 79
    .restart local v2    # "fragmentLength":I
    iget-object v4, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mFragment:Lcom/samsung/android/sdk/accessory/SAFragment;

    iget-object v5, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mFragment:Lcom/samsung/android/sdk/accessory/SAFragment;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/accessory/SAFragment;->getIndexLastFragment()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/accessory/SAFragment;->setIndex(I)V

    goto :goto_1

    .line 90
    .restart local v0    # "buffer":Lcom/samsung/accessory/utils/buffer/SABuffer;
    :catch_0
    move-exception v1

    .line 91
    .local v1, "e":Lcom/samsung/accessory/utils/buffer/SaBufferException;
    sget-object v4, Lcom/samsung/android/sdk/accessory/SAFragmenter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "BufferException: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/accessory/utils/buffer/SaBufferException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method shutdown()V
    .locals 3

    .prologue
    .line 105
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mFragment:Lcom/samsung/android/sdk/accessory/SAFragment;

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mFragment:Lcom/samsung/android/sdk/accessory/SAFragment;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/SAFragment;->recycleBuffer()V

    .line 108
    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAFragmenter;->sFragmenters:Ljava/util/Map;

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mMyKey:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/accessory/SAFragmenter;

    .line 109
    .local v0, "activeFragment":Lcom/samsung/android/sdk/accessory/SAFragmenter;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAFragmenter;->sFragmenters:Ljava/util/Map;

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mMyKey:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mAPDU:[B

    .line 113
    return-void
.end method
