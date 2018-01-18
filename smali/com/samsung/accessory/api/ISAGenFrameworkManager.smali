.class public interface abstract Lcom/samsung/accessory/api/ISAGenFrameworkManager;
.super Ljava/lang/Object;
.source "ISAGenFrameworkManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/api/ISAGenFrameworkManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract registerDeathCallback(JLcom/samsung/accessory/api/ICMDeathCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendCommand(JILandroid/os/Bundle;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
