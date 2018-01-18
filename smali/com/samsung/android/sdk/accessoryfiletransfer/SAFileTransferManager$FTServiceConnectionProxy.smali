.class Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;
.super Ljava/lang/Object;
.source "SAFileTransferManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FTServiceConnectionProxy"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPackageName:Ljava/lang/String;

.field private mService:Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;)V
    .locals 0
    .param p1, "sContext"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uService"    # Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;

    .prologue
    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 384
    iput-object p2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;->mPackageName:Ljava/lang/String;

    .line 385
    iput-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;->mContext:Landroid/content/Context;

    .line 386
    iput-object p3, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;->mService:Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;

    .line 387
    return-void
.end method


# virtual methods
.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method getService()Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;->mService:Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;

    return-object v0
.end method
