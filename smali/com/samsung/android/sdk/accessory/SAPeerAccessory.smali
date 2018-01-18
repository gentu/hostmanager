.class public Lcom/samsung/android/sdk/accessory/SAPeerAccessory;
.super Ljava/lang/Object;
.source "SAPeerAccessory.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/sdk/accessory/SAPeerAccessory;",
            ">;"
        }
    .end annotation
.end field

.field static final DEFAULT_APDU_SIZE:I = 0x100000

.field static final DEFAULT_ENCRYPTION_PADDING_LENGTH:I = 0x0

.field static final DEFAULT_MXDU_SIZE:I = 0xfff4

.field static final DEFAULT_SSDU_SIZE:I = 0xfffa

.field static final TRANSPORT_ALL:I = 0xff

.field public static final TRANSPORT_BLE:I = 0x4

.field public static final TRANSPORT_BT:I = 0x2

.field public static final TRANSPORT_MOBILE:I = 0x10

.field public static final TRANSPORT_USB:I = 0x8

.field public static final TRANSPORT_WIFI:I = 0x1


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mApduSize:I

.field private mCompatabilityVersion:I

.field private mEncryptionPaddingLength:I

.field private mId:J

.field private mMxduSize:I

.field private mName:Ljava/lang/String;

.field private mProductId:Ljava/lang/String;

.field private mSsduSize:I

.field private mTransportType:I

.field private mUniqueId:Ljava/lang/String;

.field private mVendorId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 112
    return-void
.end method

.method constructor <init>(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "transportType"    # I
    .param p6, "productId"    # Ljava/lang/String;
    .param p7, "vendorId"    # Ljava/lang/String;
    .param p8, "ssduSize"    # I
    .param p9, "apduSize"    # I
    .param p10, "mxDuSize"    # I
    .param p11, "encryptionPaddingLength"    # I
    .param p12, "peerId"    # Ljava/lang/String;

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mCompatabilityVersion:I

    .line 140
    iput-wide p1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mId:J

    .line 141
    iput-object p3, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mAddress:Ljava/lang/String;

    .line 142
    iput-object p4, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mName:Ljava/lang/String;

    .line 143
    iput p5, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mTransportType:I

    .line 144
    iput-object p6, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mProductId:Ljava/lang/String;

    .line 145
    iput-object p7, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mVendorId:Ljava/lang/String;

    .line 146
    iput p8, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mSsduSize:I

    .line 147
    iput p9, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mApduSize:I

    .line 148
    iput p10, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mMxduSize:I

    .line 149
    iput p11, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mEncryptionPaddingLength:I

    .line 150
    iput-object p12, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mUniqueId:Ljava/lang/String;

    .line 151
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mCompatabilityVersion:I

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mId:J

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mAddress:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mName:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mTransportType:I

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mProductId:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mVendorId:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mSsduSize:I

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mUniqueId:Ljava/lang/String;

    .line 125
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mCompatabilityVersion:I

    if-nez v0, :cond_1

    .line 126
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->isMexSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mMxduSize:I

    .line 134
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mApduSize:I

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mEncryptionPaddingLength:I

    .line 136
    return-void

    .line 130
    :cond_1
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mCompatabilityVersion:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mMxduSize:I

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/sdk/accessory/SAPeerAccessory;)V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public getAccessoryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mUniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method getApduSize()I
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mApduSize:I

    return v0
.end method

.method getCompatibilityVersion()I
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mCompatabilityVersion:I

    return v0
.end method

.method getEncryptionPaddingLength()I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mEncryptionPaddingLength:I

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 176
    iget-wide v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mId:J

    return-wide v0
.end method

.method getMxduSize()I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mMxduSize:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mProductId:Ljava/lang/String;

    return-object v0
.end method

.method getSsduSize()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mSsduSize:I

    return v0
.end method

.method public getTransportType()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mTransportType:I

    return v0
.end method

.method public getVendorId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mVendorId:Ljava/lang/String;

    return-object v0
.end method

.method setCompatibilityVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 253
    iput p1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mCompatabilityVersion:I

    .line 254
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 285
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 286
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "PeerAccessory - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Id:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " Name:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " Address:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " TransportType:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mTransportType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " ProductId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mProductId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " VendorId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mVendorId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " APDU:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mApduSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " SSDU:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mSsduSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Accessory ID:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " MXDU:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mMxduSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " Encryption padding:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mEncryptionPaddingLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 298
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/16 v2, 0x8

    .line 262
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    iget-wide v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 264
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 266
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mTransportType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mProductId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mVendorId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 269
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mSsduSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mUniqueId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 271
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mCompatabilityVersion:I

    if-nez v0, :cond_1

    .line 272
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->isMexSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mMxduSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    :cond_0
    :goto_0
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mApduSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mEncryptionPaddingLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    return-void

    .line 275
    :cond_1
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mCompatabilityVersion:I

    if-lt v0, v2, :cond_0

    .line 277
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mMxduSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
