.class final Lcom/sec/android/api/iface/CVMessage$1;
.super Ljava/lang/Object;
.source "CVMessage.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/api/iface/CVMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/sec/android/api/iface/CVMessage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/api/iface/CVMessage;
    .locals 2
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 198
    new-instance v0, Lcom/sec/android/api/iface/CVMessage;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sec/android/api/iface/CVMessage;-><init>(Landroid/os/Parcel;Lcom/sec/android/api/iface/CVMessage$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Lcom/sec/android/api/iface/CVMessage$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/api/iface/CVMessage;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sec/android/api/iface/CVMessage;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 204
    new-array v0, p1, [Lcom/sec/android/api/iface/CVMessage;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Lcom/sec/android/api/iface/CVMessage$1;->newArray(I)[Lcom/sec/android/api/iface/CVMessage;

    move-result-object v0

    return-object v0
.end method
