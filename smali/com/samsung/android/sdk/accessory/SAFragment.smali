.class Lcom/samsung/android/sdk/accessory/SAFragment;
.super Ljava/lang/Object;
.source "SAFragment.java"


# static fields
.field private static final DATA_INDEX_INTERMEDIATE_FRAGMENT:I = 0x1

.field private static final DATA_INDEX_NOT_FRAGMENT:I = 0x0

.field private static final DATA_LAST_FRAGMENT:I = 0x2

.field static final DATA_MODE:I = 0x1

.field private static final MSG_INDEX_FIRST_FRAGMENT:I = 0x1

.field private static final MSG_INDEX_INTERMEDIATE_FRAGMENT:I = 0x2

.field private static final MSG_INDEX_NOT_FRAGMENT:I = 0x0

.field private static final MSG_LAST_FRAGMENT:I = 0x3

.field static final MSG_MODE:I = 0x2


# instance fields
.field private mBuffer:Lcom/samsung/accessory/utils/buffer/SABuffer;

.field private mIndex:I

.field private mIndexFirstFragment:I

.field private mIndexIntermediateFragment:I

.field private mIndexLastFragment:I

.field private mIndexNotFragmemt:I


# direct methods
.method constructor <init>(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    packed-switch p1, :pswitch_data_0

    .line 44
    const-string v0, "Accessory-SDK"

    const-string v1, "invalid fragment mode!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :goto_0
    return-void

    .line 32
    :pswitch_0
    iput v1, p0, Lcom/samsung/android/sdk/accessory/SAFragment;->mIndexNotFragmemt:I

    .line 33
    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAFragment;->mIndexFirstFragment:I

    .line 34
    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAFragment;->mIndexIntermediateFragment:I

    .line 35
    iput v2, p0, Lcom/samsung/android/sdk/accessory/SAFragment;->mIndexLastFragment:I

    goto :goto_0

    .line 38
    :pswitch_1
    iput v1, p0, Lcom/samsung/android/sdk/accessory/SAFragment;->mIndexNotFragmemt:I

    .line 39
    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAFragment;->mIndexFirstFragment:I

    .line 40
    iput v2, p0, Lcom/samsung/android/sdk/accessory/SAFragment;->mIndexIntermediateFragment:I

    .line 41
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAFragment;->mIndexLastFragment:I

    goto :goto_0

    .line 30
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method getBuffer()[B
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAFragment;->mBuffer:Lcom/samsung/accessory/utils/buffer/SABuffer;

    invoke-virtual {v0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getBuffer()[B

    move-result-object v0

    return-object v0
.end method

.method getIndex()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SAFragment;->mIndex:I

    return v0
.end method

.method getIndexFirstFragment()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SAFragment;->mIndexFirstFragment:I

    return v0
.end method

.method getIndexIntermediateFragment()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SAFragment;->mIndexIntermediateFragment:I

    return v0
.end method

.method getIndexLastFragment()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SAFragment;->mIndexLastFragment:I

    return v0
.end method

.method getIndexNotFragment()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SAFragment;->mIndexNotFragmemt:I

    return v0
.end method

.method getOffset()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAFragment;->mBuffer:Lcom/samsung/accessory/utils/buffer/SABuffer;

    invoke-virtual {v0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getOffset()I

    move-result v0

    return v0
.end method

.method getPayloadLength()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAFragment;->mBuffer:Lcom/samsung/accessory/utils/buffer/SABuffer;

    invoke-virtual {v0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getPayloadLength()I

    move-result v0

    return v0
.end method

.method recycleBuffer()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAFragment;->mBuffer:Lcom/samsung/accessory/utils/buffer/SABuffer;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAFragment;->mBuffer:Lcom/samsung/accessory/utils/buffer/SABuffer;

    invoke-virtual {v0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->recycle()Z

    .line 92
    :cond_0
    return-void
.end method

.method setBuffer(Lcom/samsung/accessory/utils/buffer/SABuffer;)V
    .locals 0
    .param p1, "buffer"    # Lcom/samsung/accessory/utils/buffer/SABuffer;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAFragment;->mBuffer:Lcom/samsung/accessory/utils/buffer/SABuffer;

    .line 71
    return-void
.end method

.method setIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/samsung/android/sdk/accessory/SAFragment;->mIndex:I

    .line 67
    return-void
.end method
