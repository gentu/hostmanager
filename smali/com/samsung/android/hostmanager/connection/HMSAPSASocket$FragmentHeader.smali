.class public Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FragmentHeader;
.super Ljava/lang/Object;
.source "HMSAPSASocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FragmentHeader"
.end annotation


# static fields
.field public static final SIZE:I = 0x2


# instance fields
.field public index:I

.field public isFragment:Z

.field public isLast:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 639
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 635
    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FragmentHeader;->isFragment:Z

    .line 636
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FragmentHeader;->isLast:Z

    .line 637
    iput v1, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FragmentHeader;->index:I

    .line 640
    return-void
.end method

.method public constructor <init>(ZZI)V
    .locals 2
    .param p1, "isFragment"    # Z
    .param p2, "isLast"    # Z
    .param p3, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 635
    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FragmentHeader;->isFragment:Z

    .line 636
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FragmentHeader;->isLast:Z

    .line 637
    iput v1, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FragmentHeader;->index:I

    .line 643
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FragmentHeader;->isFragment:Z

    .line 644
    iput-boolean p2, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FragmentHeader;->isLast:Z

    .line 645
    iput p3, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FragmentHeader;->index:I

    .line 646
    return-void
.end method


# virtual methods
.method public generateFragmentHeader()[B
    .locals 14

    .prologue
    const/4 v2, 0x0

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 659
    const/4 v5, 0x2

    new-array v1, v5, [B

    .line 661
    .local v1, "header":[B
    iget-boolean v5, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FragmentHeader;->isFragment:Z

    if-nez v5, :cond_0

    .line 662
    aput-byte v4, v1, v4

    .line 663
    aput-byte v4, v1, v3

    .line 666
    :cond_0
    iget v0, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FragmentHeader;->index:I

    .line 668
    .local v0, "fragmentID":I
    if-gtz v0, :cond_1

    .line 669
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid Fragment Index (Fragment Index should be > 0)..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 703
    .end local v1    # "header":[B
    :goto_0
    return-object v1

    .line 673
    .restart local v1    # "header":[B
    :cond_1
    int-to-double v6, v0

    const-wide/high16 v8, 0x402c000000000000L    # 14.0

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v8, v10

    cmpl-double v5, v6, v8

    if-lez v5, :cond_2

    .line 675
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Max fragment reached. It can support Max: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/high16 v6, 0x402e000000000000L    # 15.0

    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " fragments or (32768 * 64 * 1024) bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 677
    goto :goto_0

    .line 681
    :cond_2
    const v2, 0xffff

    and-int/2addr v0, v2

    .line 685
    shl-int/lit8 v0, v0, 0x1

    .line 689
    iget-boolean v2, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FragmentHeader;->isLast:Z

    if-ne v2, v3, :cond_3

    move v2, v3

    :goto_1
    or-int/2addr v0, v2

    .line 693
    shl-int/lit8 v0, v0, 0x1

    .line 697
    or-int/lit8 v0, v0, 0x1

    .line 700
    and-int/lit16 v2, v0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 701
    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    goto :goto_0

    :cond_3
    move v2, v4

    .line 689
    goto :goto_1
.end method

.method public parseFragmentHeader([B)V
    .locals 6
    .param p1, "header"    # [B

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 715
    aget-byte v3, p1, v5

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    .line 739
    :goto_0
    return-void

    .line 718
    :cond_0
    aget-byte v3, p1, v4

    and-int/lit16 v2, v3, 0xff

    .line 719
    .local v2, "value":I
    shl-int/lit8 v2, v2, 0x8

    .line 720
    aget-byte v3, p1, v5

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    .line 723
    shr-int/lit8 v2, v2, 0x2

    .line 727
    aget-byte v3, p1, v5

    and-int/lit8 v3, v3, 0x2

    shr-int/lit8 v0, v3, 0x1

    .line 730
    .local v0, "finalFlag":I
    if-ne v0, v4, :cond_1

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FragmentHeader;->isLast:Z

    .line 733
    aget-byte v3, p1, v5

    and-int/lit8 v1, v3, 0x1

    .line 736
    .local v1, "fragmentFlag":I
    if-ne v1, v4, :cond_2

    :goto_2
    iput-boolean v4, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FragmentHeader;->isFragment:Z

    .line 738
    iput v2, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FragmentHeader;->index:I

    goto :goto_0

    .end local v1    # "fragmentFlag":I
    :cond_1
    move v3, v5

    .line 730
    goto :goto_1

    .restart local v1    # "fragmentFlag":I
    :cond_2
    move v4, v5

    .line 736
    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FragmentFlag [isFragment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FragmentHeader;->isFragment:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isLast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FragmentHeader;->isLast:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FragmentHeader;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
