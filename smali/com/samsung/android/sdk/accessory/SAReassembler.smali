.class Lcom/samsung/android/sdk/accessory/SAReassembler;
.super Ljava/lang/Object;
.source "SAReassembler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;
    }
.end annotation


# static fields
.field static final REASSEMBLY_FAILURE:I = 0x3

.field static final REASSEMBLY_IN_PROGRESS:I = 0x2

.field static final REASSEMBLY_SUCCESS:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static sReassemblers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/sdk/accessory/SAReassembler;

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

    sput-object v0, Lcom/samsung/android/sdk/accessory/SAReassembler;->TAG:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/accessory/SAReassembler;->sReassemblers:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAReassembler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static assembleData(Ljava/lang/Object;II[BII)I
    .locals 8
    .param p0, "key"    # Ljava/lang/Object;
    .param p1, "APDUSize"    # I
    .param p2, "index"    # I
    .param p3, "data"    # [B
    .param p4, "offset"    # I
    .param p5, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    const/4 v0, 0x1

    const/4 v7, -0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/sdk/accessory/SAReassembler;->assembleInternal(ILjava/lang/Object;II[BIII)I

    move-result v0

    return v0
.end method

.method private static assembleInternal(ILjava/lang/Object;II[BIII)I
    .locals 2
    .param p0, "mode"    # I
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "APDUSize"    # I
    .param p3, "index"    # I
    .param p4, "data"    # [B
    .param p5, "offset"    # I
    .param p6, "length"    # I
    .param p7, "transId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAReassembler;->sReassemblers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;

    .line 75
    .local v0, "reassembler":Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;
    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;

    .end local v0    # "reassembler":Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;
    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, p1, v1}, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;-><init>(IILjava/lang/Object;Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;)V

    .line 77
    .restart local v0    # "reassembler":Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAReassembler;->sReassemblers:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_0
    invoke-virtual {v0, p3, p4, p5, p6}, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->assemble(I[BII)I

    move-result v1

    return v1
.end method

.method static assembleMessage(Ljava/lang/Object;III[BII)I
    .locals 8
    .param p0, "key"    # Ljava/lang/Object;
    .param p1, "APDUSize"    # I
    .param p2, "transId"    # I
    .param p3, "index"    # I
    .param p4, "data"    # [B
    .param p5, "offset"    # I
    .param p6, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    const/4 v0, 0x2

    move-object v1, p0

    move v2, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move v7, p2

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/sdk/accessory/SAReassembler;->assembleInternal(ILjava/lang/Object;II[BIII)I

    move-result v0

    return v0
.end method

.method static getAppData(Ljava/lang/Object;)[B
    .locals 2
    .param p0, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAReassembler;->sReassemblers:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;

    .line 59
    .local v0, "reassembler":Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;
    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->extractPayload()[B

    move-result-object v1

    .line 62
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static shutDown(Ljava/lang/Object;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/Object;

    .prologue
    .line 66
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAReassembler;->sReassemblers:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;

    .line 67
    .local v0, "reassembler":Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;
    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->shutDown()V

    .line 70
    :cond_0
    return-void
.end method
