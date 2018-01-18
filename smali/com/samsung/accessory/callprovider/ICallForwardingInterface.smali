.class public interface abstract Lcom/samsung/accessory/callprovider/ICallForwardingInterface;
.super Ljava/lang/Object;
.source "ICallForwardingInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/callprovider/ICallForwardingInterface$Stub;
    }
.end annotation


# virtual methods
.method public abstract getCallForwardingNumber(Lcom/samsung/accessory/callprovider/ICallForwardingCallbackInterface;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getCallForwardingNumberWithReason(Lcom/samsung/accessory/callprovider/ICallForwardingCallbackInterface;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setCallForwardingNumber(Lcom/samsung/accessory/callprovider/ICallForwardingCallbackInterface;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setCallForwardingNumberARS(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setCallForwardingNumberUSSD(Lcom/samsung/accessory/callprovider/ICallForwardingCallbackInterface;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setCallForwardingNumberWithReason(Lcom/samsung/accessory/callprovider/ICallForwardingCallbackInterface;Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
