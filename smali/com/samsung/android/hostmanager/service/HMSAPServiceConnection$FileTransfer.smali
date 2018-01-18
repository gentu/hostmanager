.class public interface abstract Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$FileTransfer;
.super Ljava/lang/Object;
.source "HMSAPServiceConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FileTransfer"
.end annotation


# virtual methods
.method public abstract onFileRequested(ILjava/lang/String;)V
.end method

.method public abstract onFileTransferFailed(Ljava/lang/String;)V
.end method

.method public abstract onTransferComplete(Ljava/lang/String;ILjava/lang/String;I)V
.end method
