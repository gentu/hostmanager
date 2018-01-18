.class public Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice$Builder;
.super Ljava/lang/Object;
.source "ScmWearableDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice$Builder;->mAddress:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    .locals 3

    .prologue
    .line 37
    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice$Builder;->mAddress:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice$Builder;->mAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 38
    :cond_0
    const/4 v1, 0x0

    .line 44
    :goto_0
    return-object v1

    .line 40
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 42
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "BUNDLE_STRING_ADDRESS"

    iget-object v2, p0, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice$Builder;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    new-instance v1, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;

    invoke-direct {v1, v0}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;-><init>(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public setBTAddress(Ljava/lang/String;)Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice$Builder;
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice$Builder;->mAddress:Ljava/lang/String;

    .line 32
    return-object p0
.end method
