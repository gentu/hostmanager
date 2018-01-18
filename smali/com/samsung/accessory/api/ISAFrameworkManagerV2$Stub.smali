.class public abstract Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;
.super Landroid/os/Binder;
.source "ISAFrameworkManagerV2.java"

# interfaces
.implements Lcom/samsung/accessory/api/ISAFrameworkManagerV2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/api/ISAFrameworkManagerV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.accessory.api.ISAFrameworkManagerV2"

.field static final TRANSACTION_acceptServiceConnection:I = 0x7

.field static final TRANSACTION_authenticatePeerAgent:I = 0x5

.field static final TRANSACTION_cleanupAgent:I = 0x13

.field static final TRANSACTION_closeServiceConnection:I = 0xa

.field static final TRANSACTION_findPeerAgents:I = 0x4

.field static final TRANSACTION_getAgentDetails:I = 0xb

.field static final TRANSACTION_getAgentId:I = 0x14

.field static final TRANSACTION_getClientCallback:I = 0xe

.field static final TRANSACTION_getLocalAgentId:I = 0x3

.field static final TRANSACTION_isSocketConnected:I = 0xd

.field static final TRANSACTION_makeFrameworkConnection:I = 0x1

.field static final TRANSACTION_registerComponent:I = 0x2

.field static final TRANSACTION_registerMexCallback:I = 0xf

.field static final TRANSACTION_rejectServiceConnection:I = 0x8

.field static final TRANSACTION_requestServiceConnection:I = 0x6

.field static final TRANSACTION_send:I = 0x9

.field static final TRANSACTION_sendMessage:I = 0x11

.field static final TRANSACTION_sendMessageDeliveryStatus:I = 0x12

.field static final TRANSACTION_tearFrameworkConnection:I = 0xc

