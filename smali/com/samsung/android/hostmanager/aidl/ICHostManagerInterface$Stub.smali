.class public abstract Lcom/samsung/android/hostmanager/aidl/ICHostManagerInterface$Stub;
.super Landroid/os/Binder;
.source "ICHostManagerInterface.java"

# interfaces
.implements Lcom/samsung/android/hostmanager/aidl/ICHostManagerInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/aidl/ICHostManagerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hostmanager/aidl/ICHostManagerInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.hostmanager.aidl.ICHostManagerInterface"

.field static final TRANSACTION_cancelFileonSending:I = 0x2

.field static final TRANSACTION_connectMarket:I = 0x3

.field static final TRANSACTION_getAlertNotificationAppList:I = 0xa

.field static final TRANSACTION_getAllWearableStatus:I = 0x4

.field static final TRANSACTION_getConnectedWearableDeviceID:I = 0x13

.field static final TRANSACTION_getHostStatus:I = 0x5

.field static final TRANSACTION_getMoreNotificationAppList:I = 0xc

.field static final TRANSACTION_getNormalNotificationAppList:I = 0xb

.field static final TRANSACTION_getNotificationInfo:I = 0x11

.field static final TRANSACTION_getNotificationSettings:I = 0x10

.field static final TRANSACTION_getPackageName:I = 0x12

.field static final TRANSACTION_getWearableStatus:I = 0x6

.field static final TRANSACTION_installApkToWearable:I = 0x7

.field static final TRANSACTION_isListCreated:I = 0xd

.field static final TRANSACTION_isUltraPowerSavingMode:I = 0x18

.field static final TRANSACTION_manageConnectionInfo:I = 0x8

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_setNotificationAppMarked:I = 0xe

.field static final TRANSACTION_setNotificationMarkAll:I = 0x19

.field static final TRANSACTION_setNotificationOnOff:I = 0x14

.field static final TRANSACTION_setNotificationPreview:I = 0x15

.field static final TRANSACTION_setNotificationScreenOnOff:I = 0x16

.field static final TRANSACTION_setNotificationSettings:I = 0xf

.field static final TRANSACTION_setNotificationSummaryPanelOnOff:I = 0x17

