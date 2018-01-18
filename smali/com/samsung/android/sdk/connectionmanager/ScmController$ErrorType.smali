.class final enum Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;
.super Ljava/lang/Enum;
.source "ScmController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/connectionmanager/ScmController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;

.field public static final enum ERROR_SCS_ACCOUNT_INVALID_PARAMS:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;

.field public static final enum FAIL:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;

.field public static final enum SUCCESS:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 945
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;->SUCCESS:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;

    .line 946
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;

    const-string v1, "FAIL"

    invoke-direct {v0, v1, v3, v3}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;->FAIL:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;

    .line 947
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;

    const-string v1, "ERROR_SCS_ACCOUNT_INVALID_PARAMS"

    invoke-direct {v0, v1, v4, v4}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;->ERROR_SCS_ACCOUNT_INVALID_PARAMS:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;

    .line 944
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;

    sget-object v1, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;->SUCCESS:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;->FAIL:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;->ERROR_SCS_ACCOUNT_INVALID_PARAMS:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;->$VALUES:[Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;

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
    .line 951
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 952
    iput p3, p0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;->value:I

    .line 953
    return-void
.end method

.method public static forValue(I)Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 960
    packed-switch p0, :pswitch_data_0

    .line 968
    sget-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;->FAIL:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;

    :goto_0
    return-object v0

    .line 962
    :pswitch_0
    sget-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;->SUCCESS:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;

    goto :goto_0

    .line 964
    :pswitch_1
    sget-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;->FAIL:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;

    goto :goto_0

    .line 966
    :pswitch_2
    sget-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;->ERROR_SCS_ACCOUNT_INVALID_PARAMS:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;

    goto :goto_0

    .line 960
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 944
    const-class v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;
    .locals 1

    .prologue
    .line 944
    sget-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;->$VALUES:[Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    .line 956
    iget v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;->value:I

    return v0
.end method
