.class public abstract Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
.super Ljava/lang/Object;
.source "ScmWearableDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice$Builder;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method


# virtual methods
.method public abstract getBTAddress()Ljava/lang/String;
.end method

.method public abstract getBTBondState()I
.end method

.method public abstract getBTCOD()I
.end method

.method public abstract getBTDevice()Landroid/bluetooth/BluetoothDevice;
.end method

.method public abstract getBTLinkFeature()I
.end method

.method public abstract getBTName()Ljava/lang/String;
.end method

.method public abstract getBTRSSI()I
.end method
