.class public Lcom/samsung/android/hostmanager/aidl/NotificationApp;
.super Ljava/lang/Object;
.source "NotificationApp.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/NotificationApp;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_MAX_BYTE:I = 0x19


# instance fields
.field private category:I

.field private mAppId:I

.field private mLabel:Ljava/lang/String;

.field private mMark:Z

.field private mMaxByte:I

.field private mPackageName:Ljava/lang/String;

.field private mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lcom/samsung/android/hostmanager/aidl/NotificationApp$1;

    invoke-direct {v0}, Lcom/samsung/android/hostmanager/aidl/NotificationApp$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "maxByte"    # I
    .param p5, "mark"    # Z

    .prologue
    .line 35
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 36
    iput p1, p0, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->mUserId:I

    .line 37
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->readFromParcel(Landroid/os/Parcel;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "maxByte"    # I
    .param p4, "mark"    # Z

    .prologue
    const/4 v0, -0x1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->mPackageName:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->mLabel:Ljava/lang/String;

    .line 27
    iput v0, p0, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->mAppId:I

    .line 28
    iput p3, p0, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->mMaxByte:I

    .line 29
    iput-boolean p4, p0, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->mMark:Z

    .line 30
    iput v0, p0, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->category:I

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->mUserId:I

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZI)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "maxByte"    # I
    .param p4, "mark"    # Z
    .param p5, "category"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 40
    iput p5, p0, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->category:I

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->mUserId:I

    .line 42
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public getAppId()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->mAppId:I

    return v0
.end method

.method public getCategory()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->category:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getMark()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->mMark:Z

    return v0
.end method

.method public getMaxByte()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->mMaxByte:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->mUserId:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->mUserId:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->mPackageName:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->mLabel:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->mAppId:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->mMaxByte:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->mMark:Z

    .line 75
    return-void

    .line 74
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAppId(I)V
    .locals 0
    .param p1, "appId"    # I

    .prologue
    .line 111
    iput p1, p0, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->mAppId:I

    .line 112
    return-void
.end method

.method public setCategory(I)V
    .locals 0
    .param p1, "category"    # I

    .prologue
    .line 135
    iput p1, p0, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->category:I

    .line 136
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->mLabel:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setMark(Z)V
    .locals 0
    .param p1, "mark"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->mMark:Z

    .line 128
    return-void
.end method

.method public setMaxByte(I)V
    .locals 0
    .param p1, "maxByte"    # I

    .prologue
    .line 119
    iput p1, p0, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->mMaxByte:I

    .line 120
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->mPackageName:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setUserId(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 142
    iput p1, p0, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->mUserId:I

    .line 143
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 60
    iget v0, p0, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->mUserId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget v0, p0, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->mAppId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget v0, p0, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->mMaxByte:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->mMark:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 66
    return-void

    .line 65
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
