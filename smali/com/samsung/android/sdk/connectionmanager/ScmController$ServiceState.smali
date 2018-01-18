.class final enum Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;
.super Ljava/lang/Enum;
.source "ScmController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/connectionmanager/ScmController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ServiceState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;

.field public static final enum CONNECTED:Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;

.field public static final enum CONNECTING:Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;

.field public static final enum DISCONNECTED:Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;

.field public static final enum DISCONNECTING:Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;

.field public static final enum LOGGED_IN:Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;

.field public static final enum LOGGED_OUT:Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;


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

    .line 871
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v4, v4}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;->CONNECTING:Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;

    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v5, v5}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;->CONNECTED:Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;

    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;

    const-string v1, "DISCONNECTING"

    invoke-direct {v0, v1, v6, v6}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;->DISCONNECTING:Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;

    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;

    const-string v1, "DISCONNECTED"

    invoke-direct {v0, v1, v7, v7}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;->DISCONNECTED:Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;

    .line 872
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;

    const-string v1, "LOGGED_IN"

    invoke-direct {v0, v1, v8, v8}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;->LOGGED_IN:Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;

    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;

    const-string v1, "LOGGED_OUT"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;->LOGGED_OUT:Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;

    .line 870
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;

    sget-object v1, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;->CONNECTING:Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;->CONNECTED:Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;->DISCONNECTING:Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;->DISCONNECTED:Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;->LOGGED_IN:Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;->LOGGED_OUT:Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;->$VALUES:[Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;

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
    .line 876
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 877
    iput p3, p0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;->value:I

    .line 878
    return-void
.end method

.method public static forValue(I)Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 885
    packed-switch p0, :pswitch_data_0

    .line 899
    sget-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;->DISCONNECTED:Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;

    :goto_0
    return-object v0

    .line 887
    :pswitch_0
    sget-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;->CONNECTING:Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;

    goto :goto_0

    .line 889
    :pswitch_1
    sget-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;->CONNECTED:Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;

    goto :goto_0

    .line 891
    :pswitch_2
    sget-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;->DISCONNECTING:Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;

    goto :goto_0

    .line 893
    :pswitch_3
    sget-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;->DISCONNECTED:Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;

    goto :goto_0

    .line 895
    :pswitch_4
    sget-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;->LOGGED_IN:Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;

    goto :goto_0

    .line 897
    :pswitch_5
    sget-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;->LOGGED_OUT:Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;

    goto :goto_0

    .line 885
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 870
    const-class v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;
    .locals 1

    .prologue
    .line 870
    sget-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;->$VALUES:[Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    .line 881
    iget v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;->value:I

    return v0
.end method
