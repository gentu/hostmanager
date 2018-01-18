.class public abstract Lcom/samsung/android/aidl/ICheckAppInstallState$Stub;
.super Landroid/os/Binder;
.source "ICheckAppInstallState.java"

# interfaces
.implements Lcom/samsung/android/aidl/ICheckAppInstallState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/aidl/ICheckAppInstallState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/aidl/ICheckAppInstallState$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.aidl.ICheckAppInstallState"

.field static final TRANSACTION_cancelInstall:I = 0x4

.field static final TRANSACTION_checkGMState:I = 0x10

.field static final TRANSACTION_checkInstalledWGTVersion:I = 0x6

.field static final TRANSACTION_checkInstalledWGTVersionName:I = 0x15

.field static final TRANSACTION_executeApp:I = 0xf

.field static final TRANSACTION_getImageByteArray:I = 0x11

.field static final TRANSACTION_getInstalledResult:I = 0x2

.field static final TRANSACTION_getInstalledWGTPackageInfo:I = 0x9

.field static final TRANSACTION_getInstallingState:I = 0x1

.field static final TRANSACTION_getWearableInfo:I = 0xb

.field static final TRANSACTION_installViaPackageName:I = 0x5

.field static final TRANSACTION_installWGT:I = 0x7

.field static final TRANSACTION_installWGTOverN:I = 0x13

.field static final TRANSACTION_installWGTinAPK:I = 0x8

.field static final TRANSACTION_installWGTinAPKFromGearStore:I = 0xa

.field static final TRANSACTION_installWGTinAPKOverN:I = 0x14

.field static final TRANSACTION_isAppExecutable:I = 0xe

.field static final TRANSACTION_isAppRemovable:I = 0xc

.field static final TRANSACTION_prepareInstall:I = 0x3

.field static final TRANSACTION_removeApp:I = 0xd

