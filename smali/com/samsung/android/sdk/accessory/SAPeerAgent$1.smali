.class Lcom/samsung/android/sdk/accessory/SAPeerAgent$1;
.super Ljava/lang/Object;
.source "SAPeerAgent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SAPeerAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/samsung/android/sdk/accessory/SAPeerAgent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    .locals 9
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 57
    .local v6, "frameworkVersion":I
    const-string v0, "SAPeerAgent"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Peeragent:Framework version:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "peerId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, "containerId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, "aleName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 62
    .local v4, "profileVersion":Ljava/lang/String;
    const-class v0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    .line 63
    .local v5, "peerAccessory":Lcom/samsung/android/sdk/accessory/SAPeerAccessory;
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAccessory;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 51
    new-array v0, p1, [Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent$1;->newArray(I)[Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    move-result-object v0

    return-object v0
.end method
