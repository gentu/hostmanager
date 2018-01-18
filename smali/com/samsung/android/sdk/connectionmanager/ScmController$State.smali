.class final enum Lcom/samsung/android/sdk/connectionmanager/ScmController$State;
.super Ljava/lang/Enum;
.source "ScmController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/connectionmanager/ScmController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/connectionmanager/ScmController$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/connectionmanager/ScmController$State;

.field public static final enum CM_AVAILABLE:Lcom/samsung/android/sdk/connectionmanager/ScmController$State;

.field public static final enum CM_RECOVERY:Lcom/samsung/android/sdk/connectionmanager/ScmController$State;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1032
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$State;

    const-string v1, "CM_AVAILABLE"

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sdk/connectionmanager/ScmController$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$State;->CM_AVAILABLE:Lcom/samsung/android/sdk/connectionmanager/ScmController$State;

    .line 1033
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$State;

    const-string v1, "CM_RECOVERY"

    invoke-direct {v0, v1, v3, v3}, Lcom/samsung/android/sdk/connectionmanager/ScmController$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$State;->CM_RECOVERY:Lcom/samsung/android/sdk/connectionmanager/ScmController$State;

    .line 1030
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/sdk/connectionmanager/ScmController$State;

    sget-object v1, Lcom/samsung/android/sdk/connectionmanager/ScmController$State;->CM_AVAILABLE:Lcom/samsung/android/sdk/connectionmanager/ScmController$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/connectionmanager/ScmController$State;->CM_RECOVERY:Lcom/samsung/android/sdk/connectionmanager/ScmController$State;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$State;->$VALUES:[Lcom/samsung/android/sdk/connectionmanager/ScmController$State;

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
    .line 1037
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1038
    iput p3, p0, Lcom/samsung/android/sdk/connectionmanager/ScmController$State;->value:I

    .line 1039
    return-void
.end method

.method public static forValue(I)Lcom/samsung/android/sdk/connectionmanager/ScmController$State;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 1046
    packed-switch p0, :pswitch_data_0

    .line 1052
    sget-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$State;->CM_AVAILABLE:Lcom/samsung/android/sdk/connectionmanager/ScmController$State;

    :goto_0
    return-object v0

    .line 1048
    :pswitch_0
    sget-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$State;->CM_AVAILABLE:Lcom/samsung/android/sdk/connectionmanager/ScmController$State;

    goto :goto_0

    .line 1050
    :pswitch_1
    sget-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$State;->CM_RECOVERY:Lcom/samsung/android/sdk/connectionmanager/ScmController$State;

    goto :goto_0

    .line 1046
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/connectionmanager/ScmController$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1030
    const-class v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$State;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/connectionmanager/ScmController$State;
    .locals 1

    .prologue
    .line 1030
    sget-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$State;->$VALUES:[Lcom/samsung/android/sdk/connectionmanager/ScmController$State;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/connectionmanager/ScmController$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/connectionmanager/ScmController$State;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    .line 1042
    iget v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmController$State;->value:I

    return v0
.end method
