.class final enum Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;
.super Ljava/lang/Enum;
.source "ScmController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/connectionmanager/ScmController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ServiceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;

.field public static final enum ALL:Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;

.field public static final enum GATT:Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;

.field public static final enum HFP:Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;

.field public static final enum PAN:Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;

.field public static final enum SCS:Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;

.field public static final enum SPP:Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;

.field public static final enum WIFIP2P:Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 904
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;

    const-string v1, "HFP"

    invoke-direct {v0, v1, v4, v4}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;->HFP:Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;

    .line 905
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;

    const-string v1, "PAN"

    invoke-direct {v0, v1, v5, v5}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;->PAN:Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;

    .line 906
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;

    const-string v1, "SPP"

    invoke-direct {v0, v1, v6, v6}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;->SPP:Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;

    .line 907
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;

    const-string v1, "GATT"

    invoke-direct {v0, v1, v7, v7}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;->GATT:Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;

    .line 908
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v8, v8}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;->ALL:Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;

    .line 909
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;

    const-string v1, "SCS"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;->SCS:Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;

    .line 910
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;

    const-string v1, "WIFIP2P"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;->WIFIP2P:Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;

    .line 903
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;

    sget-object v1, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;->HFP:Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;->PAN:Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;->SPP:Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;->GATT:Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;->ALL:Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;->SCS:Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;->WIFIP2P:Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;->$VALUES:[Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;

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
    .line 914
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 915
    iput p3, p0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;->value:I

    .line 916
    return-void
.end method

.method public static forValue(I)Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 923
    packed-switch p0, :pswitch_data_0

    .line 939
    sget-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;->ALL:Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;

    :goto_0
    return-object v0

    .line 925
    :pswitch_0
    sget-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;->HFP:Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;

    goto :goto_0

    .line 927
    :pswitch_1
    sget-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;->PAN:Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;

    goto :goto_0

    .line 929
    :pswitch_2
    sget-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;->SPP:Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;

    goto :goto_0

    .line 931
    :pswitch_3
    sget-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;->GATT:Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;

    goto :goto_0

    .line 933
    :pswitch_4
    sget-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;->ALL:Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;

    goto :goto_0

    .line 935
    :pswitch_5
    sget-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;->SCS:Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;

    goto :goto_0

    .line 937
    :pswitch_6
    sget-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;->WIFIP2P:Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;

    goto :goto_0

    .line 923
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 903
    const-class v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;
    .locals 1

    .prologue
    .line 903
    sget-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;->$VALUES:[Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    .line 919
    iget v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;->value:I

    return v0
.end method
