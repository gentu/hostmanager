.class public interface abstract Lcom/samsung/android/aidl/ICancelInstallCallback;
.super Ljava/lang/Object;
.source "ICancelInstallCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/aidl/ICancelInstallCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract cancelInstallResult(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
