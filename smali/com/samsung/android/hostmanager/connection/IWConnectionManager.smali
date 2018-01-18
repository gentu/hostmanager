.class public interface abstract Lcom/samsung/android/hostmanager/connection/IWConnectionManager;
.super Ljava/lang/Object;
.source "IWConnectionManager.java"


# virtual methods
.method public abstract cancelConnect(Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/hostmanager/exception/InvalidBTAddressException;
        }
    .end annotation
.end method

.method public abstract checkBondedList(Ljava/lang/String;)Z
.end method

.method public abstract connectWearable(Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/hostmanager/exception/InvalidBTAddressException;
        }
    .end annotation
.end method

.method public abstract deleteController()V
.end method

.method public abstract disconnectWearable(Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/hostmanager/exception/InvalidBTAddressException;
        }
    .end annotation
.end method

.method public abstract getBondedDeviceList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getConnectedDeviceList(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSASocket(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;
.end method

.method public abstract getSASockets()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasProxy()Z
.end method

.method public abstract manageConnectionInfo(Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/hostmanager/exception/InvalidBTAddressException;
        }
    .end annotation
.end method

.method public abstract proxyInit(Ljava/lang/String;I)I
.end method

.method public abstract registerSAPListener(Lcom/samsung/android/hostmanager/connection/ISAPConnectionListener;)I
.end method

.method public abstract setAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V
.end method

.method public abstract setScsPreference(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;Z)V
.end method

.method public abstract shutdown()Z
.end method

.method public abstract startGetConnectdCMProxyState()Z
.end method

.method public abstract startScan()V
.end method

.method public abstract unregisterSAPListener(Lcom/samsung/android/hostmanager/connection/ISAPConnectionListener;)I
.end method
