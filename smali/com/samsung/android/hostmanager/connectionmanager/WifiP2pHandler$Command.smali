.class Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;
.super Ljava/lang/Object;
.source "WifiP2pHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Command"
.end annotation


# static fields
.field public static final FROM_WEARABLE:I = 0x1

.field public static final HOST_INITIATION:I


# instance fields
.field private final btAddress:Ljava/lang/String;

.field private command:I

.field reqOrRes:I

.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

.field private final wifiP2pAddress:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;
    .param p2, "btAddress"    # Ljava/lang/String;
    .param p3, "wifiP2pAddress"    # Ljava/lang/String;
    .param p4, "command"    # I

    .prologue
    .line 1136
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1137
    iput-object p2, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;->btAddress:Ljava/lang/String;

    .line 1138
    iput-object p3, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;->wifiP2pAddress:Ljava/lang/String;

    .line 1139
    iput p4, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;->command:I

    .line 1140
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;->reqOrRes:I

    .line 1141
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # I
    .param p5, "x4"    # Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$1;

    .prologue
    .line 1126
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getBtAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;->btAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getCommand()I
    .locals 1

    .prologue
    .line 1151
    iget v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;->command:I

    return v0
.end method

.method public getCommandFrom()I
    .locals 1

    .prologue
    .line 1145
    iget v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;->reqOrRes:I

    return v0
.end method

.method public getWifiP2pAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;->wifiP2pAddress:Ljava/lang/String;

    return-object v0
.end method

.method public setCommandFrom(I)V
    .locals 0
    .param p1, "reqOrRes"    # I

    .prologue
    .line 1148
    iput p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;->reqOrRes:I

    .line 1149
    return-void
.end method
