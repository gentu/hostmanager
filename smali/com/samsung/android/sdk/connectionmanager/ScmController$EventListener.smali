.class public interface abstract Lcom/samsung/android/sdk/connectionmanager/ScmController$EventListener;
.super Ljava/lang/Object;
.source "ScmController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/connectionmanager/ScmController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventListener"
.end annotation


# virtual methods
.method public abstract onBondStateChanged(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;I)V
.end method

.method public abstract onDeviceAdded(ILcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;)V
.end method

.method public abstract onError(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;I)V
.end method

.method public abstract onLinkStateChanged(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;I)V
.end method

.method public abstract onScanFinished()V
.end method

.method public abstract onServiceStateChanged(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;II)V
.end method

.method public abstract onStateChanged(I)V
.end method
