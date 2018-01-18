.class public interface abstract Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;
.super Ljava/lang/Object;
.source "SAFileTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "IFileTransferCallback"
.end annotation


# virtual methods
.method public abstract onCancelAllCompleted([II)V
.end method

.method public abstract onProgressChanged(II)V
.end method

.method public abstract onTransferCompleted(ILjava/lang/String;I)V
.end method

.method public abstract onTransferRequested(ILjava/lang/String;)V
.end method
