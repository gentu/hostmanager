.class public Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;
.super Ljava/lang/Object;
.source "CallForwardSetup.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCarrier:Ljava/lang/String;

.field private mCarrierReq:Ljava/lang/String;

.field private mCfSupport:Z

.field private mCfType:Ljava/lang/String;

.field private mDisableNum:Ljava/lang/String;

.field private mFreeSrv:Z

.field private mFwdNum:Ljava/lang/String;

.field private mMcc:Ljava/lang/String;

.field private mMnc:Ljava/lang/String;

.field private mMultiSim:Z

.field private mMultiSimCategory:Ljava/lang/String;

.field private mPrimaryNum:Ljava/lang/String;

.field private mSimPolicy:Ljava/lang/String;

.field private mSmsFwd:Z

.field private mSupportPrimary:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 238
    new-instance v0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup$1;

    invoke-direct {v0}, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->readFromParcel(Landroid/os/Parcel;)V

    .line 27
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p1, "cfSupport"    # Z
    .param p2, "cfType"    # Ljava/lang/String;
    .param p3, "carrier"    # Ljava/lang/String;
    .param p4, "mcc"    # Ljava/lang/String;
    .param p5, "mnc"    # Ljava/lang/String;
    .param p6, "simPolicy"    # Ljava/lang/String;
    .param p7, "freeSrv"    # Z
    .param p8, "fwdNum"    # Ljava/lang/String;
    .param p9, "disableNum"    # Ljava/lang/String;
    .param p10, "carrierReq"    # Ljava/lang/String;
    .param p11, "smsFwd"    # Z
    .param p12, "supportPrimary"    # Z
    .param p13, "primaryNum"    # Ljava/lang/String;
    .param p14, "multiSim"    # Z
    .param p15, "multiSimCategory"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mCfSupport:Z

    .line 32
    iput-object p2, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mCfType:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mCarrier:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mMcc:Ljava/lang/String;

    .line 35
    iput-object p5, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mMnc:Ljava/lang/String;

    .line 36
    iput-object p6, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mSimPolicy:Ljava/lang/String;

    .line 37
    iput-boolean p7, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mFreeSrv:Z

    .line 38
    iput-object p8, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mFwdNum:Ljava/lang/String;

    .line 39
    iput-object p9, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mDisableNum:Ljava/lang/String;

    .line 40
    iput-object p10, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mCarrierReq:Ljava/lang/String;

    .line 41
    iput-boolean p11, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mSmsFwd:Z

    .line 42
    iput-boolean p12, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mSupportPrimary:Z

    .line 43
    iput-object p13, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mPrimaryNum:Ljava/lang/String;

    .line 44
    iput-boolean p14, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mMultiSim:Z

    .line 45
    iput-object p15, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mMultiSimCategory:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public getCarrier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mCarrier:Ljava/lang/String;

    return-object v0
.end method

.method public getCarrierReq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mCarrierReq:Ljava/lang/String;

    return-object v0
.end method

.method public getCfSupport()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mCfSupport:Z

    return v0
.end method

.method public getCfType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mCfType:Ljava/lang/String;

    return-object v0
.end method

.method public getDisableNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mDisableNum:Ljava/lang/String;

    return-object v0
.end method

.method public getFreeSrv()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mFreeSrv:Z

    return v0
.end method

.method public getFwdNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mFwdNum:Ljava/lang/String;

    return-object v0
.end method

.method public getMcc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mMcc:Ljava/lang/String;

    return-object v0
.end method

.method public getMnc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mMnc:Ljava/lang/String;

    return-object v0
.end method

.method public getMultiSim()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mMultiSim:Z

    return v0
.end method

.method public getMultiSimCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mMultiSimCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getPrimaryNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mPrimaryNum:Ljava/lang/String;

    return-object v0
.end method

.method public getSimPolicy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mSimPolicy:Ljava/lang/String;

    return-object v0
.end method

.method public getSmsFwd()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mSmsFwd:Z

    return v0
.end method

