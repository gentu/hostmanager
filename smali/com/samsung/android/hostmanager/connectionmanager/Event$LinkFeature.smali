.class public final enum Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;
.super Ljava/lang/Enum;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LinkFeature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;

.field public static final enum LINK_DUAL:Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;

.field public static final enum LINK_EDR:Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;

.field public static final enum LINK_LE:Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;

.field public static final enum UNKOWN:Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;

    const-string v1, "UNKOWN"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;->UNKOWN:Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;

    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;

    const-string v1, "LINK_EDR"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;->LINK_EDR:Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;

    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;

    const-string v1, "LINK_LE"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;->LINK_LE:Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;

    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;

    const-string v1, "LINK_DUAL"

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;->LINK_DUAL:Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;

    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;->UNKOWN:Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;->LINK_EDR:Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;->LINK_LE:Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;->LINK_DUAL:Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;->$VALUES:[Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;->$VALUES:[Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;

    invoke-virtual {v0}, [Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;

    return-object v0
.end method
