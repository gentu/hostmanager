.class public interface abstract Lcom/samsung/android/hostmanager/manager/IStatusManager;
.super Ljava/lang/Object;
.source "IStatusManager.java"


# virtual methods
.method public abstract clear()V
.end method

.method public abstract getHostDevice()Lcom/samsung/android/hostmanager/status/HostDevice;
.end method

.method public abstract getHostStatus()Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
.end method

.method public abstract getTimeStamp()Ljava/lang/String;
.end method

.method public abstract getWearableStatus()Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
.end method

.method public abstract hasWearableStatus()Z
.end method

.method public abstract isChangedHostStatus()Z
.end method

.method public abstract refreshWearableDevices()Z
.end method

.method public abstract setModelName(Ljava/lang/String;)V
.end method

.method public abstract setTimeStamp(Ljava/lang/String;)V
.end method

.method public abstract setWearablePhoneNumberEditedByUser(Ljava/lang/String;)V
.end method

.method public abstract syncWearableStatus()Z
.end method
