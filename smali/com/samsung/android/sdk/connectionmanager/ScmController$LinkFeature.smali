.class final enum Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;
.super Ljava/lang/Enum;
.source "ScmController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/connectionmanager/ScmController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "LinkFeature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;

.field public static final enum LINK_DUAL:Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;

.field public static final enum LINK_EDR:Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;

.field public static final enum LINK_LE:Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;

.field public static final enum LINK_UNKNOWN:Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 783
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;

    const-string v1, "LINK_UNKNOWN"

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;->LINK_UNKNOWN:Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;

    .line 784
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;

    const-string v1, "LINK_EDR"

    invoke-direct {v0, v1, v3, v3}, Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;->LINK_EDR:Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;

    .line 785
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;

    const-string v1, "LINK_LE"

    invoke-direct {v0, v1, v4, v4}, Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;->LINK_LE:Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;

    .line 786
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;

    const-string v1, "LINK_DUAL"

    invoke-direct {v0, v1, v5, v5}, Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;->LINK_DUAL:Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;

    .line 782
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;

    sget-object v1, Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;->LINK_UNKNOWN:Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;->LINK_EDR:Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;->LINK_LE:Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;->LINK_DUAL:Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;->$VALUES:[Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;

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
    .line 790
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 791
    iput p3, p0, Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;->value:I

    .line 792
    return-void
.end method

.method public static forValue(I)Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 799
    packed-switch p0, :pswitch_data_0

    .line 809
    sget-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;->LINK_UNKNOWN:Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;

    :goto_0
    return-object v0

    .line 801
    :pswitch_0
    sget-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;->LINK_UNKNOWN:Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;

    goto :goto_0

    .line 803
    :pswitch_1
    sget-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;->LINK_EDR:Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;

    goto :goto_0

    .line 805
    :pswitch_2
    sget-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;->LINK_LE:Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;

    goto :goto_0

    .line 807
    :pswitch_3
    sget-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;->LINK_DUAL:Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;

    goto :goto_0

    .line 799
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 782
    const-class v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;
    .locals 1

    .prologue
    .line 782
    sget-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;->$VALUES:[Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    .line 795
    iget v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;->value:I

    return v0
.end method
