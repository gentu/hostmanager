.class public final enum Lcom/samsung/android/hostmanager/connectionmanager/Event$CMState;
.super Ljava/lang/Enum;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CMState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/hostmanager/connectionmanager/Event$CMState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/hostmanager/connectionmanager/Event$CMState;

.field public static final enum CM_AVAILABLE:Lcom/samsung/android/hostmanager/connectionmanager/Event$CMState;

.field public static final enum CM_RECOVERY:Lcom/samsung/android/hostmanager/connectionmanager/Event$CMState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$CMState;

    const-string v1, "CM_AVAILABLE"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/Event$CMState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$CMState;->CM_AVAILABLE:Lcom/samsung/android/hostmanager/connectionmanager/Event$CMState;

    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$CMState;

    const-string v1, "CM_RECOVERY"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/hostmanager/connectionmanager/Event$CMState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$CMState;->CM_RECOVERY:Lcom/samsung/android/hostmanager/connectionmanager/Event$CMState;

    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/hostmanager/connectionmanager/Event$CMState;

    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/Event$CMState;->CM_AVAILABLE:Lcom/samsung/android/hostmanager/connectionmanager/Event$CMState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/Event$CMState;->CM_RECOVERY:Lcom/samsung/android/hostmanager/connectionmanager/Event$CMState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$CMState;->$VALUES:[Lcom/samsung/android/hostmanager/connectionmanager/Event$CMState;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/Event$CMState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    const-class v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$CMState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$CMState;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/hostmanager/connectionmanager/Event$CMState;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$CMState;->$VALUES:[Lcom/samsung/android/hostmanager/connectionmanager/Event$CMState;

    invoke-virtual {v0}, [Lcom/samsung/android/hostmanager/connectionmanager/Event$CMState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/hostmanager/connectionmanager/Event$CMState;

    return-object v0
.end method
