.class public interface abstract Lcom/msc/sa/aidl/ISAExpandableCallback;
.super Ljava/lang/Object;
.source "ISAExpandableCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/msc/sa/aidl/ISAExpandableCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onReceiveResult(IZLandroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
