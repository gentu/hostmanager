.class public abstract Lcom/samsung/android/hostmanager/aidl/IAPPHostManagerListener$Stub;
.super Landroid/os/Binder;
.source "IAPPHostManagerListener.java"

# interfaces
.implements Lcom/samsung/android/hostmanager/aidl/IAPPHostManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/aidl/IAPPHostManagerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hostmanager/aidl/IAPPHostManagerListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.hostmanager.aidl.IAPPHostManagerListener"

.field static final TRANSACTION_onReceiveDeviceConnected:I = 0x2

.field static final TRANSACTION_onReceiveDeviceDisconnected:I = 0x3

.field static final TRANSACTION_onWearableStatusInfo:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.samsung.android.hostmanager.aidl.IAPPHostManagerListener"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/hostmanager/aidl/IAPPHostManagerListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/hostmanager/aidl/IAPPHostManagerListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.samsung.android.hostmanager.aidl.IAPPHostManagerListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/hostmanager/aidl/IAPPHostManagerListener;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/samsung/android/hostmanager/aidl/IAPPHostManagerListener;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/samsung/android/hostmanager/aidl/IAPPHostManagerListener$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/aidl/IAPPHostManagerListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 85
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 42
    :sswitch_0
    const-string v2, "com.samsung.android.hostmanager.aidl.IAPPHostManagerListener"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v2, "com.samsung.android.hostmanager.aidl.IAPPHostManagerListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    sget-object v2, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;

    .line 55
    .local v0, "_arg0":Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/hostmanager/aidl/IAPPHostManagerListener$Stub;->onWearableStatusInfo(Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    invoke-virtual {v0, p3, v1}, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 53
    .end local v0    # "_arg0":Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;
    goto :goto_1

    .line 62
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 68
    .end local v0    # "_arg0":Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;
    :sswitch_2
    const-string v2, "com.samsung.android.hostmanager.aidl.IAPPHostManagerListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/hostmanager/aidl/IAPPHostManagerListener$Stub;->onReceiveDeviceConnected(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 77
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_3
    const-string v2, "com.samsung.android.hostmanager.aidl.IAPPHostManagerListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 80
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/hostmanager/aidl/IAPPHostManagerListener$Stub;->onReceiveDeviceDisconnected(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
