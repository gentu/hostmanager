.class abstract Lcom/samsung/android/sdk/connectionmanager/EventHandler;
.super Landroid/os/Handler;
.source "EventHandler.java"


# direct methods
.method protected constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 24
    return-void
.end method


# virtual methods
.method public abstract handleEventMessage(Lcom/sec/android/api/iface/CVMessage;)V
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 34
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 35
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 37
    const-string v2, "EVT_MSG_KEY"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/sec/android/api/iface/CVMessage;

    .line 38
    .local v1, "cvm":Lcom/sec/android/api/iface/CVMessage;
    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/connectionmanager/EventHandler;->handleEventMessage(Lcom/sec/android/api/iface/CVMessage;)V

    .line 40
    return-void
.end method
