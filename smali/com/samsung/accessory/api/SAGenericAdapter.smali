.class public Lcom/samsung/accessory/api/SAGenericAdapter;
.super Ljava/lang/Object;
.source "SAGenericAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/api/SAGenericAdapter$ICMDeathCallbackStub;
    }
.end annotation


# static fields
.field public static final ACCESSORY_SERVICE_BIND_TIMEOUT:I = 0x1388

.field private static final COMMAND_ADD_ACCESSRY_CALLBACK:I = 0x6

.field private static final COMMAND_CONNECT:I = 0x2

.field private static final COMMAND_CONNECT_RETRY:I = 0x8

.field private static final COMMAND_DISCONNECT:I = 0x3

.field private static final COMMAND_GET_CONNECTED_ACCESSORIES:I = 0x4

.field private static final COMMAND_MAKE_FW_CONNECTION:I = 0x1

.field private static final COMMAND_SET_SAMSUNG_ACCOUNT:I = 0x7

.field private static final COMMAND_TERMINATE_FW_CONNECTION:I = 0x5

.field private static final ERROR_INVALID_PARAM:I = 0x1

.field private static final ERROR_NO_ADMIN_PERMISSION:I = 0x2

.field private static final EXTRA_APPID:Ljava/lang/String; = "appId"

.field private static final EXTRA_APPSECRET:Ljava/lang/String; = "appSecret"

.field private static final EXTRA_AUTOCONNECT_MODE:Ljava/lang/String; = "autoConnectMode"

.field private static final EXTRA_CC:Ljava/lang/String; = "cc"

.field private static final EXTRA_CLIENT_ID:Ljava/lang/String; = "clientId"

.field private static final EXTRA_CONNECTED_ACCESSORIES:Ljava/lang/String; = "connectedAccessories"

.field private static final EXTRA_DATANETWORK:Ljava/lang/String; = "dataNetwork"

.field private static final EXTRA_EMAIL:Ljava/lang/String; = "email"

.field private static final EXTRA_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field private static final EXTRA_GUID:Ljava/lang/String; = "guid"

.field private static final EXTRA_MCC:Ljava/lang/String; = "mcc"

.field private static final EXTRA_MNC:Ljava/lang/String; = "mnc"

.field private static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final EXTRA_RESULT_RECEIVER:Ljava/lang/String; = "resultReceiver"

.field private static final EXTRA_SDK_VERSION_CODE:Ljava/lang/String; = "sdkVersionCode"

.field private static final EXTRA_STATUS_CODE:Ljava/lang/String; = "statusCode"

.field private static final EXTRA_TARGET_APPID:Ljava/lang/String; = "targetAppId"

.field private static final EXTRA_TOKEN:Ljava/lang/String; = "token"

.field private static final EXTRA_TOKEN_SECRET:Ljava/lang/String; = "tokenSecret"

.field private static final EXTRA_TRANSPORT_ADDRESS:Ljava/lang/String; = "address"

.field private static final EXTRA_TRANSPORT_TYPE:Ljava/lang/String; = "transportType"

.field private static final EXTRA_XML_ARRAY:Ljava/lang/String; = "xmlArray"

.field private static final MAX_BIND_ATTEMPT:I = 0x3

.field private static final STATUS_SUCCESS:I

.field private static final TAG:Ljava/lang/String;

.field private static mCMDeathCallback:Lcom/samsung/accessory/api/ICMDeathCallback;

.field static mGenericConnection:Landroid/content/ServiceConnection;

.field private static mOnlyInstance:Lcom/samsung/accessory/api/SAGenericAdapter;


# instance fields
.field private mAccessoryEventReceiver:Landroid/os/ResultReceiver;

.field private mClientId:J

.field private mContext:Landroid/content/Context;

