.class public Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/wifi/WifiP2pManager;
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
    .locals 0
    .param p1, "mgr"    # Landroid/net/wifi/p2p/WifiP2pManager;
    .param p2, "channel"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .prologue
    .line 9
    invoke-virtual {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager;->enableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 10
    return-void
.end method
