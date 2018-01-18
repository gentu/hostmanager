.class public Lcom/sec/android/api/iface/CVMessage;
.super Ljava/lang/Object;
.source "CVMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/android/api/iface/CVMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final CVM_MESSAGE_TYPE_EVENT:I = 0x4

.field public static final CVM_MESSAGE_TYPE_REQUEST:I = 0x2

.field public static final CVM_MESSAGE_TYPE_RESPONSE:I = 0x3

.field public static final CVM_MESSAGE_TYPE_UNDEF:I = 0x1

.field public static final EVT_MSG_KEY:Ljava/lang/String; = "EVT_MSG_KEY"

.field public static final RES_MSG_KEY:Ljava/lang/String; = "RES_MSG_KEY"


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private mCommandID:I

.field private mMessageID:J

.field private mReplyMessenger:Landroid/os/Messenger;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 194
    new-instance v0, Lcom/sec/android/api/iface/CVMessage$1;

    invoke-direct {v0}, Lcom/sec/android/api/iface/CVMessage$1;-><init>()V

    sput-object v0, Lcom/sec/android/api/iface/CVMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/api/iface/CVMessage;-><init>(IILandroid/os/Bundle;)V

    .line 42
    return-void
.end method

.method public constructor <init>(IILandroid/os/Bundle;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "cmd"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lcom/sec/android/api/iface/CVMessage;->mType:I

    .line 46
    iput p2, p0, Lcom/sec/android/api/iface/CVMessage;->mCommandID:I

    .line 47
    iput-object p3, p0, Lcom/sec/android/api/iface/CVMessage;->mBundle:Landroid/os/Bundle;

    .line 49
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/api/iface/CVMessage;->mMessageID:J

    .line 50
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    invoke-virtual {p0, p1}, Lcom/sec/android/api/iface/CVMessage;->readFromParcel(Landroid/os/Parcel;)V

    .line 192
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/android/api/iface/CVMessage$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/sec/android/api/iface/CVMessage$1;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/sec/android/api/iface/CVMessage;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public final getBundle()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sec/android/api/iface/CVMessage;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/sec/android/api/iface/CVMessage;->mBundle:Landroid/os/Bundle;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/sec/android/api/iface/CVMessage;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 143
    iget-object v0, p0, Lcom/sec/android/api/iface/CVMessage;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getCmdID()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/sec/android/api/iface/CVMessage;->mCommandID:I

    return v0
.end method

.method public final getEventID()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/sec/android/api/iface/CVMessage;->mCommandID:I

    return v0
.end method

.method public final getMessenger()Landroid/os/Messenger;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/sec/android/api/iface/CVMessage;->mReplyMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method public final getMsgID()J
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/sec/android/api/iface/CVMessage;->mMessageID:J

    return-wide v0
.end method

.method public final getMsgType()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/sec/android/api/iface/CVMessage;->mType:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/android/api/iface/CVMessage;->mType:I

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/api/iface/CVMessage;->mMessageID:J

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/android/api/iface/CVMessage;->mCommandID:I

    .line 185
    const-class v0, Lcom/sec/android/api/iface/CVMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/api/iface/CVMessage;->mBundle:Landroid/os/Bundle;

    .line 186
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    iput-object v0, p0, Lcom/sec/android/api/iface/CVMessage;->mReplyMessenger:Landroid/os/Messenger;

    .line 188
    return-void
.end method

.method public setBundle(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/sec/android/api/iface/CVMessage;->mBundle:Landroid/os/Bundle;

    .line 131
    return-void
.end method

.method public setCmdID(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/sec/android/api/iface/CVMessage;->mCommandID:I

    .line 95
    return-void
.end method

.method public setEventID(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 112
    iput p1, p0, Lcom/sec/android/api/iface/CVMessage;->mCommandID:I

    .line 113
    return-void
.end method

.method public setMessenger(Landroid/os/Messenger;)V
    .locals 0
    .param p1, "messenger"    # Landroid/os/Messenger;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/sec/android/api/iface/CVMessage;->mReplyMessenger:Landroid/os/Messenger;

    .line 153
    return-void
.end method

.method public setMsgID(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 76
    iput-wide p1, p0, Lcom/sec/android/api/iface/CVMessage;->mMessageID:J

    .line 77
    return-void
.end method

.method public setMsgType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/sec/android/api/iface/CVMessage;->mType:I

    .line 59
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 172
    iget v0, p0, Lcom/sec/android/api/iface/CVMessage;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    iget-wide v0, p0, Lcom/sec/android/api/iface/CVMessage;->mMessageID:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 174
    iget v0, p0, Lcom/sec/android/api/iface/CVMessage;->mCommandID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    iget-object v0, p0, Lcom/sec/android/api/iface/CVMessage;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 176
    iget-object v0, p0, Lcom/sec/android/api/iface/CVMessage;->mReplyMessenger:Landroid/os/Messenger;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 178
    return-void
.end method
