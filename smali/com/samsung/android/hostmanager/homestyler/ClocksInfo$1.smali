.class final Lcom/samsung/android/hostmanager/homestyler/ClocksInfo$1;
.super Ljava/lang/Object;
.source "ClocksInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;
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
        "Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 174
    new-instance v0, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 170
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 179
    new-array v0, p1, [Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 170
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo$1;->newArray(I)[Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;

    move-result-object v0

    return-object v0
.end method
