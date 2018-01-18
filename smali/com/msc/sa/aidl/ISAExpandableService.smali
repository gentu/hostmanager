.class public interface abstract Lcom/msc/sa/aidl/ISAExpandableService;
.super Ljava/lang/Object;
.source "ISAExpandableService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/msc/sa/aidl/ISAExpandableService$Stub;
    }
.end annotation


# virtual methods
.method public abstract request(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/msc/sa/aidl/ISAExpandableCallback;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
