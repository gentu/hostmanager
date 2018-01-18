.class final enum Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GroupInfo;
.super Ljava/lang/Enum;
.source "WifiP2pHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "GroupInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GroupInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GroupInfo;

.field public static final enum GROUP_CLIENT:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GroupInfo;

.field public static final enum GROUP_OWNER:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GroupInfo;

.field public static final enum UNKNOWN:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GroupInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 76
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GroupInfo;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GroupInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GroupInfo;->UNKNOWN:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GroupInfo;

    .line 77
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GroupInfo;

    const-string v1, "GROUP_OWNER"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GroupInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GroupInfo;->GROUP_OWNER:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GroupInfo;

    .line 78
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GroupInfo;

    const-string v1, "GROUP_CLIENT"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GroupInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GroupInfo;->GROUP_CLIENT:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GroupInfo;

    .line 75
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GroupInfo;

    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GroupInfo;->UNKNOWN:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GroupInfo;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GroupInfo;->GROUP_OWNER:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GroupInfo;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GroupInfo;->GROUP_CLIENT:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GroupInfo;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GroupInfo;->$VALUES:[Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GroupInfo;

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
    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GroupInfo;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 75
    const-class v0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GroupInfo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GroupInfo;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GroupInfo;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GroupInfo;->$VALUES:[Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GroupInfo;

    invoke-virtual {v0}, [Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GroupInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GroupInfo;

    return-object v0
.end method
