.class public interface abstract Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;
.super Ljava/lang/Object;
.source "ScmController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/connectionmanager/ScmController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ResponseListener"
.end annotation


# virtual methods
.method public abstract onCancel(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;Ljava/util/ArrayList;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract onConnect(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;Ljava/util/ArrayList;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract onCreateBond(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;I)V
.end method

.method public abstract onDisconnect(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;Ljava/util/ArrayList;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract onRemoveBond(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;I)V
.end method

.method public abstract onSetAccount(I)V
.end method

.method public abstract onStartScan(I)V
.end method

.method public abstract onStopScan(I)V
.end method
