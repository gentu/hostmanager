.class public Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/connectivitymanager/ConnectivityManager;
.super Ljava/lang/Object;
.source "ConnectivityManager.java"

# interfaces
.implements Lcom/samsung/android/app/watchmanager/plugin/libinterface/connectivitymanager/ConnectivityManagerInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isMobileDataEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 19
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    return v1
.end method

.method public isNetworkSupported(Landroid/net/ConnectivityManager;I)Z
    .locals 1
    .param p1, "cm"    # Landroid/net/ConnectivityManager;
    .param p2, "type"    # I

    .prologue
    .line 13
    invoke-virtual {p1, p2}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    return v0
.end method