.field private mProxy:Lcom/samsung/accessory/api/ISAGenFrameworkManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/samsung/accessory/api/SAGenericAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/api/SAGenericAdapter;->TAG:Ljava/lang/String;

    .line 110
    new-instance v0, Lcom/samsung/accessory/api/SAGenericAdapter$1;

    invoke-direct {v0}, Lcom/samsung/accessory/api/SAGenericAdapter$1;-><init>()V

    sput-object v0, Lcom/samsung/accessory/api/SAGenericAdapter;->mGenericConnection:Landroid/content/ServiceConnection;

    .line 162
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/accessory/api/SAGenericAdapter;->mClientId:J

    .line 106
    iput-object p1, p0, Lcom/samsung/accessory/api/SAGenericAdapter;->mContext:Landroid/content/Context;

    .line 107
    new-instance v0, Lcom/samsung/accessory/api/SAGenericAdapter$ICMDeathCallbackStub;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/accessory/api/SAGenericAdapter$ICMDeathCallbackStub;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/accessory/api/SAGenericAdapter;->mCMDeathCallback:Lcom/samsung/accessory/api/ICMDeathCallback;

    .line 108
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/samsung/accessory/api/SAGenericAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1()Lcom/samsung/accessory/api/SAGenericAdapter;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/samsung/accessory/api/SAGenericAdapter;->mOnlyInstance:Lcom/samsung/accessory/api/SAGenericAdapter;

    return-object v0
.end method