.field static final TRANSACTION_uninstallAppToWearable:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.samsung.android.hostmanager.aidl.ICHostManagerInterface"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/hostmanager/aidl/ICHostManagerInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/hostmanager/aidl/ICHostManagerInterface;
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
    const-string v1, "com.samsung.android.hostmanager.aidl.ICHostManagerInterface"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/hostmanager/aidl/ICHostManagerInterface;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/samsung/android/hostmanager/aidl/ICHostManagerInterface;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/samsung/android/hostmanager/aidl/ICHostManagerInterface$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/aidl/ICHostManagerInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 10
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
    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 341
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    :goto_0
    return v9

    .line 42
    :sswitch_0
    const-string v9, "com.samsung.android.hostmanager.aidl.ICHostManagerInterface"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v9, 0x1

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v9, "com.samsung.android.hostmanager.aidl.ICHostManagerInterface"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/hostmanager/aidl/ICHostManagerListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/hostmanager/aidl/ICHostManagerListener;

    move-result-object v0

    .line 50
    .local v0, "_arg0":Lcom/samsung/android/hostmanager/aidl/ICHostManagerListener;
    invoke-virtual {p0, v0}, Lcom/samsung/android/hostmanager/aidl/ICHostManagerInterface$Stub;->registerListener(Lcom/samsung/android/hostmanager/aidl/ICHostManagerListener;)Z

    move-result v4

    .line 51
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    if-eqz v4, :cond_0

    const/4 v9, 0x1

    :goto_1
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    const/4 v9, 0x1

    goto :goto_0

    .line 52
    :cond_0
    const/4 v9, 0x0

    goto :goto_1

    .line 57
    .end local v0    # "_arg0":Lcom/samsung/android/hostmanager/aidl/ICHostManagerListener;
    .end local v4    # "_result":Z
    :sswitch_2
    const-string v9, "com.samsung.android.hostmanager.aidl.ICHostManagerInterface"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 61
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/hostmanager/aidl/ICHostManagerInterface$Stub;->cancelFileonSending(ILjava/lang/String;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    const/4 v9, 0x1

    goto :goto_0

    .line 68
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_3
    const-string v9, "com.samsung.android.hostmanager.aidl.ICHostManagerInterface"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/aidl/ICHostManagerInterface$Stub;->connectMarket()V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    const/4 v9, 0x1

    goto :goto_0

    .line 75
    :sswitch_4
    const-string v9, "com.samsung.android.hostmanager.aidl.ICHostManagerInterface"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/aidl/ICHostManagerInterface$Stub;->getAllWearableStatus()Ljava/util/List;

    move-result-object v5

    .line 77
    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/DeviceInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 79
    const/4 v9, 0x1

    goto :goto_0

    .line 83
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/DeviceInfo;>;"
    :sswitch_5
    const-string v9, "com.samsung.android.hostmanager.aidl.ICHostManagerInterface"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/aidl/ICHostManagerInterface$Stub;->getHostStatus()Lcom/samsung/android/hostmanager/aidl/DeviceInfo;

    move-result-object v4

    .line 85
    .local v4, "_result":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    if-eqz v4, :cond_1

    .line 87
    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    const/4 v9, 0x1

    invoke-virtual {v4, p3, v9}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 93
    :goto_2
    const/4 v9, 0x1

    goto :goto_0

    .line 91
    :cond_1
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 97
    .end local v4    # "_result":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    :sswitch_6
    const-string v9, "com.samsung.android.hostmanager.aidl.ICHostManagerInterface"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/hostmanager/aidl/ICHostManagerInterface$Stub;->getWearableStatus(Ljava/lang/String;)Lcom/samsung/android/hostmanager/aidl/DeviceInfo;

    move-result-object v4

    .line 101
    .restart local v4    # "_result":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    if-eqz v4, :cond_2

    .line 103
    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    const/4 v9, 0x1

    invoke-virtual {v4, p3, v9}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 109
    :goto_3
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 107
    :cond_2
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 113
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    :sswitch_7
    const-string v9, "com.samsung.android.hostmanager.aidl.ICHostManagerInterface"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 117
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 119
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 122
    .local v3, "_arg3":I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/hostmanager/aidl/ICHostManagerInterface$Stub;->installApkToWearable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 128
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    :sswitch_8
    const-string v9, "com.samsung.android.hostmanager.aidl.ICHostManagerInterface"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 132
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 133
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/hostmanager/aidl/ICHostManagerInterface$Stub;->manageConnectionInfo(Ljava/lang/String;I)Z

    move-result v4

    .line 134
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    if-eqz v4, :cond_3

    const/4 v9, 0x1

    :goto_4
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 135
    :cond_3
    const/4 v9, 0x0

    goto :goto_4

    .line 140
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Z
    :sswitch_9
    const-string v9, "com.samsung.android.hostmanager.aidl.ICHostManagerInterface"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 144
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 147
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/hostmanager/aidl/ICHostManagerInterface$Stub;->uninstallAppToWearable(Ljava/lang/String;Ljava/lang/String;I)V

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 153
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :sswitch_a
    const-string v9, "com.samsung.android.hostmanager.aidl.ICHostManagerInterface"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 156
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/hostmanager/aidl/ICHostManagerInterface$Stub;->getAlertNotificationAppList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 157
    .local v6, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/NotificationApp;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 159
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 163
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/NotificationApp;>;"
    :sswitch_b
    const-string v9, "com.samsung.android.hostmanager.aidl.ICHostManagerInterface"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 166
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/hostmanager/aidl/ICHostManagerInterface$Stub;->getNormalNotificationAppList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 167
    .restart local v6    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/NotificationApp;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 169
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 173
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/NotificationApp;>;"
    :sswitch_c
    const-string v9, "com.samsung.android.hostmanager.aidl.ICHostManagerInterface"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 176
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/hostmanager/aidl/ICHostManagerInterface$Stub;->getMoreNotificationAppList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 177
    .restart local v6    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/NotificationApp;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 179
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 183
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/NotificationApp;>;"
    :sswitch_d
    const-string v9, "com.samsung.android.hostmanager.aidl.ICHostManagerInterface"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 186
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/hostmanager/aidl/ICHostManagerInterface$Stub;->isListCreated(Ljava/lang/String;)Z

    move-result v4

    .line 187
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    if-eqz v4, :cond_4

    const/4 v9, 0x1

    :goto_5
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 188
    :cond_4
    const/4 v9, 0x0

    goto :goto_5

    .line 193
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_e
    const-string v9, "com.samsung.android.hostmanager.aidl.ICHostManagerInterface"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 197
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 199
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_5

    const/4 v2, 0x1

    .line 200
    .local v2, "_arg2":Z
    :goto_6
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/hostmanager/aidl/ICHostManagerInterface$Stub;->setNotificationAppMarked(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 199
    .end local v2    # "_arg2":Z
    :cond_5
    const/4 v2, 0x0

    goto :goto_6

    .line 206
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_f
    const-string v9, "com.samsung.android.hostmanager.aidl.ICHostManagerInterface"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 210
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_6

    .line 211
    sget-object v9, Lcom/samsung/android/hostmanager/aidl/NotificationSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hostmanager/aidl/NotificationSettings;

    .line 216
    .local v1, "_arg1":Lcom/samsung/android/hostmanager/aidl/NotificationSettings;
    :goto_7
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/hostmanager/aidl/ICHostManagerInterface$Stub;->setNotificationSettings(Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/NotificationSettings;)V

    .line 217
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    if-eqz v1, :cond_7

    .line 219
    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    const/4 v9, 0x1

    invoke-virtual {v1, p3, v9}, Lcom/samsung/android/hostmanager/aidl/NotificationSettings;->writeToParcel(Landroid/os/Parcel;I)V

    .line 225
    :goto_8
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 214
    .end local v1    # "_arg1":Lcom/samsung/android/hostmanager/aidl/NotificationSettings;
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/samsung/android/hostmanager/aidl/NotificationSettings;
    goto :goto_7

    .line 223
    :cond_7
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 229
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/samsung/android/hostmanager/aidl/NotificationSettings;
    :sswitch_10
    const-string v9, "com.samsung.android.hostmanager.aidl.ICHostManagerInterface"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 232
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/hostmanager/aidl/ICHostManagerInterface$Stub;->getNotificationSettings(Ljava/lang/String;)Lcom/samsung/android/hostmanager/aidl/NotificationSettings;

    move-result-object v4

    .line 233
    .local v4, "_result":Lcom/samsung/android/hostmanager/aidl/NotificationSettings;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    if-eqz v4, :cond_8

    .line 235
    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    const/4 v9, 0x1

    invoke-virtual {v4, p3, v9}, Lcom/samsung/android/hostmanager/aidl/NotificationSettings;->writeToParcel(Landroid/os/Parcel;I)V

    .line 241
    :goto_9
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 239
    :cond_8
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 245
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Lcom/samsung/android/hostmanager/aidl/NotificationSettings;
    :sswitch_11
    const-string v9, "com.samsung.android.hostmanager.aidl.ICHostManagerInterface"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 249
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 250
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/hostmanager/aidl/ICHostManagerInterface$Stub;->getNotificationInfo(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v7

    .line 251
    .local v7, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/NotificationInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 253
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 257
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/NotificationInfo;>;"
    :sswitch_12
    const-string v9, "com.samsung.android.hostmanager.aidl.ICHostManagerInterface"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 261
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 262
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/hostmanager/aidl/ICHostManagerInterface$Stub;->getPackageName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 263
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 265
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 269
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_13
    const-string v9, "com.samsung.android.hostmanager.aidl.ICHostManagerInterface"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/aidl/ICHostManagerInterface$Stub;->getConnectedWearableDeviceID()Ljava/util/List;

    move-result-object v8

    .line 271
    .local v8, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 273
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 277
    .end local v8    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_14
    const-string v9, "com.samsung.android.hostmanager.aidl.ICHostManagerInterface"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 281
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_9

    const/4 v1, 0x1

    .line 282
    .local v1, "_arg1":Z
    :goto_a
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/hostmanager/aidl/ICHostManagerInterface$Stub;->setNotificationOnOff(Ljava/lang/String;Z)V

    .line 283
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 281
    .end local v1    # "_arg1":Z
    :cond_9
    const/4 v1, 0x0

    goto :goto_a

    .line 288
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_15
    const-string v9, "com.samsung.android.hostmanager.aidl.ICHostManagerInterface"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 292
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 293
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/hostmanager/aidl/ICHostManagerInterface$Stub;->setNotificationPreview(Ljava/lang/String;I)V

    .line 294
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 299
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :sswitch_16
    const-string v9, "com.samsung.android.hostmanager.aidl.ICHostManagerInterface"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 303
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_a

    const/4 v1, 0x1

    .line 304
    .local v1, "_arg1":Z
    :goto_b
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/hostmanager/aidl/ICHostManagerInterface$Stub;->setNotificationScreenOnOff(Ljava/lang/String;Z)V

    .line 305
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 303
    .end local v1    # "_arg1":Z
    :cond_a
    const/4 v1, 0x0

    goto :goto_b

    .line 310
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_17
    const-string v9, "com.samsung.android.hostmanager.aidl.ICHostManagerInterface"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 314
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_b

    const/4 v1, 0x1

    .line 315
    .restart local v1    # "_arg1":Z
    :goto_c
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/hostmanager/aidl/ICHostManagerInterface$Stub;->setNotificationSummaryPanelOnOff(Ljava/lang/String;Z)V

    .line 316
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 314
    .end local v1    # "_arg1":Z
    :cond_b
    const/4 v1, 0x0

    goto :goto_c

    .line 321
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_18
    const-string v9, "com.samsung.android.hostmanager.aidl.ICHostManagerInterface"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 324
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/hostmanager/aidl/ICHostManagerInterface$Stub;->isUltraPowerSavingMode(Ljava/lang/String;)Z

    move-result v4

    .line 325
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    if-eqz v4, :cond_c

    const/4 v9, 0x1

    :goto_d
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 326
    :cond_c
    const/4 v9, 0x0

    goto :goto_d

    .line 331
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_19
    const-string v9, "com.samsung.android.hostmanager.aidl.ICHostManagerInterface"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 335
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_d

    const/4 v1, 0x1

    .line 336
    .restart local v1    # "_arg1":Z
    :goto_e
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/hostmanager/aidl/ICHostManagerInterface$Stub;->setNotificationMarkAll(Ljava/lang/String;Z)V

    .line 337
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 335
    .end local v1    # "_arg1":Z
    :cond_d
    const/4 v1, 0x0

    goto :goto_e

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
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
