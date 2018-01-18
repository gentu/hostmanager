.class interface abstract Lcom/samsung/android/sdk/connectionmanager/IConnector;
.super Ljava/lang/Object;
.source "IConnector.java"


# virtual methods
.method public abstract connect()V
.end method

.method public abstract destroyInstance()V
.end method

.method public abstract disconnect()V
.end method

.method public abstract isServiceConnected()Z
.end method

.method public abstract requestAsync(Lcom/sec/android/api/iface/CVMessage;Lcom/samsung/android/sdk/connectionmanager/ResponseHandler;)J
.end method

.method public abstract requestSync(Lcom/sec/android/api/iface/CVMessage;)Lcom/sec/android/api/iface/CVMessage;
.end method

.method public abstract subscribeEvent(ILandroid/os/Bundle;Lcom/samsung/android/sdk/connectionmanager/EventHandler;)Z
.end method

.method public abstract unsubscribeEvent(ILandroid/os/Bundle;Lcom/samsung/android/sdk/connectionmanager/EventHandler;)V
.end method
