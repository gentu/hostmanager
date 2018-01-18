.class public interface abstract Lcom/sec/android/api/iface/IConnectionManager;
.super Ljava/lang/Object;
.source "IConnectionManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/api/iface/IConnectionManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract requestAsync(Ljava/lang/String;Lcom/sec/android/api/iface/CVMessage;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestSync(Ljava/lang/String;Lcom/sec/android/api/iface/CVMessage;)Lcom/sec/android/api/iface/CVMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract subscribeEvent(Ljava/lang/String;Lcom/sec/android/api/iface/CVMessage;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unsubscribeEvent(Ljava/lang/String;Lcom/sec/android/api/iface/CVMessage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
