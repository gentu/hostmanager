.class public interface abstract Lcom/samsung/accessory/api/ICMDeathCallback;
.super Ljava/lang/Object;
.source "ICMDeathCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/api/ICMDeathCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract getAppName()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
