.class public interface abstract Lcom/samsung/android/hostmanager/connection/IWSocketManager;
.super Ljava/lang/Object;
.source "IWSocketManager.java"

# interfaces
.implements Lcom/samsung/android/hostmanager/connection/IWConnectionManager;


# virtual methods
.method public abstract addWearableSocket(Ljava/lang/String;Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/hostmanager/exception/InvalidBTAddressException;
        }
    .end annotation
.end method

.method public abstract broadcastSAPConnectionStatus(Ljava/lang/String;I)V
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

.method public abstract sendDataInSocket(Ljava/lang/String;[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/hostmanager/exception/InvalidSocketException;,
            Lcom/samsung/android/hostmanager/exception/InvalidBTAddressException;
        }
    .end annotation
.end method
