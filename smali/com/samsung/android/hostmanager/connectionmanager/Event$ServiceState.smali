.class public final enum Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;
.super Ljava/lang/Enum;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ServiceState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

.field public static final enum CONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

.field public static final enum CONNECTING:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

.field public static final enum DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

.field public static final enum DISCONNECTING:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

.field public static final enum LOGGED_OUT:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

.field public static final enum UNKNOWN:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->UNKNOWN:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTING:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    const-string v1, "DISCONNECTED"

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    const-string v1, "DISCONNECTING"

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTING:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    const-string v1, "LOGGED_OUT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->LOGGED_OUT:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    .line 18
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->UNKNOWN:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTING:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTING:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->LOGGED_OUT:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->$VALUES:[Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->$VALUES:[Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v0}, [Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    return-object v0
.end method