.method public getSupportPrimary()Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mSupportPrimary:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mCfSupport:Z

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mCfType:Ljava/lang/String;

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mCarrier:Ljava/lang/String;

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mMcc:Ljava/lang/String;

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mMnc:Ljava/lang/String;

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mSimPolicy:Ljava/lang/String;

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mFreeSrv:Z

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mFwdNum:Ljava/lang/String;

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mDisableNum:Ljava/lang/String;

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mCarrierReq:Ljava/lang/String;

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mSmsFwd:Z

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mSupportPrimary:Z

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mPrimaryNum:Ljava/lang/String;

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_4

    :goto_4
    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mMultiSim:Z

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mMultiSimCategory:Ljava/lang/String;

    .line 214
    return-void

    :cond_0
    move v0, v2

    .line 199
    goto :goto_0

    :cond_1
    move v0, v2

    .line 205
    goto :goto_1

    :cond_2
    move v0, v2

    .line 209
    goto :goto_2

    :cond_3
    move v0, v2

    .line 210
    goto :goto_3

    :cond_4
    move v1, v2

    .line 212
    goto :goto_4
.end method

.method public setCarrier(Ljava/lang/String;)V
    .locals 0
    .param p1, "carrier"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mCarrier:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setCarrierReq(Ljava/lang/String;)V
    .locals 0
    .param p1, "carrierReq"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mCarrierReq:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setCfSupport(Z)V
    .locals 0
    .param p1, "cfSupport"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mCfSupport:Z

    .line 50
    return-void
.end method

.method public setCfType(Ljava/lang/String;)V
    .locals 0
    .param p1, "cfType"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mCfType:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setDisableNum(Ljava/lang/String;)V
    .locals 0
    .param p1, "disableNum"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mDisableNum:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setFreeSrv(Z)V
    .locals 0
    .param p1, "freeSrv"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mFreeSrv:Z

    .line 74
    return-void
.end method

.method public setFwdNum(Ljava/lang/String;)V
    .locals 0
    .param p1, "fwdNum"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mFwdNum:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setMcc(Ljava/lang/String;)V
    .locals 0
    .param p1, "mcc"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mMcc:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setMnc(Ljava/lang/String;)V
    .locals 0
    .param p1, "mnc"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mMnc:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setMultiSim(Z)V
    .locals 0
    .param p1, "multiSim"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mMultiSim:Z

    .line 102
    return-void
.end method

.method public setPrimaryNum(Ljava/lang/String;)V
    .locals 0
    .param p1, "primaryNum"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mPrimaryNum:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setSimPolicy(Ljava/lang/String;)V
    .locals 0
    .param p1, "simPolicy"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mSimPolicy:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setSmsFwd(Z)V
    .locals 0
    .param p1, "smsFwd"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mSmsFwd:Z

    .line 90
    return-void
.end method

.method public setSupportPrimary(Z)V
    .locals 0
    .param p1, "supportPrimary"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mSupportPrimary:Z

    .line 94
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 218
    const-string v0, "\n[-- CallForwardSetup --]"

    .line 219
    .local v0, "string":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nmCfSupport : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mCfSupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nmCfType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mCfType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nmCarrier : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mCarrier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nmMcc : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mMcc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nmMnc : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mMnc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nmSimPolicy : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mSimPolicy:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nmFreeSrv : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mFreeSrv:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nmFwdNum : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mFwdNum:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nmDisableNum : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mDisableNum:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nmCarrierReq : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mCarrierReq:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nmSmsFwd : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mSmsFwd:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nmSupportPrimary : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mSupportPrimary:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nmPrimaryNum : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mPrimaryNum:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nmMultiSim : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mMultiSim:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nmMultiSimCategory : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mMultiSimCategory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n-------------------------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 235
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 181
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mCfSupport:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 182
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mCfType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mCarrier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mMcc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mMnc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mSimPolicy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mFreeSrv:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 188
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mFwdNum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mDisableNum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mCarrierReq:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mSmsFwd:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 192
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mSupportPrimary:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 193
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mPrimaryNum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 194
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mMultiSim:Z

    if-eqz v0, :cond_4

    :goto_4
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 195
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->mMultiSimCategory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 196
    return-void

    :cond_0
    move v0, v2

    .line 181
    goto :goto_0

    :cond_1
    move v0, v2

    .line 187
    goto :goto_1

    :cond_2
    move v0, v2

    .line 191
    goto :goto_2

    :cond_3
    move v0, v2

    .line 192
    goto :goto_3

    :cond_4
    move v1, v2

    .line 194
    goto :goto_4
.end method
