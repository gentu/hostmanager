.class public Lcom/samsung/android/sdk/accessory/SAServiceProfile;
.super Ljava/lang/Object;
.source "SAServiceProfile.java"


# static fields
.field public static final ROLE_CONSUMER:I = 0x0

.field public static final ROLE_PROVIDER:I = 0x1

.field protected static final SDK_VERSION:Ljava/lang/String; = "SDK_VERSION"

.field public static final SERVICE_LIMIT_ANY:I = 0x0

.field public static final SERVICE_LIMIT_ONE_ACCESSORY:I = 0x1

.field public static final SERVICE_LIMIT_ONE_PEERAGENT:I = 0x2

.field public static final TRANSPORT_TYPE_BLE:I = 0x4

.field public static final TRANSPORT_TYPE_BT:I = 0x1

.field public static final TRANSPORT_TYPE_USB:I = 0x8

.field public static final TRANSPORT_TYPE_WIFI:I = 0x2


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mId:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mRole:Ljava/lang/String;

.field private mServiceChannelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/accessory/SAServiceChannel;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceImpl:Ljava/lang/String;

.field private mServiceLimit:I

.field private mServiceTimeout:I

.field private mTransportType:I

.field private mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;)V
    .locals 1
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "role"    # Ljava/lang/String;
    .param p5, "serviceImpl"    # Ljava/lang/String;
    .param p6, "version"    # Ljava/lang/String;
    .param p7, "serviceLimit"    # I
    .param p8, "serviceTimeout"    # I
    .param p9, "transportType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/accessory/SAServiceChannel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p10, "serviceChannelList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdk/accessory/SAServiceChannel;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->mServiceChannelList:Ljava/util/List;

    .line 38
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->mAppName:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->mId:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->mName:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->mRole:Ljava/lang/String;

    .line 42
    iput-object p5, p0, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->mServiceImpl:Ljava/lang/String;

    .line 43
    iput-object p6, p0, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->mVersion:Ljava/lang/String;

    .line 44
    iput p7, p0, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->mServiceLimit:I

    .line 45
    iput p8, p0, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->mServiceTimeout:I

    .line 46
    iput p9, p0, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->mTransportType:I

    .line 47
    iput-object p10, p0, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->mServiceChannelList:Ljava/util/List;

    .line 48
    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getRole()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->mRole:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceChannelList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/accessory/SAServiceChannel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->mServiceChannelList:Ljava/util/List;

    return-object v0
.end method

.method public getServiceImpl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->mServiceImpl:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceLimit()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->mServiceLimit:I

    return v0
.end method

.method public getServiceTimeout()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->mServiceTimeout:I

    return v0
.end method

.method public getTransportType()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->mTransportType:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->mVersion:Ljava/lang/String;

    return-object v0
.end method
