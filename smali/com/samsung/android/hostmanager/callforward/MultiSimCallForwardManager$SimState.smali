.class public final enum Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;
.super Ljava/lang/Enum;
.source "MultiSimCallForwardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SimState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

.field public static final enum SLOT1:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

.field public static final enum SLOT2:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    const-string v1, "SLOT1"

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;->SLOT1:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    .line 41
    new-instance v0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    const-string v1, "SLOT2"

    invoke-direct {v0, v1, v3, v3}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;->SLOT2:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    sget-object v1, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;->SLOT1:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;->SLOT2:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;->$VALUES:[Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput p3, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;->value:I

    .line 47
    return-void
.end method

.method public static forValue(I)Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 54
    packed-switch p0, :pswitch_data_0

    .line 60
    sget-object v0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;->SLOT1:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    :goto_0
    return-object v0

    .line 56
    :pswitch_0
    sget-object v0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;->SLOT1:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    goto :goto_0

    .line 58
    :pswitch_1
    sget-object v0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;->SLOT2:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    goto :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    const-class v0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;->$VALUES:[Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    invoke-virtual {v0}, [Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;->value:I

    return v0
.end method
