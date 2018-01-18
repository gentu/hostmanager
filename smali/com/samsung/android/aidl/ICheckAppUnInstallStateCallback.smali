.class public interface abstract Lcom/samsung/android/aidl/ICheckAppUnInstallStateCallback;
.super Ljava/lang/Object;
.source "ICheckAppUnInstallStateCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/aidl/ICheckAppUnInstallStateCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract packageUnInstalled(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