.field static final TRANSACTION_skipCompanionDeeplinkPopup:I = 0x12


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.samsung.android.aidl.ICheckAppInstallState"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/aidl/ICheckAppInstallState$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/aidl/ICheckAppInstallState;
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
    const-string v1, "com.samsung.android.aidl.ICheckAppInstallState"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/aidl/ICheckAppInstallState;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/samsung/android/aidl/ICheckAppInstallState;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/samsung/android/aidl/ICheckAppInstallState$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/android/aidl/ICheckAppInstallState$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 9
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
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 286
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 42
    :sswitch_0
    const-string v7, "com.samsung.android.aidl.ICheckAppInstallState"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v7, "com.samsung.android.aidl.ICheckAppInstallState"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/aidl/ICheckAppInstallState$Stub;->getInstallingState(Ljava/lang/String;)I

    move-result v4

    .line 51
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 57
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_2
    const-string v7, "com.samsung.android.aidl.ICheckAppInstallState"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 60
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/aidl/ICheckAppInstallState$Stub;->getInstalledResult(Ljava/lang/String;)I

    move-result v4

    .line 61
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 67
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_3
    const-string v7, "com.samsung.android.aidl.ICheckAppInstallState"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 70
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/aidl/ICheckAppInstallState$Stub;->prepareInstall(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 76
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_4
    const-string v7, "com.samsung.android.aidl.ICheckAppInstallState"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 80
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/aidl/ICancelInstallCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/aidl/ICancelInstallCallback;

    move-result-object v1

    .line 81
    .local v1, "_arg1":Lcom/samsung/android/aidl/ICancelInstallCallback;
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/aidl/ICheckAppInstallState$Stub;->cancelInstall(Ljava/lang/String;Lcom/samsung/android/aidl/ICancelInstallCallback;)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 87
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/samsung/android/aidl/ICancelInstallCallback;
    :sswitch_5
    const-string v7, "com.samsung.android.aidl.ICheckAppInstallState"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 91
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/aidl/ICheckAppInstallStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;

    move-result-object v1

    .line 92
    .local v1, "_arg1":Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/aidl/ICheckAppInstallState$Stub;->installViaPackageName(Ljava/lang/String;Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 98
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;
    :sswitch_6
    const-string v7, "com.samsung.android.aidl.ICheckAppInstallState"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 101
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/aidl/ICheckAppInstallState$Stub;->checkInstalledWGTVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 102
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 108
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_7
    const-string v7, "com.samsung.android.aidl.ICheckAppInstallState"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 112
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/aidl/ICheckAppInstallStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;

    move-result-object v1

    .line 113
    .restart local v1    # "_arg1":Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/aidl/ICheckAppInstallState$Stub;->installWGT(Ljava/lang/String;Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;)V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 119
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;
    :sswitch_8
    const-string v7, "com.samsung.android.aidl.ICheckAppInstallState"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 123
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/aidl/ICheckAppInstallStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;

    move-result-object v2

    .line 126
    .local v2, "_arg2":Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/aidl/ICheckAppInstallState$Stub;->installWGTinAPK(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;)V

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 132
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;
    :sswitch_9
    const-string v7, "com.samsung.android.aidl.ICheckAppInstallState"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/samsung/android/aidl/ICheckAppInstallState$Stub;->getInstalledWGTPackageInfo()Ljava/util/List;

    move-result-object v5

    .line 134
    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 140
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_a
    const-string v7, "com.samsung.android.aidl.ICheckAppInstallState"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 144
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 146
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/aidl/ICheckAppInstallStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;

    move-result-object v3

    .line 149
    .local v3, "_arg3":Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/aidl/ICheckAppInstallState$Stub;->installWGTinAPKFromGearStore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;)V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 155
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;
    :sswitch_b
    const-string v7, "com.samsung.android.aidl.ICheckAppInstallState"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 158
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/aidl/ICheckAppInstallState$Stub;->getWearableInfo(I)Ljava/lang/String;

    move-result-object v4

    .line 159
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 165
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_c
    const-string v7, "com.samsung.android.aidl.ICheckAppInstallState"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 170
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/aidl/ICheckAppInstallState$Stub;->isAppRemovable(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 171
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 177
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_d
    const-string v7, "com.samsung.android.aidl.ICheckAppInstallState"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 181
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 183
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/aidl/ICheckAppUnInstallStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/aidl/ICheckAppUnInstallStateCallback;

    move-result-object v2

    .line 184
    .local v2, "_arg2":Lcom/samsung/android/aidl/ICheckAppUnInstallStateCallback;
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/aidl/ICheckAppInstallState$Stub;->removeApp(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/aidl/ICheckAppUnInstallStateCallback;)V

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 190
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Lcom/samsung/android/aidl/ICheckAppUnInstallStateCallback;
    :sswitch_e
    const-string v8, "com.samsung.android.aidl.ICheckAppInstallState"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 194
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1

    move v1, v6

    .line 195
    .local v1, "_arg1":Z
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/aidl/ICheckAppInstallState$Stub;->isAppExecutable(Ljava/lang/String;Z)Z

    move-result v4

    .line 196
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    if-eqz v4, :cond_0

    move v7, v6

    :cond_0
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v4    # "_result":Z
    :cond_1
    move v1, v7

    .line 194
    goto :goto_1

    .line 202
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_f
    const-string v8, "com.samsung.android.aidl.ICheckAppInstallState"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 206
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_2

    move v1, v6

    .line 207
    .restart local v1    # "_arg1":Z
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/aidl/ICheckAppInstallState$Stub;->executeApp(Ljava/lang/String;Z)I

    move-result v4

    .line 208
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v4    # "_result":I
    :cond_2
    move v1, v7

    .line 206
    goto :goto_2

    .line 214
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_10
    const-string v7, "com.samsung.android.aidl.ICheckAppInstallState"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Lcom/samsung/android/aidl/ICheckAppInstallState$Stub;->checkGMState()I

    move-result v4

    .line 216
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 222
    .end local v4    # "_result":I
    :sswitch_11
    const-string v7, "com.samsung.android.aidl.ICheckAppInstallState"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 225
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/aidl/ICheckAppInstallState$Stub;->getImageByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 226
    .local v4, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 232
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":[B
    :sswitch_12
    const-string v8, "com.samsung.android.aidl.ICheckAppInstallState"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 236
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_3

    move v1, v6

    .line 237
    .restart local v1    # "_arg1":Z
    :goto_3
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/aidl/ICheckAppInstallState$Stub;->skipCompanionDeeplinkPopup(Ljava/lang/String;Z)V

    .line 238
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    :cond_3
    move v1, v7

    .line 236
    goto :goto_3

    .line 243
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_13
    const-string v7, "com.samsung.android.aidl.ICheckAppInstallState"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_4

    .line 246
    sget-object v7, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 252
    .local v0, "_arg0":Landroid/net/Uri;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/aidl/ICheckAppInstallStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;

    move-result-object v1

    .line 253
    .local v1, "_arg1":Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/aidl/ICheckAppInstallState$Stub;->installWGTOverN(Landroid/net/Uri;Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;)V

    .line 254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 249
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v1    # "_arg1":Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/Uri;
    goto :goto_4

    .line 259
    .end local v0    # "_arg0":Landroid/net/Uri;
    :sswitch_14
    const-string v7, "com.samsung.android.aidl.ICheckAppInstallState"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_5

    .line 264
    sget-object v7, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 270
    .local v1, "_arg1":Landroid/net/Uri;
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/aidl/ICheckAppInstallStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;

    move-result-object v2

    .line 271
    .local v2, "_arg2":Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/aidl/ICheckAppInstallState$Stub;->installWGTinAPKOverN(Ljava/lang/String;Landroid/net/Uri;Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;)V

    .line 272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 267
    .end local v1    # "_arg1":Landroid/net/Uri;
    .end local v2    # "_arg2":Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/net/Uri;
    goto :goto_5

    .line 277
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/net/Uri;
    :sswitch_15
    const-string v7, "com.samsung.android.aidl.ICheckAppInstallState"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 280
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/aidl/ICheckAppInstallState$Stub;->checkInstalledWGTVersionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 281
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
