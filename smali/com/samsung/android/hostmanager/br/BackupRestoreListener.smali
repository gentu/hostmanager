.class public interface abstract Lcom/samsung/android/hostmanager/br/BackupRestoreListener;
.super Ljava/lang/Object;
.source "BackupRestoreListener.java"


# static fields
.field public static final BNR_APP_DATA_BACKUP:I = 0x5

.field public static final BNR_FROM_BACKUP:I = 0x1

.field public static final BNR_FROM_RESET:I = 0x4

.field public static final BNR_FROM_RESTORE_INSTALL:I = 0x2

.field public static final BNR_FROM_RESTORE_SETTING:I = 0x3


# virtual methods
.method public abstract onProgressCancel(I)V
.end method

.method public abstract onProgressComplete(ILjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onProgressError(II)V
.end method

.method public abstract onProgressRetry(I)V
.end method

.method public abstract onUpdate(Ljava/lang/String;I)V
.end method
