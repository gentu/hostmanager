.class public Lcom/samsung/android/app/watchmanager/plugin/selibrary/wifi/WifiP2pManager;
.super Ljava/lang/Object;
.source "WifiP2pManager.java"

# interfaces
.implements Lcom/samsung/android/app/watchmanager/plugin/libinterface/wifi/WifiP2pManagerInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enableP2p(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V
    .locals 2
    .param p1, "mgr"    # Landroid/net/wifi/p2p/WifiP2pManager;
    .param p2, "channel"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .prologue
    .line 9
    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager;->semEnableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 14
    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "WifiP2pManager is NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
