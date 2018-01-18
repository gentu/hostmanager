.class public Lcom/samsung/accessory/utils/buffer/SABuffer;
.super Ljava/lang/Object;
.source "SABuffer.java"


# static fields
.field public static final ERROR_BUFFER_OVEFLOW:I = -0x2

.field public static final ERROR_BUFFER_RECYCLED:I = -0x1

.field public static final ERROR_BUFFER_UNDERFLOW:I = -0x3


# instance fields
.field private final data:[B

.field isRecycled:Z

.field private final length:I

.field private offset:I

.field private payloadLength:I


# direct methods
.method constructor <init>([BI)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "length"    # I

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->data:[B

    .line 41
    iput p2, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->length:I

    .line 42
    iput-boolean v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->isRecycled:Z

    .line 43
    iput v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->payloadLength:I

    .line 44
    iput v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->offset:I

    .line 45
    return-void
.end method


# virtual methods
.method public declared-synchronized extractFrom([BII)V
    .locals 4
    .param p1, "dataToWrite"    # [B
    .param p2, "dataOffset"    # I
    .param p3, "lengthToWrite"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/accessory/utils/buffer/SaBufferException;
        }
    .end annotation

    .prologue
    .line 232
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->isRecycled:Z

    if-eqz v1, :cond_0

    .line 233
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to extract from a recycled buffer!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 236
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->offset:I

    iget v2, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->payloadLength:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget v2, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->length:I

    if-le v1, v2, :cond_1

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot extract from byte[]. Buffer length exceeded! [buff offset="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->offset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 238
    const-string v2, "; payload len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->payloadLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 239
    const-string v2, "; length to write = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 240
    const-string v2, "; buff len = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->length:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 237
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lcom/samsung/accessory/utils/buffer/SaBufferException;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v0}, Lcom/samsung/accessory/utils/buffer/SaBufferException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 243
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->data:[B

    iget v2, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->offset:I

    iget v3, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->payloadLength:I

    add-int/2addr v2, v3

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 244
    iget v1, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->payloadLength:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->payloadLength:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized extractPayload()[B
    .locals 5

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->isRecycled:Z

    if-eqz v1, :cond_0

    .line 117
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot refer to a recycled buffer!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 119
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->payloadLength:I

    new-array v0, v1, [B

    .line 120
    .local v0, "payload":[B
    iget-object v1, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->data:[B

    iget v2, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->offset:I

    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->payloadLength:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized extractPayloadBuffer()Lcom/samsung/accessory/utils/buffer/SABuffer;
    .locals 6

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->isRecycled:Z

    if-eqz v1, :cond_0

    .line 96
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot refer to a recycled buffer!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 98
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->payloadLength:I

    invoke-static {v1}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->obtainExact(I)Lcom/samsung/accessory/utils/buffer/SABuffer;

    move-result-object v0

    .line 99
    .local v0, "objBufferPayload":Lcom/samsung/accessory/utils/buffer/SABuffer;
    iget-object v1, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->data:[B

    iget v2, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->offset:I

    invoke-virtual {v0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getBuffer()[B

    move-result-object v3

    const/4 v4, 0x0

    iget v5, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->payloadLength:I

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    iget v1, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->payloadLength:I

    iput v1, v0, Lcom/samsung/accessory/utils/buffer/SABuffer;->payloadLength:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized extractTo(Lcom/samsung/accessory/utils/buffer/SABuffer;II)V
    .locals 3
    .param p1, "destBuffer"    # Lcom/samsung/accessory/utils/buffer/SABuffer;
    .param p2, "destOffset"    # I
    .param p3, "lengthToExtract"    # I

    .prologue
    .line 263
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->isRecycled:Z

    if-eqz v0, :cond_0

    .line 264
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot refer to a recycled buffer!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 266
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->offset:I

    add-int/2addr v0, p3

    iget v1, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->length:I

    if-le v0, v1, :cond_1

    .line 267
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot extract to SABuffer. Source buffer length exceeded its length! [buff offset = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 269
    iget v2, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->offset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 270
    const-string v2, "; length to extract = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 271
    const-string v2, "; buff len = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->length:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 268
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 267
    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->data:[B

    iget v1, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->offset:I

    invoke-virtual {p1}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getBuffer()[B

    move-result-object v2

    invoke-static {v0, v1, v2, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 274
    iget v0, p1, Lcom/samsung/accessory/utils/buffer/SABuffer;->payloadLength:I

    add-int/2addr v0, p3

    iput v0, p1, Lcom/samsung/accessory/utils/buffer/SABuffer;->payloadLength:I

    .line 275
    iget v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->offset:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->offset:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized getBuffer()[B
    .locals 2

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->isRecycled:Z

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot refer to a recycled buffer!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 63
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->data:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized getBufferLength()I
    .locals 2

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->isRecycled:Z

    if-eqz v0, :cond_0

    .line 78
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot refer to a recycled buffer!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 80
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->data:[B

    array-length v0, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized getLength()I
    .locals 2

    .prologue
    .line 134
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->isRecycled:Z

    if-eqz v0, :cond_0

    .line 135
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot refer to a recycled buffer!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 137
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->length:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized getOffset()I
    .locals 2

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->isRecycled:Z

    if-eqz v0, :cond_0

    .line 149
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot refer to a recycled buffer!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 151
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->offset:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized getPayloadLength()I
    .locals 2

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->isRecycled:Z

    if-eqz v0, :cond_0

    .line 178
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot refer to a recycled buffer!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 180
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->payloadLength:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized isRecycled()Z
    .locals 1

    .prologue
    .line 284
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->isRecycled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized recycle()Z
    .locals 1

    .prologue
    .line 206
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->isRecycled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 207
    const/4 v0, 0x0

    .line 210
    :goto_0
    monitor-exit p0

    return v0

    .line 209
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->data:[B

    invoke-static {v0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->recycle([B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->isRecycled:Z

    .line 210
    iget-boolean v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->isRecycled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setOffset(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 163
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->isRecycled:Z

    if-eqz v0, :cond_0

    .line 164
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot refer to a recycled buffer!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 166
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->offset:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setPayloadLength(I)V
    .locals 2
    .param p1, "payloadLength"    # I

    .prologue
    .line 190
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->isRecycled:Z

    if-eqz v0, :cond_0

    .line 191
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot refer to a recycled buffer!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 193
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->payloadLength:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    monitor-exit p0

    return-void
.end method
