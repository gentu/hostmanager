.class public interface abstract Lcom/samsung/android/hostmanager/aidl/IAPPHostManagerListener;
.super Ljava/lang/Object;
.source "IAPPHostManagerListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hostmanager/aidl/IAPPHostManagerListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onReceiveDeviceConnected(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onReceiveDeviceDisconnected(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onWearableStatusInfo(Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
