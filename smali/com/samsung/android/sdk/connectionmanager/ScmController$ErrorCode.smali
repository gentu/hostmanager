.class final enum Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;
.super Ljava/lang/Enum;
.source "ScmController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/connectionmanager/ScmController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

.field public static final enum ACCESSORY_FRAMEWORK_INCOMPATIBLE:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

.field public static final enum SCS_ACCOUNT_AUTHENTICATION_FAILED:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

.field public static final enum SCS_ACCOUNT_INITIALIZATION_FAILED:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

.field public static final enum SCS_ACCOUNT_NOT_FOUND:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

.field public static final enum SPP_CLOSE_FAILED:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

.field public static final enum SPP_CONNECT_FAILED:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

.field public static final enum SPP_CREATION_FAILED:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

.field public static final enum SPP_FATAL:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

.field public static final enum SPP_READ_WRITE_FAILED:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

.field public static final enum WIFIP2P_CONNECT_BUSY:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

.field public static final enum WIFIP2P_CONNECT_ERROR:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

.field public static final enum WIFIP2P_CONNECT_NOT_SUPPORTED:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

.field public static final enum WIFIP2P_CONNECT_TIMEOUT:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;


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

    .line 973
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

    const-string v1, "SPP_CLOSE_FAILED"

    invoke-direct {v0, v1, v4, v4}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;->SPP_CLOSE_FAILED:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

    .line 974
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

    const-string v1, "SPP_CONNECT_FAILED"

    invoke-direct {v0, v1, v5, v5}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;->SPP_CONNECT_FAILED:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

    .line 975
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

    const-string v1, "SPP_CREATION_FAILED"

    invoke-direct {v0, v1, v6, v6}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;->SPP_CREATION_FAILED:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

    .line 976
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

    const-string v1, "SPP_READ_WRITE_FAILED"

    invoke-direct {v0, v1, v7, v7}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;->SPP_READ_WRITE_FAILED:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

    .line 977
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

    const-string v1, "SPP_FATAL"

    invoke-direct {v0, v1, v8, v8}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;->SPP_FATAL:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

    .line 978
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

    const-string v1, "ACCESSORY_FRAMEWORK_INCOMPATIBLE"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;->ACCESSORY_FRAMEWORK_INCOMPATIBLE:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

    .line 979
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

    const-string v1, "WIFIP2P_CONNECT_ERROR"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;->WIFIP2P_CONNECT_ERROR:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

    .line 980
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

    const-string v1, "WIFIP2P_CONNECT_TIMEOUT"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;->WIFIP2P_CONNECT_TIMEOUT:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

    .line 981
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

    const-string v1, "WIFIP2P_CONNECT_BUSY"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;->WIFIP2P_CONNECT_BUSY:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

    .line 982
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

    const-string v1, "WIFIP2P_CONNECT_NOT_SUPPORTED"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;->WIFIP2P_CONNECT_NOT_SUPPORTED:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

    .line 983
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

    const-string v1, "SCS_ACCOUNT_INITIALIZATION_FAILED"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;->SCS_ACCOUNT_INITIALIZATION_FAILED:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

    .line 984
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

    const-string v1, "SCS_ACCOUNT_AUTHENTICATION_FAILED"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;->SCS_ACCOUNT_AUTHENTICATION_FAILED:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

    .line 985
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

    const-string v1, "SCS_ACCOUNT_NOT_FOUND"

    const/16 v2, 0xc

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;->SCS_ACCOUNT_NOT_FOUND:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

    .line 972
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

    sget-object v1, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;->SPP_CLOSE_FAILED:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;->SPP_CONNECT_FAILED:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;->SPP_CREATION_FAILED:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;->SPP_READ_WRITE_FAILED:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;->SPP_FATAL:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;->ACCESSORY_FRAMEWORK_INCOMPATIBLE:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;->WIFIP2P_CONNECT_ERROR:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;->WIFIP2P_CONNECT_TIMEOUT:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;->WIFIP2P_CONNECT_BUSY:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;->WIFIP2P_CONNECT_NOT_SUPPORTED:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;->SCS_ACCOUNT_INITIALIZATION_FAILED:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;->SCS_ACCOUNT_AUTHENTICATION_FAILED:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;->SCS_ACCOUNT_NOT_FOUND:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;->$VALUES:[Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

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
    .line 989
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 990
    iput p3, p0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;->value:I

    .line 991
    return-void
.end method

.method public static forValue(I)Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 998
    packed-switch p0, :pswitch_data_0

    .line 1026
    sget-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;->SPP_CLOSE_FAILED:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

    :goto_0
    return-object v0

    .line 1000
    :pswitch_0
    sget-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;->SPP_CLOSE_FAILED:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

    goto :goto_0

    .line 1002
    :pswitch_1
    sget-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;->SPP_CONNECT_FAILED:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

    goto :goto_0

    .line 1004
    :pswitch_2
    sget-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;->SPP_CREATION_FAILED:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

    goto :goto_0

    .line 1006
    :pswitch_3
    sget-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;->SPP_READ_WRITE_FAILED:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

    goto :goto_0

    .line 1008
    :pswitch_4
    sget-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;->SPP_FATAL:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

    goto :goto_0

    .line 1010
    :pswitch_5
    sget-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;->ACCESSORY_FRAMEWORK_INCOMPATIBLE:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

    goto :goto_0

    .line 1012
    :pswitch_6
    sget-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;->WIFIP2P_CONNECT_ERROR:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

    goto :goto_0

    .line 1014
    :pswitch_7
    sget-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;->WIFIP2P_CONNECT_BUSY:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

    goto :goto_0

    .line 1016
    :pswitch_8
    sget-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;->WIFIP2P_CONNECT_TIMEOUT:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

    goto :goto_0

    .line 1018
    :pswitch_9
    sget-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;->WIFIP2P_CONNECT_NOT_SUPPORTED:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

    goto :goto_0

    .line 1020
    :pswitch_a
    sget-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;->SCS_ACCOUNT_INITIALIZATION_FAILED:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

    goto :goto_0

    .line 1022
    :pswitch_b
    sget-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;->SCS_ACCOUNT_AUTHENTICATION_FAILED:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

    goto :goto_0

    .line 1024
    :pswitch_c
    sget-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;->SCS_ACCOUNT_NOT_FOUND:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

    goto :goto_0

    .line 998
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
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 972
    const-class v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;
    .locals 1

    .prologue
    .line 972
    sget-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;->$VALUES:[Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    .line 994
    iget v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;->value:I

    return v0
.end method
