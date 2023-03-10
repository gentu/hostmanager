.class public abstract Lcom/sec/android/api/iface/IConnectionManager$Stub;
.super Landroid/os/Binder;
.source "IConnectionManager.java"

# interfaces
.implements Lcom/sec/android/api/iface/IConnectionManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/api/iface/IConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/api/iface/IConnectionManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.android.api.iface.IConnectionManager"

.field static final TRANSACTION_requestAsync:I = 0x1

.field static final TRANSACTION_requestSync:I = 0x2

.field static final TRANSACTION_subscribeEvent:I = 0x3

.field static final TRANSACTION_unsubscribeEvent:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.sec.android.api.iface.IConnectionManager"

    invoke-virtual {p0, p0, v0}, Lcom/sec/android/api/iface/IConnectionManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/android/api/iface/IConnectionManager;
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
    const-string v1, "com.sec.android.api.iface.IConnectionManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sec/android/api/iface/IConnectionManager;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/sec/android/api/iface/IConnectionManager;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/sec/android/api/iface/IConnectionManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/sec/android/api/iface/IConnectionManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 6
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
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 119
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v3, "com.sec.android.api.iface.IConnectionManager"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v5, "com.sec.android.api.iface.IConnectionManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    .line 52
    sget-object v5, Lcom/sec/android/api/iface/CVMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/api/iface/CVMessage;

    .line 57
    .local v1, "_arg1":Lcom/sec/android/api/iface/CVMessage;
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/api/iface/IConnectionManager$Stub;->requestAsync(Ljava/lang/String;Lcom/sec/android/api/iface/CVMessage;)Z

    move-result v2

    .line 58
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    if-eqz v2, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 55
    .end local v1    # "_arg1":Lcom/sec/android/api/iface/CVMessage;
    .end local v2    # "_result":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/sec/android/api/iface/CVMessage;
    goto :goto_1

    .line 64
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/sec/android/api/iface/CVMessage;
    :sswitch_2
    const-string v5, "com.sec.android.api.iface.IConnectionManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 68
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    .line 69
    sget-object v5, Lcom/sec/android/api/iface/CVMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/api/iface/CVMessage;

    .line 74
    .restart local v1    # "_arg1":Lcom/sec/android/api/iface/CVMessage;
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/api/iface/IConnectionManager$Stub;->requestSync(Ljava/lang/String;Lcom/sec/android/api/iface/CVMessage;)Lcom/sec/android/api/iface/CVMessage;

    move-result-object v2

    .line 75
    .local v2, "_result":Lcom/sec/android/api/iface/CVMessage;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    if-eqz v2, :cond_3

    .line 77
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    invoke-virtual {v2, p3, v4}, Lcom/sec/android/api/iface/CVMessage;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 72
    .end local v1    # "_arg1":Lcom/sec/android/api/iface/CVMessage;
    .end local v2    # "_result":Lcom/sec/android/api/iface/CVMessage;
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/sec/android/api/iface/CVMessage;
    goto :goto_2

    .line 81
    .restart local v2    # "_result":Lcom/sec/android/api/iface/CVMessage;
    :cond_3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 87
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/sec/android/api/iface/CVMessage;
    .end local v2    # "_result":Lcom/sec/android/api/iface/CVMessage;
    :sswitch_3
    const-string v5, "com.sec.android.api.iface.IConnectionManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 91
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    .line 92
    sget-object v5, Lcom/sec/android/api/iface/CVMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/api/iface/CVMessage;

    .line 97
    .restart local v1    # "_arg1":Lcom/sec/android/api/iface/CVMessage;
    :goto_3
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/api/iface/IConnectionManager$Stub;->subscribeEvent(Ljava/lang/String;Lcom/sec/android/api/iface/CVMessage;)Z

    move-result v2

    .line 98
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    if-eqz v2, :cond_4

    move v3, v4

    :cond_4
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 95
    .end local v1    # "_arg1":Lcom/sec/android/api/iface/CVMessage;
    .end local v2    # "_result":Z
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/sec/android/api/iface/CVMessage;
    goto :goto_3

    .line 104
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/sec/android/api/iface/CVMessage;
    :sswitch_4
    const-string v3, "com.sec.android.api.iface.IConnectionManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 108
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    .line 109
    sget-object v3, Lcom/sec/android/api/iface/CVMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/api/iface/CVMessage;

    .line 114
    .restart local v1    # "_arg1":Lcom/sec/android/api/iface/CVMessage;
    :goto_4
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/api/iface/IConnectionManager$Stub;->unsubscribeEvent(Ljava/lang/String;Lcom/sec/android/api/iface/CVMessage;)V

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 112
    .end local v1    # "_arg1":Lcom/sec/android/api/iface/CVMessage;
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/sec/android/api/iface/CVMessage;
    goto :goto_4

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
