.class Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;
.super Ljava/lang/Object;
.source "SAReassembler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SAReassembler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Reassembler"
.end annotation


# instance fields
.field mBuffer:Lcom/samsung/accessory/utils/buffer/SABuffer;

.field private mFragment:Lcom/samsung/android/sdk/accessory/SAFragment;

.field private mMaxAPDUSize:I

.field private mMode:I

.field mMyKey:Ljava/lang/Object;


# direct methods
.method private constructor <init>(IILjava/lang/Object;)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "size"    # I
    .param p3, "key"    # Ljava/lang/Object;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput p1, p0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->mMode:I

    .line 92
    iput p2, p0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->mMaxAPDUSize:I

    .line 93
    iput-object p3, p0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->mMyKey:Ljava/lang/Object;

    .line 94
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAFragment;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/accessory/SAFragment;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->mFragment:Lcom/samsung/android/sdk/accessory/SAFragment;

    .line 95
    return-void
.end method

.method synthetic constructor <init>(IILjava/lang/Object;Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;-><init>(IILjava/lang/Object;)V

    return-void
.end method

.method private extractBuffer(I[BII)I
    .locals 4
    .param p1, "fragmentIndex"    # I
    .param p2, "data"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    .line 148
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->mBuffer:Lcom/samsung/accessory/utils/buffer/SABuffer;

    invoke-virtual {v1, p2, p3, p4}, Lcom/samsung/accessory/utils/buffer/SABuffer;->extractFrom([BII)V

    .line 149
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAReassembler;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->mMyKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "-> Tot payload received<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 150
    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->mBuffer:Lcom/samsung/accessory/utils/buffer/SABuffer;

    invoke-virtual {v3}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getPayloadLength()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->getNonFragmentIndex()I

    move-result v1

    if-eq p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->getLastFragmentIndex()I
    :try_end_0
    .catch Lcom/samsung/accessory/utils/buffer/SaBufferException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-ne p1, v1, :cond_1

    .line 152
    :cond_0
    const/4 v1, 0x1

    .line 157
    :goto_0
    return v1

    .line 154
    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Lcom/samsung/accessory/utils/buffer/SaBufferException;
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAReassembler;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "BufferException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/accessory/utils/buffer/SaBufferException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v1, 0x3

    goto :goto_0
.end method


# virtual methods
.method public assemble(I[BII)I
    .locals 4
    .param p1, "fragmentIndex"    # I
    .param p2, "data"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x3

    const/4 v2, 0x2

    .line 99
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->getNonFragmentIndex()I

    move-result v1

    if-ne p1, v1, :cond_2

    .line 102
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->mBuffer:Lcom/samsung/accessory/utils/buffer/SABuffer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->mBuffer:Lcom/samsung/accessory/utils/buffer/SABuffer;

    invoke-virtual {v1}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getPayloadLength()I

    move-result v1

    if-lez v1, :cond_0

    .line 103
    iget v1, p0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->mMode:I

    if-ne v1, v2, :cond_1

    .line 104
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->mBuffer:Lcom/samsung/accessory/utils/buffer/SABuffer;

    invoke-virtual {v0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->recycle()Z

    .line 105
    iput-object v3, p0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->mBuffer:Lcom/samsung/accessory/utils/buffer/SABuffer;

    .line 106
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAReassembler;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MsgFragment received out of order! clearing legacy buffer and accepting new..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SABufferAccessor;->getDefault()Lcom/samsung/android/sdk/accessory/SABufferAccessor;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/samsung/android/sdk/accessory/SABufferAccessor;->obtain(I)Lcom/samsung/accessory/utils/buffer/SABuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->mBuffer:Lcom/samsung/accessory/utils/buffer/SABuffer;

    .line 115
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->extractBuffer(I[BII)I

    move-result v0

    .line 140
    :goto_0
    return v0

    .line 108
    :cond_1
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAReassembler;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received a non-fragment in <"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->mMyKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> while blob receive in progress...!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 121
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->getFirstFragmentIndex()I

    move-result v1

    if-ne p1, v1, :cond_5

    .line 122
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->mMode:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->mBuffer:Lcom/samsung/accessory/utils/buffer/SABuffer;

    if-eqz v0, :cond_3

    .line 123
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->mBuffer:Lcom/samsung/accessory/utils/buffer/SABuffer;

    invoke-virtual {v0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->recycle()Z

    .line 124
    iput-object v3, p0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->mBuffer:Lcom/samsung/accessory/utils/buffer/SABuffer;

    .line 125
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAReassembler;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MsgFragment received out of order! Clearing legacy buffer and accepting new..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->mBuffer:Lcom/samsung/accessory/utils/buffer/SABuffer;

    if-nez v0, :cond_4

    .line 128
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SABufferAccessor;->getDefault()Lcom/samsung/android/sdk/accessory/SABufferAccessor;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->mMaxAPDUSize:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SABufferAccessor;->obtain(I)Lcom/samsung/accessory/utils/buffer/SABuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->mBuffer:Lcom/samsung/accessory/utils/buffer/SABuffer;

    .line 130
    :cond_4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->extractBuffer(I[BII)I

    move-result v0

    goto :goto_0

    .line 132
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->getIntermediateFragmentIndex()I

    move-result v1

    if-eq p1, v1, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->getLastFragmentIndex()I

    move-result v1

    if-ne p1, v1, :cond_9

    .line 133
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->mBuffer:Lcom/samsung/accessory/utils/buffer/SABuffer;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->mBuffer:Lcom/samsung/accessory/utils/buffer/SABuffer;

    invoke-virtual {v0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getPayloadLength()I

    move-result v0

    if-nez v0, :cond_8

    .line 134
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Reassembling failed, received invalid fragment!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_8
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->extractBuffer(I[BII)I

    move-result v0

    goto :goto_0

    .line 139
    :cond_9
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAReassembler;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "invalid fragment index:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " received in <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->mMyKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public extractPayload()[B
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->mBuffer:Lcom/samsung/accessory/utils/buffer/SABuffer;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->mBuffer:Lcom/samsung/accessory/utils/buffer/SABuffer;

    invoke-virtual {v0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->extractPayload()[B

    move-result-object v0

    .line 180
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFirstFragmentIndex()I
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->mFragment:Lcom/samsung/android/sdk/accessory/SAFragment;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAFragment;->getIndexFirstFragment()I

    move-result v0

    return v0
.end method

.method public getIntermediateFragmentIndex()I
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->mFragment:Lcom/samsung/android/sdk/accessory/SAFragment;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAFragment;->getIndexIntermediateFragment()I

    move-result v0

    return v0
.end method

.method public getLastFragmentIndex()I
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->mFragment:Lcom/samsung/android/sdk/accessory/SAFragment;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAFragment;->getIndexLastFragment()I

    move-result v0

    return v0
.end method

.method public getNonFragmentIndex()I
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->mFragment:Lcom/samsung/android/sdk/accessory/SAFragment;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAFragment;->getIndexNotFragment()I

    move-result v0

    return v0
.end method

.method public shutDown()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->mBuffer:Lcom/samsung/accessory/utils/buffer/SABuffer;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->mBuffer:Lcom/samsung/accessory/utils/buffer/SABuffer;

    invoke-virtual {v0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->recycle()Z

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->mBuffer:Lcom/samsung/accessory/utils/buffer/SABuffer;

    .line 188
    :cond_0
    return-void
.end method
