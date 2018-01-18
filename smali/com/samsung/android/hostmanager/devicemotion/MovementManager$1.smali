.class Lcom/samsung/android/hostmanager/devicemotion/MovementManager$1;
.super Ljava/lang/Object;
.source "MovementManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/devicemotion/MovementManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/devicemotion/MovementManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/devicemotion/MovementManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/devicemotion/MovementManager;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$1;->this$0:Lcom/samsung/android/hostmanager/devicemotion/MovementManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DetectDeviceMovement([FJ)V
    .locals 18
    .param p1, "accData"    # [F
    .param p2, "sampleTime"    # J

    .prologue
    .line 169
    sget-boolean v14, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->NoMoveSensingBufferFullFlag:Z

    if-nez v14, :cond_2

    .line 170
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$1;->this$0:Lcom/samsung/android/hostmanager/devicemotion/MovementManager;

    iget v14, v14, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->g_avgAx:F

    sget v15, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->NoMoveSensingDataIndex:I

    int-to-float v15, v15

    mul-float/2addr v14, v15

    const/4 v15, 0x0

    aget v15, p1, v15

    add-float v5, v14, v15

    .line 171
    .local v5, "totalAccX":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$1;->this$0:Lcom/samsung/android/hostmanager/devicemotion/MovementManager;

    iget v14, v14, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->g_avgAy:F

    sget v15, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->NoMoveSensingDataIndex:I

    int-to-float v15, v15

    mul-float/2addr v14, v15

    const/4 v15, 0x1

    aget v15, p1, v15

    add-float v7, v14, v15

    .line 172
    .local v7, "totalAccY":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$1;->this$0:Lcom/samsung/android/hostmanager/devicemotion/MovementManager;

    iget v14, v14, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->g_avgAz:F

    sget v15, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->NoMoveSensingDataIndex:I

    int-to-float v15, v15

    mul-float/2addr v14, v15

    const/4 v15, 0x2

    aget v15, p1, v15

    add-float v9, v14, v15

    .line 174
    .local v9, "totalAccZ":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$1;->this$0:Lcom/samsung/android/hostmanager/devicemotion/MovementManager;

    sget v15, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->NoMoveSensingDataIndex:I

    add-int/lit8 v15, v15, 0x1

    int-to-float v15, v15

    div-float v15, v5, v15

    iput v15, v14, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->g_avgAx:F

    .line 175
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$1;->this$0:Lcom/samsung/android/hostmanager/devicemotion/MovementManager;

    sget v15, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->NoMoveSensingDataIndex:I

    add-int/lit8 v15, v15, 0x1

    int-to-float v15, v15

    div-float v15, v7, v15

    iput v15, v14, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->g_avgAy:F

    .line 176
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$1;->this$0:Lcom/samsung/android/hostmanager/devicemotion/MovementManager;

    sget v15, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->NoMoveSensingDataIndex:I

    add-int/lit8 v15, v15, 0x1

    int-to-float v15, v15

    div-float v15, v9, v15

    iput v15, v14, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->g_avgAz:F

    .line 178
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$1;->this$0:Lcom/samsung/android/hostmanager/devicemotion/MovementManager;

    iget v14, v14, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->g_avgAx2:F

    sget v15, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->NoMoveSensingDataIndex:I

    int-to-float v15, v15

    mul-float/2addr v14, v15

    const/4 v15, 0x0

    aget v15, p1, v15

    const/16 v16, 0x0

    aget v16, p1, v16

    mul-float v15, v15, v16

    add-float v6, v14, v15

    .line 179
    .local v6, "totalAccX2":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$1;->this$0:Lcom/samsung/android/hostmanager/devicemotion/MovementManager;

    iget v14, v14, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->g_avgAy2:F

    sget v15, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->NoMoveSensingDataIndex:I

    int-to-float v15, v15

    mul-float/2addr v14, v15

    const/4 v15, 0x1

    aget v15, p1, v15

    const/16 v16, 0x1

    aget v16, p1, v16

    mul-float v15, v15, v16

    add-float v8, v14, v15

    .line 180
    .local v8, "totalAccY2":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$1;->this$0:Lcom/samsung/android/hostmanager/devicemotion/MovementManager;

    iget v14, v14, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->g_avgAz2:F

    sget v15, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->NoMoveSensingDataIndex:I

    int-to-float v15, v15

    mul-float/2addr v14, v15

    const/4 v15, 0x2

    aget v15, p1, v15

    const/16 v16, 0x2

    aget v16, p1, v16

    mul-float v15, v15, v16

    add-float v10, v14, v15

    .line 182
    .local v10, "totalAccZ2":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$1;->this$0:Lcom/samsung/android/hostmanager/devicemotion/MovementManager;

    sget v15, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->NoMoveSensingDataIndex:I

    add-int/lit8 v15, v15, 0x1

    int-to-float v15, v15

    div-float v15, v6, v15

    iput v15, v14, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->g_avgAx2:F

    .line 183
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$1;->this$0:Lcom/samsung/android/hostmanager/devicemotion/MovementManager;

    sget v15, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->NoMoveSensingDataIndex:I

    add-int/lit8 v15, v15, 0x1

    int-to-float v15, v15

    div-float v15, v8, v15

    iput v15, v14, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->g_avgAy2:F

    .line 184
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$1;->this$0:Lcom/samsung/android/hostmanager/devicemotion/MovementManager;

    sget v15, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->NoMoveSensingDataIndex:I

    add-int/lit8 v15, v15, 0x1

    int-to-float v15, v15

    div-float v15, v10, v15

    iput v15, v14, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->g_avgAz2:F

    .line 210
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$1;->this$0:Lcom/samsung/android/hostmanager/devicemotion/MovementManager;

    iget v14, v14, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->g_avgAx2:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$1;->this$0:Lcom/samsung/android/hostmanager/devicemotion/MovementManager;

    iget v15, v15, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->g_avgAx:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$1;->this$0:Lcom/samsung/android/hostmanager/devicemotion/MovementManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->g_avgAx:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    sub-float v11, v14, v15

    .line 211
    .local v11, "varAx":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$1;->this$0:Lcom/samsung/android/hostmanager/devicemotion/MovementManager;

    iget v14, v14, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->g_avgAy2:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$1;->this$0:Lcom/samsung/android/hostmanager/devicemotion/MovementManager;

    iget v15, v15, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->g_avgAy:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$1;->this$0:Lcom/samsung/android/hostmanager/devicemotion/MovementManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->g_avgAy:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    sub-float v12, v14, v15

    .line 212
    .local v12, "varAy":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$1;->this$0:Lcom/samsung/android/hostmanager/devicemotion/MovementManager;

    iget v14, v14, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->g_avgAz2:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$1;->this$0:Lcom/samsung/android/hostmanager/devicemotion/MovementManager;

    iget v15, v15, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->g_avgAz:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$1;->this$0:Lcom/samsung/android/hostmanager/devicemotion/MovementManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->g_avgAz:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    sub-float v13, v14, v15

    .line 214
    .local v13, "varAz":F
    const v14, 0x3dcccccd    # 0.1f

    cmpg-float v14, v11, v14

    if-gez v14, :cond_3

    const v14, 0x3dcccccd    # 0.1f

    cmpg-float v14, v12, v14

    if-gez v14, :cond_3

    const v14, 0x3dcccccd    # 0.1f

    cmpg-float v14, v13, v14

    if-gez v14, :cond_3

    .line 217
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$1;->this$0:Lcom/samsung/android/hostmanager/devicemotion/MovementManager;

    const/4 v15, 0x0

    iput v15, v14, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->g_moveSensingPeriod:I

    .line 218
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$1;->this$0:Lcom/samsung/android/hostmanager/devicemotion/MovementManager;

    iget v14, v14, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->g_nog_moveSensingPeriod:I

    int-to-long v14, v14

    const-wide/32 v16, 0xea60

    cmp-long v14, v14, v16

    if-gtz v14, :cond_0

    .line 219
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$1;->this$0:Lcom/samsung/android/hostmanager/devicemotion/MovementManager;

    iget v15, v14, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->g_nog_moveSensingPeriod:I

    int-to-long v0, v15

    move-wide/from16 v16, v0

    add-long v16, v16, p2

    move-wide/from16 v0, v16

    long-to-int v15, v0

    iput v15, v14, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->g_nog_moveSensingPeriod:I

    .line 221
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$1;->this$0:Lcom/samsung/android/hostmanager/devicemotion/MovementManager;

    iget v14, v14, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->g_nog_moveSensingPeriod:I

    int-to-long v14, v14

    const-wide/16 v16, 0x1770

    cmp-long v14, v14, v16

    if-lez v14, :cond_1

    .line 224
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$1;->this$0:Lcom/samsung/android/hostmanager/devicemotion/MovementManager;

    const/4 v15, 0x0

    iput v15, v14, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->g_userStatus:I

    .line 226
    invoke-static {}, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->access$200()Ljava/lang/String;

    move-result-object v14

    const-string v15, "NoMove event"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$1;->this$0:Lcom/samsung/android/hostmanager/devicemotion/MovementManager;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->access$300(Lcom/samsung/android/hostmanager/devicemotion/MovementManager;Z)V

    .line 244
    :cond_1
    :goto_1
    return-void

    .line 186
    .end local v5    # "totalAccX":F
    .end local v6    # "totalAccX2":F
    .end local v7    # "totalAccY":F
    .end local v8    # "totalAccY2":F
    .end local v9    # "totalAccZ":F
    .end local v10    # "totalAccZ2":F
    .end local v11    # "varAx":F
    .end local v12    # "varAy":F
    .end local v13    # "varAz":F
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$1;->this$0:Lcom/samsung/android/hostmanager/devicemotion/MovementManager;

    iget-object v14, v14, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->NoMoveSensingData:[[F

    sget v15, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->NoMoveSensingDataIndex:I

    aget-object v14, v14, v15

    const/4 v15, 0x0

    aget v2, v14, v15

    .line 187
    .local v2, "tempValx":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$1;->this$0:Lcom/samsung/android/hostmanager/devicemotion/MovementManager;

    iget-object v14, v14, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->NoMoveSensingData:[[F

    sget v15, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->NoMoveSensingDataIndex:I

    aget-object v14, v14, v15

    const/4 v15, 0x1

    aget v3, v14, v15

    .line 188
    .local v3, "tempValy":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$1;->this$0:Lcom/samsung/android/hostmanager/devicemotion/MovementManager;

    iget-object v14, v14, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->NoMoveSensingData:[[F

    sget v15, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->NoMoveSensingDataIndex:I

    aget-object v14, v14, v15

    const/4 v15, 0x2

    aget v4, v14, v15

    .line 190
    .local v4, "tempValz":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$1;->this$0:Lcom/samsung/android/hostmanager/devicemotion/MovementManager;

    iget v14, v14, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->g_avgAx:F

    const/high16 v15, 0x41a00000    # 20.0f

    mul-float/2addr v14, v15

    sub-float/2addr v14, v2

    const/4 v15, 0x0

    aget v15, p1, v15

    add-float v5, v14, v15

    .line 191
    .restart local v5    # "totalAccX":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$1;->this$0:Lcom/samsung/android/hostmanager/devicemotion/MovementManager;

    iget v14, v14, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->g_avgAy:F

    const/high16 v15, 0x41a00000    # 20.0f

    mul-float/2addr v14, v15

    sub-float/2addr v14, v3

    const/4 v15, 0x1

    aget v15, p1, v15

    add-float v7, v14, v15

    .line 192
    .restart local v7    # "totalAccY":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$1;->this$0:Lcom/samsung/android/hostmanager/devicemotion/MovementManager;

    iget v14, v14, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->g_avgAz:F

    const/high16 v15, 0x41a00000    # 20.0f

    mul-float/2addr v14, v15

    sub-float/2addr v14, v4

    const/4 v15, 0x2

    aget v15, p1, v15

    add-float v9, v14, v15

    .line 194
    .restart local v9    # "totalAccZ":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$1;->this$0:Lcom/samsung/android/hostmanager/devicemotion/MovementManager;

    const/high16 v15, 0x41a00000    # 20.0f

    div-float v15, v5, v15

    iput v15, v14, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->g_avgAx:F

    .line 195
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$1;->this$0:Lcom/samsung/android/hostmanager/devicemotion/MovementManager;

    const/high16 v15, 0x41a00000    # 20.0f

    div-float v15, v7, v15

    iput v15, v14, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->g_avgAy:F

    .line 196
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$1;->this$0:Lcom/samsung/android/hostmanager/devicemotion/MovementManager;

    const/high16 v15, 0x41a00000    # 20.0f

    div-float v15, v9, v15

    iput v15, v14, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->g_avgAz:F

    .line 198
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$1;->this$0:Lcom/samsung/android/hostmanager/devicemotion/MovementManager;

    iget v14, v14, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->g_avgAx2:F

    const/high16 v15, 0x41a00000    # 20.0f

    mul-float/2addr v14, v15

    mul-float v15, v2, v2

    sub-float/2addr v14, v15

    const/4 v15, 0x0

    aget v15, p1, v15

    const/16 v16, 0x0

    aget v16, p1, v16

    mul-float v15, v15, v16

    add-float v6, v14, v15

    .line 200
    .restart local v6    # "totalAccX2":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$1;->this$0:Lcom/samsung/android/hostmanager/devicemotion/MovementManager;

    iget v14, v14, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->g_avgAy2:F

    const/high16 v15, 0x41a00000    # 20.0f

    mul-float/2addr v14, v15

    mul-float v15, v3, v3

    sub-float/2addr v14, v15

    const/4 v15, 0x1

    aget v15, p1, v15

    const/16 v16, 0x1

    aget v16, p1, v16

    mul-float v15, v15, v16

    add-float v8, v14, v15

    .line 202
    .restart local v8    # "totalAccY2":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$1;->this$0:Lcom/samsung/android/hostmanager/devicemotion/MovementManager;

    iget v14, v14, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->g_avgAz2:F

    const/high16 v15, 0x41a00000    # 20.0f

    mul-float/2addr v14, v15

    mul-float v15, v4, v4

    sub-float/2addr v14, v15

    const/4 v15, 0x2

    aget v15, p1, v15

    const/16 v16, 0x2

    aget v16, p1, v16

    mul-float v15, v15, v16

    add-float v10, v14, v15

    .line 205
    .restart local v10    # "totalAccZ2":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$1;->this$0:Lcom/samsung/android/hostmanager/devicemotion/MovementManager;

    const/high16 v15, 0x41a00000    # 20.0f

    div-float v15, v6, v15

    iput v15, v14, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->g_avgAx2:F

    .line 206
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$1;->this$0:Lcom/samsung/android/hostmanager/devicemotion/MovementManager;

    const/high16 v15, 0x41a00000    # 20.0f

    div-float v15, v8, v15

    iput v15, v14, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->g_avgAy2:F

    .line 207
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$1;->this$0:Lcom/samsung/android/hostmanager/devicemotion/MovementManager;

    const/high16 v15, 0x41a00000    # 20.0f

    div-float v15, v10, v15

    iput v15, v14, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->g_avgAz2:F

    goto/16 :goto_0

    .line 232
    .end local v2    # "tempValx":F
    .end local v3    # "tempValy":F
    .end local v4    # "tempValz":F
    .restart local v11    # "varAx":F
    .restart local v12    # "varAy":F
    .restart local v13    # "varAz":F
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$1;->this$0:Lcom/samsung/android/hostmanager/devicemotion/MovementManager;

    iget v14, v14, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->g_moveSensingPeriod:I

    int-to-long v14, v14

    const-wide/32 v16, 0xea60

    cmp-long v14, v14, v16

    if-gtz v14, :cond_4

    .line 233
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$1;->this$0:Lcom/samsung/android/hostmanager/devicemotion/MovementManager;

    iget v15, v14, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->g_moveSensingPeriod:I

    int-to-long v0, v15

    move-wide/from16 v16, v0

    add-long v16, v16, p2

    move-wide/from16 v0, v16

    long-to-int v15, v0

    iput v15, v14, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->g_moveSensingPeriod:I

    .line 235
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$1;->this$0:Lcom/samsung/android/hostmanager/devicemotion/MovementManager;

    iget v14, v14, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->g_moveSensingPeriod:I

    int-to-long v14, v14

    const-wide/16 v16, 0xbb8

    cmp-long v14, v14, v16

    if-lez v14, :cond_1

    .line 236
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$1;->this$0:Lcom/samsung/android/hostmanager/devicemotion/MovementManager;

    const/4 v15, 0x0

    iput v15, v14, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->g_nog_moveSensingPeriod:I

    .line 238
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$1;->this$0:Lcom/samsung/android/hostmanager/devicemotion/MovementManager;

    const/4 v15, 0x1

    iput v15, v14, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->g_userStatus:I

    .line 240
    invoke-static {}, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->access$200()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Move event is found"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$1;->this$0:Lcom/samsung/android/hostmanager/devicemotion/MovementManager;

    const/4 v15, 0x1

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->access$300(Lcom/samsung/android/hostmanager/devicemotion/MovementManager;Z)V

    goto/16 :goto_1
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 248
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 124
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 126
    :pswitch_0
    invoke-static {}, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->access$000()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 127
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->access$002(J)J

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$1;->this$0:Lcom/samsung/android/hostmanager/devicemotion/MovementManager;

    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-static {}, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->access$000()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->access$102(Lcom/samsung/android/hostmanager/devicemotion/MovementManager;J)J

    .line 131
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->access$002(J)J

    .line 135
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v1, p0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$1;->this$0:Lcom/samsung/android/hostmanager/devicemotion/MovementManager;

    invoke-static {v1}, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->access$100(Lcom/samsung/android/hostmanager/devicemotion/MovementManager;)J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$1;->DetectDeviceMovement([FJ)V

    .line 137
    iget-object v0, p0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$1;->this$0:Lcom/samsung/android/hostmanager/devicemotion/MovementManager;

    iget-object v0, v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->NoMoveSensingData:[[F

    sget v1, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->NoMoveSensingDataIndex:I

    aget-object v0, v0, v1

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v6

    aput v1, v0, v6

    .line 138
    iget-object v0, p0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$1;->this$0:Lcom/samsung/android/hostmanager/devicemotion/MovementManager;

    iget-object v0, v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->NoMoveSensingData:[[F

    sget v1, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->NoMoveSensingDataIndex:I

    aget-object v0, v0, v1

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v7

    aput v1, v0, v7

    .line 139
    iget-object v0, p0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager$1;->this$0:Lcom/samsung/android/hostmanager/devicemotion/MovementManager;

    iget-object v0, v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->NoMoveSensingData:[[F

    sget v1, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->NoMoveSensingDataIndex:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->NoMoveSensingDataIndex:I

    aget-object v0, v0, v1

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v8

    aput v1, v0, v8

    .line 141
    sget v0, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->NoMoveSensingDataIndex:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 142
    sput v6, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->NoMoveSensingDataIndex:I

    .line 143
    sput-boolean v7, Lcom/samsung/android/hostmanager/devicemotion/MovementManager;->NoMoveSensingBufferFullFlag:Z

    goto :goto_0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
