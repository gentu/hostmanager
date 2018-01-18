.class public Lcom/samsung/android/sdk/accessory/SAPeerAgent;
.super Ljava/lang/Object;
.source "SAPeerAgent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/sdk/accessory/SAPeerAgent;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SAPeerAgent"


# instance fields
.field private mContainerId:Ljava/lang/String;

.field private mFriendlyName:Ljava/lang/String;

.field private mPeerAccessory:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

.field private mPeerId:Ljava/lang/String;

.field private mProfileVersion:Ljava/lang/String;

.field private mTransactionId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/accessory/SAPeerAgent$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 65
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAccessory;)V
    .locals 0
    .param p1, "peerId"    # Ljava/lang/String;
    .param p2, "containerId"    # Ljava/lang/String;
    .param p3, "aleName"    # Ljava/lang/String;
    .param p4, "profileVersion"    # Ljava/lang/String;
    .param p5, "peerAccessory"    # Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p3, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mFriendlyName:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mProfileVersion:Ljava/lang/String;

    .line 42
    iput-object p5, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerAccessory:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    .line 43
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerId:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mContainerId:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "peer"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 152
    if-nez p1, :cond_1

    .line 188
    :cond_0
    :goto_0
    return v1

    .line 155
    :cond_1
    instance-of v2, p1, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 156
    check-cast v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .line 158
    .local v0, "peerAgent":Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 159
    const-string v2, "SAPeerAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid peerAgent instance.Peer ID - this:null PeerAgent:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 161
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 162
    const-string v2, "SAPeerAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid peerAgent instance.Peer ID - this:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " PeerAgent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 167
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getContainerId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 168
    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getContainerId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 169
    const-string v2, "SAPeerAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid peerAgent instance.Container ID - this:null PeerAgent:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getContainerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 172
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mContainerId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getContainerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 173
    const-string v2, "SAPeerAgent"

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid peerAgent instance.Container ID - this:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mContainerId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " PeerAgent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 175
    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getContainerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 174
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 173
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 180
    :cond_5
    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getAccessory()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getId()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getAccessory()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    .line 181
    const-string v2, "SAPeerAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid peerAgent instance.Accessory ID - this:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getAccessory()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getAccessoryId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " PeerAgent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 182
    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getAccessory()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getAccessoryId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 181
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 185
    :cond_6
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public getAccessory()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerAccessory:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    return-object v0
.end method

.method public getAccessoryId()J
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerAccessory:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mFriendlyName:Ljava/lang/String;

    return-object v0
.end method

.method public getContainerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mContainerId:Ljava/lang/String;

    return-object v0
.end method

.method getEncryptionPaddingLength()I
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerAccessory:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getEncryptionPaddingLength()I

    move-result v0

    return v0
.end method

.method public getMaxAllowedDataSize()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerAccessory:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerAccessory:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getApduSize()I

    move-result v0

    .line 126
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x100000

    goto :goto_0
.end method

.method public getMaxAllowedMessageSize()I
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerAccessory:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerAccessory:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getApduSize()I

    move-result v0

    .line 141
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x100000

    goto :goto_0
.end method

.method getMxduSize()I
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerAccessory:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerAccessory:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getMxduSize()I

    move-result v0

    .line 225
    :goto_0
    return v0

    :cond_0
    const v0, 0xfff4

    goto :goto_0
.end method

.method public getPeerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerId:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mProfileVersion:Ljava/lang/String;

    return-object v0
.end method

.method getSsduSize()I
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerAccessory:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerAccessory:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getSsduSize()I

    move-result v0

    .line 217
    :goto_0
    return v0

    :cond_0
    const v0, 0xfffa

    goto :goto_0
.end method

.method getTransactionId()J
    .locals 2

    .prologue
    .line 234
    iget-wide v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mTransactionId:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 194
    const/16 v0, 0x11

    .line 195
    .local v0, "result":I
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 196
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mContainerId:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int v0, v3, v1

    .line 197
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerAccessory:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    if-nez v3, :cond_1

    :goto_1
    add-int v0, v1, v2

    .line 199
    return v0

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mContainerId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 198
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerAccessory:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerAccessory:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getId()J

    move-result-wide v4

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    goto :goto_1
.end method

.method setTransactionId(J)V
    .locals 1
    .param p1, "transactionId"    # J

    .prologue
    .line 230
    iput-wide p1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mTransactionId:J

    .line 231
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 244
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 245
    .local v0, "buffer":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PeerAgent - id:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "containerId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mContainerId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FriendlyName:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mFriendlyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Profile Version:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mProfileVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 249
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerAccessory:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 250
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    .line 204
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mContainerId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mFriendlyName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mProfileVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerAccessory:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 210
    return-void
.end method
