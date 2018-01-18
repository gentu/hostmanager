.class public final enum Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;
.super Ljava/lang/Enum;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ServiceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

.field public static final enum ALL:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

.field public static final enum GATT:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

.field public static final enum HFP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

.field public static final enum PAN:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

.field public static final enum SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

.field public static final enum SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

.field public static final enum WIFIP2P:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    const-string v1, "SCS"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    const-string v1, "GATT"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->GATT:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    const-string v1, "PAN"

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->PAN:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    const-string v1, "HFP"

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->HFP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    const-string v1, "SPP"

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    const-string v1, "WIFIP2P"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->WIFIP2P:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    const-string v1, "ALL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ALL:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    .line 10
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->GATT:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->PAN:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->HFP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->WIFIP2P:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ALL:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->$VALUES:[Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->$VALUES:[Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v0}, [Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    return-object v0
.end method