.method static synthetic access$2(Lcom/samsung/accessory/api/SAGenericAdapter;Lcom/samsung/accessory/api/ISAGenFrameworkManager;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/samsung/accessory/api/SAGenericAdapter;->mProxy:Lcom/samsung/accessory/api/ISAGenFrameworkManager;

    return-void
.end method

.method static synthetic access$3(Lcom/samsung/accessory/api/SAGenericAdapter;J)V
    .locals 1

    .prologue
    .line 93
    iput-wide p1, p0, Lcom/samsung/accessory/api/SAGenericAdapter;->mClientId:J

    return-void
.end method

.method static synthetic access$4(Lcom/samsung/accessory/api/SAGenericAdapter;)Landroid/os/ResultReceiver;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/samsung/accessory/api/SAGenericAdapter;->mAccessoryEventReceiver:Landroid/os/ResultReceiver;

    return-object v0
.end method

.method static synthetic access$5(Lcom/samsung/accessory/api/SAGenericAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/samsung/accessory/api/SAGenericAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6(Lcom/samsung/accessory/api/SAGenericAdapter;)Lcom/samsung/accessory/api/ISAGenFrameworkManager;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/samsung/accessory/api/SAGenericAdapter;->mProxy:Lcom/samsung/accessory/api/ISAGenFrameworkManager;

    return-object v0
.end method

.method static synthetic access$7(Lcom/samsung/accessory/api/SAGenericAdapter;)J
    .locals 2

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/samsung/accessory/api/SAGenericAdapter;->mClientId:J

    return-wide v0
.end method

.method static synthetic access$8()Lcom/samsung/accessory/api/ICMDeathCallback;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/samsung/accessory/api/SAGenericAdapter;->mCMDeathCallback:Lcom/samsung/accessory/api/ICMDeathCallback;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/accessory/api/SAGenericAdapter;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v8, -0x1

    .line 165
    const-class v4, Lcom/samsung/accessory/api/SAGenericAdapter;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lcom/samsung/accessory/api/SAGenericAdapter;->mOnlyInstance:Lcom/samsung/accessory/api/SAGenericAdapter;

    if-nez v3, :cond_0

    .line 166
    new-instance v3, Lcom/samsung/accessory/api/SAGenericAdapter;

    invoke-direct {v3, p0}, Lcom/samsung/accessory/api/SAGenericAdapter;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/samsung/accessory/api/SAGenericAdapter;->mOnlyInstance:Lcom/samsung/accessory/api/SAGenericAdapter;

    .line 168
    :cond_0
    sget-object v3, Lcom/samsung/accessory/api/SAGenericAdapter;->mOnlyInstance:Lcom/samsung/accessory/api/SAGenericAdapter;

    iget-object v3, v3, Lcom/samsung/accessory/api/SAGenericAdapter;->mProxy:Lcom/samsung/accessory/api/ISAGenFrameworkManager;

    if-nez v3, :cond_1

    .line 169
    const/4 v0, 0x0

    .line 170
    .local v0, "attempt":I
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/samsung/accessory/api/ISAGenFrameworkManager;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    .local v2, "intent":Landroid/content/Intent;
    sget-object v3, Lcom/samsung/accessory/api/SAManagerConfig;->ACCESSORY_FRAMEWORK_PACKAGE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    :goto_0
    sget-object v3, Lcom/samsung/accessory/api/SAGenericAdapter;->mOnlyInstance:Lcom/samsung/accessory/api/SAGenericAdapter;

    iget-wide v6, v3, Lcom/samsung/accessory/api/SAGenericAdapter;->mClientId:J

    cmp-long v3, v6, v8

    if-nez v3, :cond_1

    const/4 v3, 0x3

    if-lt v0, v3, :cond_2

    .line 196
    .end local v0    # "attempt":I
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_1
    sget-object v3, Lcom/samsung/accessory/api/SAGenericAdapter;->mOnlyInstance:Lcom/samsung/accessory/api/SAGenericAdapter;

    iget-object v3, v3, Lcom/samsung/accessory/api/SAGenericAdapter;->mProxy:Lcom/samsung/accessory/api/ISAGenFrameworkManager;

    if-eqz v3, :cond_5

    .line 197
    sget-object v3, Lcom/samsung/accessory/api/SAGenericAdapter;->mOnlyInstance:Lcom/samsung/accessory/api/SAGenericAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :goto_2
    monitor-exit v4

    return-object v3

    .line 173
    .restart local v0    # "attempt":I
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_2
    :try_start_1
    sget-object v3, Lcom/samsung/accessory/api/SAGenericAdapter;->mGenericConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {p0, v2, v3, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_4

    .line 175
    :try_start_2
    sget-object v3, Lcom/samsung/accessory/api/SAGenericAdapter;->TAG:Ljava/lang/String;

    const-string v5, "getDefaultAdapter: About start waiting"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    sget-object v5, Lcom/samsung/accessory/api/SAGenericAdapter;->mOnlyInstance:Lcom/samsung/accessory/api/SAGenericAdapter;

    monitor-enter v5
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 177
    :try_start_3
    sget-object v3, Lcom/samsung/accessory/api/SAGenericAdapter;->mOnlyInstance:Lcom/samsung/accessory/api/SAGenericAdapter;

    const-wide/16 v6, 0x1388

    invoke-virtual {v3, v6, v7}, Ljava/lang/Object;->wait(J)V

    .line 176
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 179
    :try_start_4
    sget-object v3, Lcom/samsung/accessory/api/SAGenericAdapter;->mOnlyInstance:Lcom/samsung/accessory/api/SAGenericAdapter;

    iget-wide v6, v3, Lcom/samsung/accessory/api/SAGenericAdapter;->mClientId:J

    cmp-long v3, v6, v8

    if-nez v3, :cond_3

    .line 180
    add-int/lit8 v0, v0, 0x1

    .line 181
    sget-object v3, Lcom/samsung/accessory/api/SAGenericAdapter;->mGenericConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 182
    sget-object v3, Lcom/samsung/accessory/api/SAGenericAdapter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getInstance(): bind timed out! retying"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 186
    :catch_0
    move-exception v1

    .line 187
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_5
    sget-object v3, Lcom/samsung/accessory/api/SAGenericAdapter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getInstance(): InterruptedException - "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 165
    .end local v0    # "attempt":I
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 176
    .restart local v0    # "attempt":I
    .restart local v2    # "intent":Landroid/content/Intent;
    :catchall_1
    move-exception v3

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v3

    .line 184
    :cond_3
    sget-object v3, Lcom/samsung/accessory/api/SAGenericAdapter;->TAG:Ljava/lang/String;

    const-string v5, "getInstance(): Woken up , Service Connected"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 191
    :cond_4
    :try_start_8
    sget-object v3, Lcom/samsung/accessory/api/SAGenericAdapter;->TAG:Ljava/lang/String;

    const-string v5, "getInstance(): Failed to bind! giving up."

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    .line 199
    .end local v0    # "attempt":I
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_5
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private prepareResultReceiver(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;
    .locals 3
    .param p1, "actualReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    const/4 v2, 0x0

    .line 330
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 331
    .local v0, "parcel":Landroid/os/Parcel;
    invoke-virtual {p1, v0, v2}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 332
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 333
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    .line 334
    .local v1, "receiverForSending":Landroid/os/ResultReceiver;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 335
    return-object v1
.end method


# virtual methods
.method public declared-synchronized connect(Ljava/lang/String;II)I
    .locals 7
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "transportType"    # I
    .param p3, "retryCount"    # I

    .prologue
    .line 228
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 229
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "address"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v3, "transportType"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 231
    const-string v3, "autoConnectMode"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 232
    iget-object v3, p0, Lcom/samsung/accessory/api/SAGenericAdapter;->mProxy:Lcom/samsung/accessory/api/ISAGenFrameworkManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 234
    :try_start_1
    iget-object v3, p0, Lcom/samsung/accessory/api/SAGenericAdapter;->mProxy:Lcom/samsung/accessory/api/ISAGenFrameworkManager;

    iget-wide v4, p0, Lcom/samsung/accessory/api/SAGenericAdapter;->mClientId:J

    const/16 v6, 0x8

    invoke-interface {v3, v4, v5, v6, v0}, Lcom/samsung/accessory/api/ISAGenFrameworkManager;->sendCommand(JILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 235
    .local v2, "response":Landroid/os/Bundle;
    const-string v3, "statusCode"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    .line 241
    .end local v2    # "response":Landroid/os/Bundle;
    :goto_0
    monitor-exit p0

    return v3

    .line 236
    :catch_0
    move-exception v1

    .line 238
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    sget-object v3, Lcom/samsung/accessory/api/SAGenericAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "exception: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 241
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v3, -0x1

    goto :goto_0

    .line 228
    .end local v0    # "bundle":Landroid/os/Bundle;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized disconnect(Ljava/lang/String;I)I
    .locals 7
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "transportType"    # I

    .prologue
    .line 245
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 246
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "address"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v3, "transportType"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 248
    iget-object v3, p0, Lcom/samsung/accessory/api/SAGenericAdapter;->mProxy:Lcom/samsung/accessory/api/ISAGenFrameworkManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 250
    :try_start_1
    iget-object v3, p0, Lcom/samsung/accessory/api/SAGenericAdapter;->mProxy:Lcom/samsung/accessory/api/ISAGenFrameworkManager;

    iget-wide v4, p0, Lcom/samsung/accessory/api/SAGenericAdapter;->mClientId:J

    const/4 v6, 0x3

    invoke-interface {v3, v4, v5, v6, v0}, Lcom/samsung/accessory/api/ISAGenFrameworkManager;->sendCommand(JILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 251
    .local v2, "response":Landroid/os/Bundle;
    const-string v3, "statusCode"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    .line 257
    .end local v2    # "response":Landroid/os/Bundle;
    :goto_0
    monitor-exit p0

    return v3

    .line 252
    :catch_0
    move-exception v1

    .line 254
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    sget-object v3, Lcom/samsung/accessory/api/SAGenericAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "exception: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 257
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v3, -0x1

    goto :goto_0

    .line 245
    .end local v0    # "bundle":Landroid/os/Bundle;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getConnectedAccessories()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/accessorymanager/SamDevice;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 288
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 289
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/samsung/accessory/api/SAGenericAdapter;->mProxy:Lcom/samsung/accessory/api/ISAGenFrameworkManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 291
    :try_start_1
    iget-object v4, p0, Lcom/samsung/accessory/api/SAGenericAdapter;->mProxy:Lcom/samsung/accessory/api/ISAGenFrameworkManager;

    iget-wide v6, p0, Lcom/samsung/accessory/api/SAGenericAdapter;->mClientId:J

    const/4 v5, 0x4

    invoke-interface {v4, v6, v7, v5, v0}, Lcom/samsung/accessory/api/ISAGenFrameworkManager;->sendCommand(JILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 292
    .local v2, "response":Landroid/os/Bundle;
    const-class v4, Lcom/samsung/android/sdk/accessorymanager/SamDevice;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 293
    const-string v4, "statusCode"

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 303
    .end local v2    # "response":Landroid/os/Bundle;
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v3

    .line 296
    .restart local v2    # "response":Landroid/os/Bundle;
    :cond_1
    :try_start_2
    const-string v4, "connectedAccessories"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    goto :goto_0

    .line 298
    .end local v2    # "response":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 300
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    sget-object v4, Lcom/samsung/accessory/api/SAGenericAdapter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "exception: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 288
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized isAccessoryCallbackSet()Z
    .locals 1

    .prologue
    .line 204
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/accessory/api/SAGenericAdapter;->mOnlyInstance:Lcom/samsung/accessory/api/SAGenericAdapter;

    iget-object v0, v0, Lcom/samsung/accessory/api/SAGenericAdapter;->mAccessoryEventReceiver:Landroid/os/ResultReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerAccessoryCallback(Landroid/os/ResultReceiver;)Z
    .locals 7
    .param p1, "accessoryEventReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 208
    monitor-enter p0

    :try_start_0
    sget-object v3, Lcom/samsung/accessory/api/SAGenericAdapter;->TAG:Ljava/lang/String;

    const-string v4, "Register callback"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 211
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v3, Lcom/samsung/accessory/api/SAGenericAdapter;->mOnlyInstance:Lcom/samsung/accessory/api/SAGenericAdapter;

    iput-object p1, v3, Lcom/samsung/accessory/api/SAGenericAdapter;->mAccessoryEventReceiver:Landroid/os/ResultReceiver;

    .line 212
    const-string v3, "resultReceiver"

    invoke-direct {p0, p1}, Lcom/samsung/accessory/api/SAGenericAdapter;->prepareResultReceiver(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 213
    iget-object v3, p0, Lcom/samsung/accessory/api/SAGenericAdapter;->mProxy:Lcom/samsung/accessory/api/ISAGenFrameworkManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 215
    :try_start_1
    iget-object v3, p0, Lcom/samsung/accessory/api/SAGenericAdapter;->mProxy:Lcom/samsung/accessory/api/ISAGenFrameworkManager;

    iget-wide v4, p0, Lcom/samsung/accessory/api/SAGenericAdapter;->mClientId:J

    const/4 v6, 0x6

    invoke-interface {v3, v4, v5, v6, v0}, Lcom/samsung/accessory/api/ISAGenFrameworkManager;->sendCommand(JILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 216
    .local v2, "response":Landroid/os/Bundle;
    const-string v3, "statusCode"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 217
    const/4 v3, 0x1

    .line 224
    .end local v2    # "response":Landroid/os/Bundle;
    :goto_0
    monitor-exit p0

    return v3

    .line 219
    :catch_0
    move-exception v1

    .line 220
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    sget-object v3, Lcom/samsung/accessory/api/SAGenericAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "exception: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 224
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 208
    .end local v0    # "bundle":Landroid/os/Bundle;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public release()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 308
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 309
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v3, Lcom/samsung/accessory/api/SAGenericAdapter;->mOnlyInstance:Lcom/samsung/accessory/api/SAGenericAdapter;

    iget-object v3, v3, Lcom/samsung/accessory/api/SAGenericAdapter;->mProxy:Lcom/samsung/accessory/api/ISAGenFrameworkManager;

    if-eqz v3, :cond_2

    .line 311
    :try_start_0
    sget-object v3, Lcom/samsung/accessory/api/SAGenericAdapter;->mOnlyInstance:Lcom/samsung/accessory/api/SAGenericAdapter;

    iget-object v3, v3, Lcom/samsung/accessory/api/SAGenericAdapter;->mProxy:Lcom/samsung/accessory/api/ISAGenFrameworkManager;

    sget-object v4, Lcom/samsung/accessory/api/SAGenericAdapter;->mOnlyInstance:Lcom/samsung/accessory/api/SAGenericAdapter;

    iget-wide v4, v4, Lcom/samsung/accessory/api/SAGenericAdapter;->mClientId:J

    .line 312
    const/4 v6, 0x5

    .line 311
    invoke-interface {v3, v4, v5, v6, v0}, Lcom/samsung/accessory/api/ISAGenFrameworkManager;->sendCommand(JILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 313
    .local v2, "response":Landroid/os/Bundle;
    const-string v3, "statusCode"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    .line 314
    sget-object v3, Lcom/samsung/accessory/api/SAGenericAdapter;->TAG:Ljava/lang/String;

    const-string v4, "Framework connection terminated successfully."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    .end local v2    # "response":Landroid/os/Bundle;
    :cond_0
    :goto_0
    sget-object v3, Lcom/samsung/accessory/api/SAGenericAdapter;->mOnlyInstance:Lcom/samsung/accessory/api/SAGenericAdapter;

    iget-object v3, v3, Lcom/samsung/accessory/api/SAGenericAdapter;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_1

    .line 321
    sget-object v3, Lcom/samsung/accessory/api/SAGenericAdapter;->mOnlyInstance:Lcom/samsung/accessory/api/SAGenericAdapter;

    iget-object v3, v3, Lcom/samsung/accessory/api/SAGenericAdapter;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/samsung/accessory/api/SAGenericAdapter;->mGenericConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 323
    :cond_1
    sget-object v3, Lcom/samsung/accessory/api/SAGenericAdapter;->mOnlyInstance:Lcom/samsung/accessory/api/SAGenericAdapter;

    iput-object v7, v3, Lcom/samsung/accessory/api/SAGenericAdapter;->mProxy:Lcom/samsung/accessory/api/ISAGenFrameworkManager;

    .line 324
    sget-object v3, Lcom/samsung/accessory/api/SAGenericAdapter;->mOnlyInstance:Lcom/samsung/accessory/api/SAGenericAdapter;

    const-wide/16 v4, -0x1

    iput-wide v4, v3, Lcom/samsung/accessory/api/SAGenericAdapter;->mClientId:J

    .line 325
    sget-object v3, Lcom/samsung/accessory/api/SAGenericAdapter;->mOnlyInstance:Lcom/samsung/accessory/api/SAGenericAdapter;

    iput-object v7, v3, Lcom/samsung/accessory/api/SAGenericAdapter;->mAccessoryEventReceiver:Landroid/os/ResultReceiver;

    .line 327
    :cond_2
    return-void

    .line 316
    :catch_0
    move-exception v1

    .line 318
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/samsung/accessory/api/SAGenericAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "exception: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized setAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;)I
    .locals 9
    .param p1, "guid"    # Ljava/lang/String;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "targetAppId"    # Ljava/lang/String;
    .param p4, "token"    # Ljava/lang/String;
    .param p5, "cc"    # Ljava/lang/String;
    .param p6, "email"    # Ljava/lang/String;
    .param p7, "appSecret"    # Ljava/lang/String;
    .param p8, "dataNetwork"    # Z
    .param p9, "mcc"    # I
    .param p10, "mnc"    # I
    .param p11, "tokenSecret"    # Ljava/lang/String;

    .prologue
    .line 262
    monitor-enter p0

    :try_start_0
    sget-object v5, Lcom/samsung/accessory/api/SAGenericAdapter;->TAG:Ljava/lang/String;

    const-string v6, "Setting samsung account details"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 264
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v5, "guid"

    invoke-virtual {v2, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v5, "appId"

    invoke-virtual {v2, v5, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v5, "targetAppId"

    invoke-virtual {v2, v5, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v5, "token"

    invoke-virtual {v2, v5, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v5, "cc"

    invoke-virtual {v2, v5, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v5, "email"

    invoke-virtual {v2, v5, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v5, "appSecret"

    move-object/from16 v0, p7

    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v5, "dataNetwork"

    move/from16 v0, p8

    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 272
    const-string v5, "mcc"

    move/from16 v0, p9

    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 273
    const-string v5, "mnc"

    move/from16 v0, p10

    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 274
    const-string v5, "tokenSecret"

    move-object/from16 v0, p11

    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v5, p0, Lcom/samsung/accessory/api/SAGenericAdapter;->mProxy:Lcom/samsung/accessory/api/ISAGenFrameworkManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    .line 277
    :try_start_1
    iget-object v5, p0, Lcom/samsung/accessory/api/SAGenericAdapter;->mProxy:Lcom/samsung/accessory/api/ISAGenFrameworkManager;

    iget-wide v6, p0, Lcom/samsung/accessory/api/SAGenericAdapter;->mClientId:J

    const/4 v8, 0x7

    invoke-interface {v5, v6, v7, v8, v2}, Lcom/samsung/accessory/api/ISAGenFrameworkManager;->sendCommand(JILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 278
    .local v4, "response":Landroid/os/Bundle;
    const-string v5, "statusCode"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    .line 284
    .end local v4    # "response":Landroid/os/Bundle;
    :goto_0
    monitor-exit p0

    return v5

    .line 279
    :catch_0
    move-exception v3

    .line 281
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    sget-object v5, Lcom/samsung/accessory/api/SAGenericAdapter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "exception: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 284
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v5, -0x1

    goto :goto_0

    .line 262
    .end local v2    # "bundle":Landroid/os/Bundle;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method
