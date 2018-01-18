.class public final enum Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;
.super Ljava/lang/Enum;
.source "WifiP2pHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

.field public static final enum WIFI_P2P_HANDLER_IDLE:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

.field public static final enum WIFI_P2P_HANDLER_WAITING_CONNECT:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

.field public static final enum WIFI_P2P_HANDLER_WAITING_DISCONNECT:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

.field public static final enum WIFI_P2P_HANDLER_WAITING_DISCOVERY:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

.field public static final enum WIFI_P2P_HANDLER_WAITING_ENABLE:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

.field public static final enum WIFI_P2P_HANDLER_WAITING_SAP_CONNECT:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 67
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    const-string v1, "WIFI_P2P_HANDLER_IDLE"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;->WIFI_P2P_HANDLER_IDLE:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    .line 68
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    const-string v1, "WIFI_P2P_HANDLER_WAITING_ENABLE"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;->WIFI_P2P_HANDLER_WAITING_ENABLE:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    .line 69
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    const-string v1, "WIFI_P2P_HANDLER_WAITING_DISCOVERY"

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;->WIFI_P2P_HANDLER_WAITING_DISCOVERY:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    .line 70
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    const-string v1, "WIFI_P2P_HANDLER_WAITING_CONNECT"

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;->WIFI_P2P_HANDLER_WAITING_CONNECT:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    .line 71
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    const-string v1, "WIFI_P2P_HANDLER_WAITING_SAP_CONNECT"

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;->WIFI_P2P_HANDLER_WAITING_SAP_CONNECT:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    .line 72
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    const-string v1, "WIFI_P2P_HANDLER_WAITING_DISCONNECT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;->WIFI_P2P_HANDLER_WAITING_DISCONNECT:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    .line 66
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;->WIFI_P2P_HANDLER_IDLE:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;->WIFI_P2P_HANDLER_WAITING_ENABLE:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;->WIFI_P2P_HANDLER_WAITING_DISCOVERY:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;->WIFI_P2P_HANDLER_WAITING_CONNECT:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;->WIFI_P2P_HANDLER_WAITING_SAP_CONNECT:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;->WIFI_P2P_HANDLER_WAITING_DISCONNECT:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;->$VALUES:[Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

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
    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 66
    const-class v0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;->$VALUES:[Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    invoke-virtual {v0}, [Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    return-object v0
.end method
