.class public Lcom/samsung/android/hostmanager/status/HostStatus;
.super Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
.source "HostStatus.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;-><init>()V

    .line 16
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;-><init>(Landroid/os/Parcel;)V

    .line 12
    return-void
.end method


# virtual methods
.method public setHostStatus(Lcom/samsung/android/hostmanager/aidl/DeviceInfo;)V
    .locals 19
    .param p1, "device"    # Lcom/samsung/android/hostmanager/aidl/DeviceInfo;

    .prologue
    .line 19
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDevicePlatform()Ljava/lang/String;

    move-result-object v3

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDevicePlatformVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getModelNumber()Ljava/lang/String;

    move-result-object v6

    .line 21
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getSwVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getSalesCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getSerialNumber()Ljava/lang/String;

    move-result-object v9

    .line 22
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getMCC()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getMNC()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getHostManagerVersion()Ljava/lang/String;

    move-result-object v12

    .line 23
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getConnectivity()Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getAppInfoList()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceFeature()Ljava/util/HashMap;

    move-result-object v15

    .line 24
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getSecurity()Ljava/util/HashMap;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getNotification()Ljava/util/HashMap;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getSettings()Ljava/util/HashMap;

    move-result-object v18

    move-object/from16 v0, p0

    .line 19
    invoke-virtual/range {v0 .. v18}, Lcom/samsung/android/hostmanager/status/HostStatus;->setStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 25
    return-void
.end method
