.class public final enum Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$AgentErrorType;
.super Ljava/lang/Enum;
.source "SAAgentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AgentErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$AgentErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$AgentErrorType;

.field public static final enum FAIL:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$AgentErrorType;

.field public static final enum SUCCESS:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$AgentErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$AgentErrorType;

    const-string v1, "FAIL"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$AgentErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$AgentErrorType;->FAIL:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$AgentErrorType;

    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$AgentErrorType;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$AgentErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$AgentErrorType;->SUCCESS:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$AgentErrorType;

    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$AgentErrorType;

    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$AgentErrorType;->FAIL:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$AgentErrorType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$AgentErrorType;->SUCCESS:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$AgentErrorType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$AgentErrorType;->$VALUES:[Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$AgentErrorType;

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
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$AgentErrorType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    const-class v0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$AgentErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$AgentErrorType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$AgentErrorType;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$AgentErrorType;->$VALUES:[Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$AgentErrorType;

    invoke-virtual {v0}, [Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$AgentErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$AgentErrorType;

    return-object v0
.end method
