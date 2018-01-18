.class final Lcom/samsung/accessory/api/SAGenericAdapter$ICMDeathCallbackStub;
.super Lcom/samsung/accessory/api/ICMDeathCallback$Stub;
.source "SAGenericAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/api/SAGenericAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ICMDeathCallbackStub"
.end annotation


# instance fields
.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 341
    invoke-direct {p0}, Lcom/samsung/accessory/api/ICMDeathCallback$Stub;-><init>()V

    .line 342
    if-nez p1, :cond_0

    .line 343
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid packageName:null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_0
    iput-object p1, p0, Lcom/samsung/accessory/api/SAGenericAdapter$ICMDeathCallbackStub;->mPackageName:Ljava/lang/String;

    .line 346
    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 350
    iget-object v0, p0, Lcom/samsung/accessory/api/SAGenericAdapter$ICMDeathCallbackStub;->mPackageName:Ljava/lang/String;

    return-object v0
.end method
