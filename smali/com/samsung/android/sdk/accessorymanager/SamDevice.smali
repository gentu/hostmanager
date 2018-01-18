.class public Lcom/samsung/android/sdk/accessorymanager/SamDevice;
.super Ljava/lang/Object;
.source "SamDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/sdk/accessorymanager/SamDevice;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private accessoryId:J

.field private accessoryName:Ljava/lang/String;

.field private mAddress:Ljava/lang/String;

.field private peerId:Ljava/lang/String;

.field private productId:Ljava/lang/String;

.field private transportType:I

.field private vendorId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 142
    new-instance v0, Lcom/samsung/android/sdk/accessorymanager/SamDevice$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/accessorymanager/SamDevice$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 152
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->mAddress:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->accessoryId:J

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->accessoryName:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->productId:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->transportType:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->vendorId:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->peerId:Ljava/lang/String;

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/sdk/accessorymanager/SamDevice;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "add"    # Ljava/lang/String;
    .param p2, "accId"    # J
    .param p4, "accName"    # Ljava/lang/String;
    .param p5, "product"    # Ljava/lang/String;
    .param p6, "transport"    # I
    .param p7, "vendor"    # Ljava/lang/String;
    .param p8, "peer"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->mAddress:Ljava/lang/String;

    .line 36
    iput-wide p2, p0, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->accessoryId:J

    .line 37
    iput-object p4, p0, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->accessoryName:Ljava/lang/String;

    .line 38
    iput-object p5, p0, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->productId:Ljava/lang/String;

    .line 39
    iput p6, p0, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->transportType:I

    .line 40
    iput-object p7, p0, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->vendorId:Ljava/lang/String;

    .line 41
    iput-object p8, p0, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->peerId:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public getAccessoryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->peerId:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->accessoryId:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->accessoryName:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getTransportType()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->transportType:I

    return v0
.end method

.method public getVendorId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->vendorId:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 133
    iget-object v0, p0, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-wide v0, p0, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->accessoryId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 135
    iget-object v0, p0, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->accessoryName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->productId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget v0, p0, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->transportType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget-object v0, p0, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->vendorId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->peerId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    return-void
.end method
