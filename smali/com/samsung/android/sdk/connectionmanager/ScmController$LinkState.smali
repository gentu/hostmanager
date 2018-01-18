.class final enum Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;
.super Ljava/lang/Enum;
.source "ScmController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/connectionmanager/ScmController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "LinkState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;

.field public static final enum CONNECTED:Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;

.field public static final enum CONNECTING:Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;

.field public static final enum DISCONNECTED:Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;

.field public static final enum DISCONNECTING:Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;


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

    .line 842
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;->CONNECTING:Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;

    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v3, v3}, Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;->CONNECTED:Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;

    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;

    const-string v1, "DISCONNECTING"

    invoke-direct {v0, v1, v4, v4}, Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;->DISCONNECTING:Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;

    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;

    const-string v1, "DISCONNECTED"

    invoke-direct {v0, v1, v5, v5}, Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;->DISCONNECTED:Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;

    .line 841
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;

    sget-object v1, Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;->CONNECTING:Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;->CONNECTED:Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;->DISCONNECTING:Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;->DISCONNECTED:Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;->$VALUES:[Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;

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
    .line 847
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 848
    iput p3, p0, Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;->value:I

    .line 849
    return-void
.end method

.method public static forValue(I)Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 856
    packed-switch p0, :pswitch_data_0

    .line 866
    sget-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;->DISCONNECTED:Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;

    :goto_0
    return-object v0

    .line 858
    :pswitch_0
    sget-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;->CONNECTING:Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;

    goto :goto_0

    .line 860
    :pswitch_1
    sget-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;->CONNECTED:Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;

    goto :goto_0

    .line 862
    :pswitch_2
    sget-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;->DISCONNECTING:Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;

    goto :goto_0

    .line 864
    :pswitch_3
    sget-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;->DISCONNECTED:Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;

    goto :goto_0

    .line 856
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 841
    const-class v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;
    .locals 1

    .prologue
    .line 841
    sget-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;->$VALUES:[Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    .line 852
    iget v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;->value:I

    return v0
.end method
