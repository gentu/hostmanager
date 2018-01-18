.class public interface abstract Lcom/samsung/accessory/api/ISAPeerAgentAuthCallback;
.super Ljava/lang/Object;
.source "ISAPeerAgentAuthCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/api/ISAPeerAgentAuthCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onPeerAgentAuthenticated(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