.field static final TRANSACTION_unregisterMexCallback:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.samsung.accessory.api.ISAFrameworkManagerV2"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/api/ISAFrameworkManagerV2;
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
    const-string v1, "com.samsung.accessory.api.ISAFrameworkManagerV2"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 43
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

    .line 395
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 42
    :sswitch_0
    const-string v2, "com.samsung.accessory.api.ISAFrameworkManagerV2"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v2, 0x1

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v2, "com.samsung.accessory.api.ISAFrameworkManagerV2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 51
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 53
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/accessory/api/IDeathCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/api/IDeathCallback;

    move-result-object v5

    .line 55
    .local v5, "_arg2":Lcom/samsung/accessory/api/IDeathCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 57
    .local v6, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/accessory/api/ISAServiceConnectionIndicationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/api/ISAServiceConnectionIndicationCallback;

    move-result-object v7

    .local v7, "_arg4":Lcom/samsung/accessory/api/ISAServiceConnectionIndicationCallback;
    move-object/from16 v2, p0

    .line 58
    invoke-virtual/range {v2 .. v7}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->makeFrameworkConnection(ILjava/lang/String;Lcom/samsung/accessory/api/IDeathCallback;ILcom/samsung/accessory/api/ISAServiceConnectionIndicationCallback;)Landroid/os/Bundle;

    move-result-object v8

    .line 59
    .local v8, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    if-eqz v8, :cond_0

    .line 61
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v8, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 67
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 65
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 71
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Lcom/samsung/accessory/api/IDeathCallback;
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":Lcom/samsung/accessory/api/ISAServiceConnectionIndicationCallback;
    .end local v8    # "_result":Landroid/os/Bundle;
    :sswitch_2
    const-string v2, "com.samsung.accessory.api.ISAFrameworkManagerV2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 75
    .local v10, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 76
    .local v4, "_arg1":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11, v4}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->registerComponent(J[B)V

    .line 77
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    const/4 v2, 0x1

    goto :goto_0

    .line 82
    .end local v4    # "_arg1":[B
    .end local v10    # "_arg0":J
    :sswitch_3
    const-string v2, "com.samsung.accessory.api.ISAFrameworkManagerV2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 86
    .restart local v10    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 87
    .local v4, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11, v4}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->getLocalAgentId(JLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 88
    .restart local v8    # "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v8, :cond_1

    .line 90
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v8, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 96
    :goto_2
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 94
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 100
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v8    # "_result":Landroid/os/Bundle;
    .end local v10    # "_arg0":J
    :sswitch_4
    const-string v2, "com.samsung.accessory.api.ISAFrameworkManagerV2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 104
    .restart local v10    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 106
    .local v12, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 108
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/accessory/api/ISAPeerAgentCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/api/ISAPeerAgentCallback;

    move-result-object v6

    .local v6, "_arg3":Lcom/samsung/accessory/api/ISAPeerAgentCallback;
    move-object/from16 v9, p0

    move-object v14, v5

    move-object v15, v6

    .line 109
    invoke-virtual/range {v9 .. v15}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->findPeerAgents(JJLjava/lang/String;Lcom/samsung/accessory/api/ISAPeerAgentCallback;)I

    move-result v8

    .line 110
    .local v8, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 116
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Lcom/samsung/accessory/api/ISAPeerAgentCallback;
    .end local v8    # "_result":I
    .end local v10    # "_arg0":J
    .end local v12    # "_arg1":J
    :sswitch_5
    const-string v2, "com.samsung.accessory.api.ISAFrameworkManagerV2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 120
    .restart local v10    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 122
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 123
    sget-object v2, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .line 129
    .local v5, "_arg2":Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/accessory/api/ISAPeerAgentAuthCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/api/ISAPeerAgentAuthCallback;

    move-result-object v6

    .line 131
    .local v6, "_arg3":Lcom/samsung/accessory/api/ISAPeerAgentAuthCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v20

    .local v20, "_arg4":J
    move-object/from16 v14, p0

    move-wide v15, v10

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    .line 132
    invoke-virtual/range {v14 .. v21}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->authenticatePeerAgent(JLjava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/accessory/api/ISAPeerAgentAuthCallback;J)I

    move-result v8

    .line 133
    .restart local v8    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 126
    .end local v5    # "_arg2":Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    .end local v6    # "_arg3":Lcom/samsung/accessory/api/ISAPeerAgentAuthCallback;
    .end local v8    # "_result":I
    .end local v20    # "_arg4":J
    :cond_2
    const/4 v5, 0x0

    .restart local v5    # "_arg2":Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    goto :goto_3

    .line 139
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    .end local v10    # "_arg0":J
    :sswitch_6
    const-string v2, "com.samsung.accessory.api.ISAFrameworkManagerV2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 143
    .restart local v10    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 145
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    .line 146
    sget-object v2, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .line 152
    .restart local v5    # "_arg2":Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/accessory/api/ISAServiceConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/api/ISAServiceConnectionCallback;

    move-result-object v6

    .line 154
    .local v6, "_arg3":Lcom/samsung/accessory/api/ISAServiceConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/accessory/api/ISAServiceChannelCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/api/ISAServiceChannelCallback;

    move-result-object v7

    .local v7, "_arg4":Lcom/samsung/accessory/api/ISAServiceChannelCallback;
    move-object/from16 v23, p0

    move-wide/from16 v24, v10

    move-object/from16 v26, v4

    move-object/from16 v27, v5

    move-object/from16 v28, v6

    move-object/from16 v29, v7

    .line 155
    invoke-virtual/range {v23 .. v29}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->requestServiceConnection(JLjava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/accessory/api/ISAServiceConnectionCallback;Lcom/samsung/accessory/api/ISAServiceChannelCallback;)I

    move-result v8

    .line 156
    .restart local v8    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 149
    .end local v5    # "_arg2":Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    .end local v6    # "_arg3":Lcom/samsung/accessory/api/ISAServiceConnectionCallback;
    .end local v7    # "_arg4":Lcom/samsung/accessory/api/ISAServiceChannelCallback;
    .end local v8    # "_result":I
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "_arg2":Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    goto :goto_4

    .line 162
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    .end local v10    # "_arg0":J
    :sswitch_7
    const-string v2, "com.samsung.accessory.api.ISAFrameworkManagerV2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 166
    .restart local v10    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 168
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    .line 169
    sget-object v2, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .line 175
    .restart local v5    # "_arg2":Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v28

    .line 177
    .local v28, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/accessory/api/ISAServiceConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/api/ISAServiceConnectionCallback;

    move-result-object v7

    .line 179
    .local v7, "_arg4":Lcom/samsung/accessory/api/ISAServiceConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/accessory/api/ISAServiceChannelCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/api/ISAServiceChannelCallback;

    move-result-object v31

    .local v31, "_arg5":Lcom/samsung/accessory/api/ISAServiceChannelCallback;
    move-object/from16 v23, p0

    move-wide/from16 v24, v10

    move-object/from16 v26, v4

    move-object/from16 v27, v5

    move-object/from16 v30, v7

    .line 180
    invoke-virtual/range {v23 .. v31}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->acceptServiceConnection(JLjava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;JLcom/samsung/accessory/api/ISAServiceConnectionCallback;Lcom/samsung/accessory/api/ISAServiceChannelCallback;)Landroid/os/Bundle;

    move-result-object v8

    .line 181
    .local v8, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    if-eqz v8, :cond_5

    .line 183
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v8, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 189
    :goto_6
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 172
    .end local v5    # "_arg2":Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    .end local v7    # "_arg4":Lcom/samsung/accessory/api/ISAServiceConnectionCallback;
    .end local v8    # "_result":Landroid/os/Bundle;
    .end local v28    # "_arg3":J
    .end local v31    # "_arg5":Lcom/samsung/accessory/api/ISAServiceChannelCallback;
    :cond_4
    const/4 v5, 0x0

    .restart local v5    # "_arg2":Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    goto :goto_5

    .line 187
    .restart local v7    # "_arg4":Lcom/samsung/accessory/api/ISAServiceConnectionCallback;
    .restart local v8    # "_result":Landroid/os/Bundle;
    .restart local v28    # "_arg3":J
    .restart local v31    # "_arg5":Lcom/samsung/accessory/api/ISAServiceChannelCallback;
    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 193
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    .end local v7    # "_arg4":Lcom/samsung/accessory/api/ISAServiceConnectionCallback;
    .end local v8    # "_result":Landroid/os/Bundle;
    .end local v10    # "_arg0":J
    .end local v28    # "_arg3":J
    .end local v31    # "_arg5":Lcom/samsung/accessory/api/ISAServiceChannelCallback;
    :sswitch_8
    const-string v2, "com.samsung.accessory.api.ISAFrameworkManagerV2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 197
    .restart local v10    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 199
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    .line 200
    sget-object v2, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .line 206
    .restart local v5    # "_arg2":Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v28

    .restart local v28    # "_arg3":J
    move-object/from16 v23, p0

    move-wide/from16 v24, v10

    move-object/from16 v26, v4

    move-object/from16 v27, v5

    .line 207
    invoke-virtual/range {v23 .. v29}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->rejectServiceConnection(JLjava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;J)I

    move-result v8

    .line 208
    .local v8, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 203
    .end local v5    # "_arg2":Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    .end local v8    # "_result":I
    .end local v28    # "_arg3":J
    :cond_6
    const/4 v5, 0x0

    .restart local v5    # "_arg2":Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    goto :goto_7

    .line 214
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    .end local v10    # "_arg0":J
    :sswitch_9
    const-string v2, "com.samsung.accessory.api.ISAFrameworkManagerV2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 218
    .restart local v10    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 220
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v36

    .line 222
    .local v36, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 224
    .local v6, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    const/4 v7, 0x1

    .line 226
    .local v7, "_arg4":Z
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 228
    .local v31, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 230
    .local v41, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .local v42, "_arg7":I
    move-object/from16 v32, p0

    move-wide/from16 v33, v10

    move-object/from16 v35, v4

    move-object/from16 v38, v6

    move/from16 v39, v7

    move/from16 v40, v31

    .line 231
    invoke-virtual/range {v32 .. v42}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->send(JLjava/lang/String;J[BZIII)I

    move-result v8

    .line 232
    .restart local v8    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 224
    .end local v7    # "_arg4":Z
    .end local v8    # "_result":I
    .end local v31    # "_arg5":I
    .end local v41    # "_arg6":I
    .end local v42    # "_arg7":I
    :cond_7
    const/4 v7, 0x0

    goto :goto_8

    .line 238
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg3":[B
    .end local v10    # "_arg0":J
    .end local v36    # "_arg2":J
    :sswitch_a
    const-string v2, "com.samsung.accessory.api.ISAFrameworkManagerV2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 242
    .restart local v10    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 243
    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11, v4}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->closeServiceConnection(JLjava/lang/String;)I

    move-result v8

    .line 244
    .restart local v8    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 250
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v8    # "_result":I
    .end local v10    # "_arg0":J
    :sswitch_b
    const-string v2, "com.samsung.accessory.api.ISAFrameworkManagerV2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 254
    .restart local v10    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 255
    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11, v4}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->getAgentDetails(JLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 256
    .local v8, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    if-eqz v8, :cond_8

    .line 258
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v8, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 264
    :goto_9
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 262
    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 268
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v8    # "_result":Landroid/os/Bundle;
    .end local v10    # "_arg0":J
    :sswitch_c
    const-string v2, "com.samsung.accessory.api.ISAFrameworkManagerV2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 271
    .restart local v10    # "_arg0":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->tearFrameworkConnection(J)I

    move-result v8

    .line 272
    .local v8, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 278
    .end local v8    # "_result":I
    .end local v10    # "_arg0":J
    :sswitch_d
    const-string v2, "com.samsung.accessory.api.ISAFrameworkManagerV2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 282
    .restart local v10    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 283
    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11, v4}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->isSocketConnected(JLjava/lang/String;)Z

    move-result v8

    .line 284
    .local v8, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    if-eqz v8, :cond_9

    const/4 v2, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 285
    :cond_9
    const/4 v2, 0x0

    goto :goto_a

    .line 290
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v8    # "_result":Z
    .end local v10    # "_arg0":J
    :sswitch_e
    const-string v2, "com.samsung.accessory.api.ISAFrameworkManagerV2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 293
    .restart local v10    # "_arg0":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->getClientCallback(J)Landroid/os/ResultReceiver;

    move-result-object v8

    .line 294
    .local v8, "_result":Landroid/os/ResultReceiver;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    if-eqz v8, :cond_a

    .line 296
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v8, v0, v2}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 302
    :goto_b
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 300
    :cond_a
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b

    .line 306
    .end local v8    # "_result":Landroid/os/ResultReceiver;
    .end local v10    # "_arg0":J
    :sswitch_f
    const-string v2, "com.samsung.accessory.api.ISAFrameworkManagerV2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 310
    .restart local v10    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 312
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/accessory/api/ISAMexCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/api/ISAMexCallback;

    move-result-object v5

    .line 313
    .local v5, "_arg2":Lcom/samsung/accessory/api/ISAMexCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11, v4, v5}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->registerMexCallback(JLjava/lang/String;Lcom/samsung/accessory/api/ISAMexCallback;)V

    .line 314
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 319
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Lcom/samsung/accessory/api/ISAMexCallback;
    .end local v10    # "_arg0":J
    :sswitch_10
    const-string v2, "com.samsung.accessory.api.ISAFrameworkManagerV2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 323
    .restart local v10    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 324
    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11, v4}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->unregisterMexCallback(JLjava/lang/String;)V

    .line 325
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 330
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v10    # "_arg0":J
    :sswitch_11
    const-string v2, "com.samsung.accessory.api.ISAFrameworkManagerV2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 334
    .restart local v10    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 336
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 338
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v28

    .line 340
    .restart local v28    # "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 342
    .local v7, "_arg4":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b

    const/16 v31, 0x1

    .line 344
    .local v31, "_arg5":Z
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 346
    .restart local v41    # "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .line 348
    .restart local v42    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    .local v34, "_arg8":I
    move-object/from16 v23, p0

    move-wide/from16 v24, v10

    move-object/from16 v26, v4

    move-object/from16 v27, v5

    move-object/from16 v30, v7

    move/from16 v32, v41

    move/from16 v33, v42

    .line 349
    invoke-virtual/range {v23 .. v34}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->sendMessage(JLjava/lang/String;Ljava/lang/String;J[BZIII)I

    move-result v8

    .line 350
    .local v8, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 352
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 342
    .end local v8    # "_result":I
    .end local v31    # "_arg5":Z
    .end local v34    # "_arg8":I
    .end local v41    # "_arg6":I
    .end local v42    # "_arg7":I
    :cond_b
    const/16 v31, 0x0

    goto :goto_c

    .line 356
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v7    # "_arg4":[B
    .end local v10    # "_arg0":J
    .end local v28    # "_arg3":J
    :sswitch_12
    const-string v2, "com.samsung.accessory.api.ISAFrameworkManagerV2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 360
    .restart local v10    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 362
    .restart local v12    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 364
    .local v5, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg3":I
    move-object/from16 v9, p0

    move v14, v5

    move v15, v6

    .line 365
    invoke-virtual/range {v9 .. v15}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->sendMessageDeliveryStatus(JJII)V

    .line 366
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 371
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":I
    .end local v10    # "_arg0":J
    .end local v12    # "_arg1":J
    :sswitch_13
    const-string v2, "com.samsung.accessory.api.ISAFrameworkManagerV2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 375
    .restart local v10    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 376
    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11, v4}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->cleanupAgent(JLjava/lang/String;)V

    .line 377
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 382
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v10    # "_arg0":J
    :sswitch_14
    const-string v2, "com.samsung.accessory.api.ISAFrameworkManagerV2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 386
    .restart local v10    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 388
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 389
    .local v5, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11, v4, v5}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->getAgentId(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 390
    .local v8, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 392
    const/4 v2, 0x1

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
