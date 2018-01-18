.class public final enum Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ConnectionLostReason;
.super Ljava/lang/Enum;
.source "SAAgentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnectionLostReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ConnectionLostReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ConnectionLostReason;

.field public static final enum DEVICE_DETACHED:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ConnectionLostReason;

.field public static final enum PEER_DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ConnectionLostReason;

.field public static final enum UNKNOWN_REASON:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ConnectionLostReason;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ConnectionLostReason;

    const-string v1, "DEVICE_DETACHED"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ConnectionLostReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ConnectionLostReason;->DEVICE_DETACHED:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ConnectionLostReason;

    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ConnectionLostReason;

    const-string v1, "PEER_DISCONNECTED"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ConnectionLostReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ConnectionLostReason;->PEER_DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ConnectionLostReason;

    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ConnectionLostReason;

    const-string v1, "UNKNOWN_REASON"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ConnectionLostReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ConnectionLostReason;->UNKNOWN_REASON:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ConnectionLostReason;

    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ConnectionLostReason;

    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ConnectionLostReason;->DEVICE_DETACHED:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ConnectionLostReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ConnectionLostReason;->PEER_DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ConnectionLostReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ConnectionLostReason;->UNKNOWN_REASON:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ConnectionLostReason;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ConnectionLostReason;->$VALUES:[Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ConnectionLostReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ConnectionLostReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    const-class v0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ConnectionLostReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ConnectionLostReason;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ConnectionLostReason;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ConnectionLostReason;->$VALUES:[Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ConnectionLostReason;

    invoke-virtual {v0}, [Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ConnectionLostReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ConnectionLostReason;

    return-object v0
.end method
