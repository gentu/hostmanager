.class public abstract Lcom/samsung/accessory/callprovider/ICallForwardingInterface$Stub;
.super Landroid/os/Binder;
.source "ICallForwardingInterface.java"

# interfaces
.implements Lcom/samsung/accessory/callprovider/ICallForwardingInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/callprovider/ICallForwardingInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/callprovider/ICallForwardingInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.accessory.callprovider.ICallForwardingInterface"

.field static final TRANSACTION_getCallForwardingNumber:I = 0x3

.field static final TRANSACTION_getCallForwardingNumberWithReason:I = 0x4

.field static final TRANSACTION_setCallForwardingNumber:I = 0x1

.field static final TRANSACTION_setCallForwardingNumberARS:I = 0x6

.field static final TRANSACTION_setCallForwardingNumberUSSD:I = 0x5

.field static final TRANSACTION_setCallForwardingNumberWithReason:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.samsung.accessory.callprovider.ICallForwardingInterface"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/accessory/callprovider/ICallForwardingInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/callprovider/ICallForwardingInterface;
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
    const-string v1, "com.samsung.accessory.callprovider.ICallForwardingInterface"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/accessory/callprovider/ICallForwardingInterface;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/samsung/accessory/callprovider/ICallForwardingInterface;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/samsung/accessory/callprovider/ICallForwardingInterface$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/accessory/callprovider/ICallForwardingInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 120
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v5, "com.samsung.accessory.callprovider.ICallForwardingInterface"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v5, "com.samsung.accessory.callprovider.ICallForwardingInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/accessory/callprovider/ICallForwardingCallbackInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/callprovider/ICallForwardingCallbackInterface;

    move-result-object v0

    .line 51
    .local v0, "_arg0":Lcom/samsung/accessory/callprovider/ICallForwardingCallbackInterface;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 54
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/accessory/callprovider/ICallForwardingInterface$Stub;->setCallForwardingNumber(Lcom/samsung/accessory/callprovider/ICallForwardingCallbackInterface;Ljava/lang/String;I)V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 60
    .end local v0    # "_arg0":Lcom/samsung/accessory/callprovider/ICallForwardingCallbackInterface;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :sswitch_2
    const-string v5, "com.samsung.accessory.callprovider.ICallForwardingInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/accessory/callprovider/ICallForwardingCallbackInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/callprovider/ICallForwardingCallbackInterface;

    move-result-object v0

    .line 64
    .restart local v0    # "_arg0":Lcom/samsung/accessory/callprovider/ICallForwardingCallbackInterface;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 66
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 68
    .restart local v2    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 69
    .local v3, "_arg3":I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/accessory/callprovider/ICallForwardingInterface$Stub;->setCallForwardingNumberWithReason(Lcom/samsung/accessory/callprovider/ICallForwardingCallbackInterface;Ljava/lang/String;II)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 75
    .end local v0    # "_arg0":Lcom/samsung/accessory/callprovider/ICallForwardingCallbackInterface;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :sswitch_3
    const-string v5, "com.samsung.accessory.callprovider.ICallForwardingInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/accessory/callprovider/ICallForwardingCallbackInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/callprovider/ICallForwardingCallbackInterface;

    move-result-object v0

    .line 79
    .restart local v0    # "_arg0":Lcom/samsung/accessory/callprovider/ICallForwardingCallbackInterface;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 80
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/accessory/callprovider/ICallForwardingInterface$Stub;->getCallForwardingNumber(Lcom/samsung/accessory/callprovider/ICallForwardingCallbackInterface;I)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 86
    .end local v0    # "_arg0":Lcom/samsung/accessory/callprovider/ICallForwardingCallbackInterface;
    .end local v1    # "_arg1":I
    :sswitch_4
    const-string v5, "com.samsung.accessory.callprovider.ICallForwardingInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/accessory/callprovider/ICallForwardingCallbackInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/callprovider/ICallForwardingCallbackInterface;

    move-result-object v0

    .line 90
    .restart local v0    # "_arg0":Lcom/samsung/accessory/callprovider/ICallForwardingCallbackInterface;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 92
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 93
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/accessory/callprovider/ICallForwardingInterface$Stub;->getCallForwardingNumberWithReason(Lcom/samsung/accessory/callprovider/ICallForwardingCallbackInterface;II)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 99
    .end local v0    # "_arg0":Lcom/samsung/accessory/callprovider/ICallForwardingCallbackInterface;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :sswitch_5
    const-string v5, "com.samsung.accessory.callprovider.ICallForwardingInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/accessory/callprovider/ICallForwardingCallbackInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/callprovider/ICallForwardingCallbackInterface;

    move-result-object v0

    .line 103
    .restart local v0    # "_arg0":Lcom/samsung/accessory/callprovider/ICallForwardingCallbackInterface;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/samsung/accessory/callprovider/ICallForwardingInterface$Stub;->setCallForwardingNumberUSSD(Lcom/samsung/accessory/callprovider/ICallForwardingCallbackInterface;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 110
    .end local v0    # "_arg0":Lcom/samsung/accessory/callprovider/ICallForwardingCallbackInterface;
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_6
    const-string v5, "com.samsung.accessory.callprovider.ICallForwardingInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 115
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/accessory/callprovider/ICallForwardingInterface$Stub;->setCallForwardingNumberARS(Ljava/lang/String;I)V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
