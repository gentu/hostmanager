.class public Lcom/samsung/android/sdk/accessory/SAServiceChannel;
.super Ljava/lang/Object;
.source "SAServiceChannel.java"


# static fields
.field public static final DATARATE_HIGH:I = 0x1

.field public static final DATARATE_LOW:I = 0x0

.field public static final PRIORITY_HIGH:I = 0x2

.field public static final PRIORITY_LOW:I = 0x0

.field public static final PRIORITY_MEDIUM:I = 0x1

.field public static final RELIABILITY_DISABLE:I = 0x0

.field public static final RELIABILITY_ENABLE:I = 0x1


# instance fields
.field private mChannelId:I

.field private mDataRate:I

.field private mPriority:I

.field private mReliability:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "channelId"    # I

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/samsung/android/sdk/accessory/SAServiceChannel;->mChannelId:I

    .line 21
    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAServiceChannel;->mDataRate:I

    .line 22
    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAServiceChannel;->mPriority:I

    .line 23
    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAServiceChannel;->mReliability:I

    .line 24
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "channelId"    # I
    .param p2, "dataRate"    # I
    .param p3, "priority"    # I
    .param p4, "reliability"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/samsung/android/sdk/accessory/SAServiceChannel;->mChannelId:I

    .line 28
    iput p2, p0, Lcom/samsung/android/sdk/accessory/SAServiceChannel;->mDataRate:I

    .line 29
    iput p3, p0, Lcom/samsung/android/sdk/accessory/SAServiceChannel;->mPriority:I

    .line 30
    iput p4, p0, Lcom/samsung/android/sdk/accessory/SAServiceChannel;->mReliability:I

    .line 31
    return-void
.end method


# virtual methods
.method public getChannelId()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SAServiceChannel;->mChannelId:I

    return v0
.end method

.method public getDataRate()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SAServiceChannel;->mDataRate:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SAServiceChannel;->mPriority:I

    return v0
.end method

.method public getReliability()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SAServiceChannel;->mReliability:I

    return v0
.end method
