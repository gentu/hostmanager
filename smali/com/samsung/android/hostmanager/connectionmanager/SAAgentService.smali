.class public Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;
.super Lcom/samsung/android/sdk/accessory/SAAgent;
.source "SAAgentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$HostConnection;,
        Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$LocalBinder;,
        Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ISAPEventListener;,
        Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ConnectionLostReason;,
        Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$AgentErrorType;
    }
.end annotation


# static fields
.field public static final CHANNEL_ID:I = 0xde

.field public static final TAG:Ljava/lang/String; = "SAAgentService"


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mEventListener:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ISAPEventListener;

.field private mFindPeerTask:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mPeerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

.field private mProfileVersion:Ljava/lang/String;

.field private mRequestServiceConnectionTask:Ljava/lang/Runnable;

.field private mSocket:Lcom/samsung/android/sdk/accessory/SASocket;

.field private retryFindPeerCount:I

.field private retryRequestServiceConnectionCount:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 29
    const-string v0, "SAAgentService"

    const-class v1, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$HostConnection;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgent;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 20
    iput-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->mHandler:Landroid/os/Handler;

    .line 22
    iput v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->retryFindPeerCount:I

    .line 24
    iput v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->retryRequestServiceConnectionCount:I

    .line 26
    iput-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->mProfileVersion:Ljava/lang/String;

    .line 57
    iput-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->mEventListener:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ISAPEventListener;

    .line 61
    iput-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->mPeerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .line 63
    iput-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->mSocket:Lcom/samsung/android/sdk/accessory/SASocket;

    .line 154
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$1;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->mFindPeerTask:Ljava/lang/Runnable;

    .line 248
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$2;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->mRequestServiceConnectionTask:Ljava/lang/Runnable;

    .line 285
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$LocalBinder;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->mBinder:Landroid/os/IBinder;

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->mHandler:Landroid/os/Handler;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;)Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->mPeerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;
    .param p1, "x1"    # Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->requestServiceConnection(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;)Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ISAPEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->mEventListener:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ISAPEventListener;

    return-object v0
.end method

.method private retryFindPeer()V
    .locals 4

    .prologue
    .line 166
    iget v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->retryFindPeerCount:I

    if-nez v0, :cond_0

    .line 167
    iget v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->retryFindPeerCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->retryFindPeerCount:I

    .line 169
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->mFindPeerTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 183
    :goto_0
    return-void

    .line 170
    :cond_0
    iget v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->retryFindPeerCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 171
    iget v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->retryFindPeerCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->retryFindPeerCount:I

    .line 173
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->mFindPeerTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 176
    :cond_1
    const-string v0, "SAAgentService"

    const-string v1, "[jdub] fail to call findPeer() with 3 retry"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->retryFindPeerCount:I

    .line 180
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->mFindPeerTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private retryRequestServiceConnection()V
    .locals 4

    .prologue
    .line 260
    iget v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->retryRequestServiceConnectionCount:I

    if-nez v0, :cond_1

    .line 261
    iget v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->retryRequestServiceConnectionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->retryRequestServiceConnectionCount:I

    .line 263
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->mRequestServiceConnectionTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    iget v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->retryRequestServiceConnectionCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 265
    iget v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->retryRequestServiceConnectionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->retryRequestServiceConnectionCount:I

    .line 267
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->mRequestServiceConnectionTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 270
    :cond_2
    const-string v0, "SAAgentService"

    const-string v1, "[jdub] fail to call requestServiceConnection() with 3 retry"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->retryRequestServiceConnectionCount:I

    .line 273
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->mRequestServiceConnectionTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 275
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->mEventListener:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ISAPEventListener;

    if-eqz v0, :cond_0

    .line 276
    const-string v0, "SAAgentService"

    const-string v1, "[jdub] Send request for SAP disconnect"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->mEventListener:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ISAPEventListener;

    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$AgentErrorType;->FAIL:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$AgentErrorType;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ISAPEventListener;->onConnected(Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$AgentErrorType;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public findPeer()V
    .locals 0

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->findPeerAgents()V

    .line 89
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 93
    invoke-super {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->onCreate()V

    .line 94
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->mEventListener:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ISAPEventListener;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->mEventListener:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ISAPEventListener;

    invoke-interface {v0}, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ISAPEventListener;->onDestroy()V

    .line 102
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->onDestroy()V

    .line 103
    return-void
.end method

.method protected onError(Ljava/lang/String;I)V
    .locals 3
    .param p1, "errorMessage"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    .line 108
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/accessory/SAAgent;->onError(Ljava/lang/String;I)V

    .line 110
    const-string v0, "SAAgentService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[jdub] onError, errorMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", errorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->mEventListener:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ISAPEventListener;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->mEventListener:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ISAPEventListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ISAPEventListener;->onError(Ljava/lang/String;I)V

    .line 116
    :cond_0
    return-void
.end method

.method protected onFindPeerAgentResponse(Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V
    .locals 3
    .param p1, "arg0"    # Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    .param p2, "arg1"    # I

    .prologue
    const/16 v2, 0xc0d

    .line 123
    if-nez p2, :cond_1

    .line 124
    const-string v0, "SAAgentService"

    const-string v1, "[jdub] onFindPeerAgentResponse : PEER_AGENT_FOUND"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->mPeerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .line 128
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->mPeerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getProfileVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->mProfileVersion:Ljava/lang/String;

    .line 130
    const-string v0, "SAAgentService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[jdub] Wearable SAP Service Profile Version : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->mProfileVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v0, "SAAgentService"

    const-string v1, "[jdub] requestServiceConnection"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->mPeerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->requestServiceConnection(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    .line 135
    iget v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->retryFindPeerCount:I

    if-eqz v0, :cond_0

    .line 136
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->retryFindPeerCount:I

    .line 137
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->mFindPeerTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    const/16 v0, 0x702

    if-ne p2, v0, :cond_2

    .line 141
    const-string v0, "SAAgentService"

    const-string v1, "[jdub] onFindPeerAgentResponse : FINDPEER_SERVICE_NOT_FOUND"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->retryFindPeer()V

    goto :goto_0

    .line 144
    :cond_2
    if-ne p2, v2, :cond_3

    .line 145
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->mEventListener:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ISAPEventListener;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->mEventListener:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ISAPEventListener;

    const-string v1, "FINDPEER_DUPLICATE_REQUEST"

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ISAPEventListener;->onError(Ljava/lang/String;I)V

    goto :goto_0

    .line 149
    :cond_3
    const-string v0, "SAAgentService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[jdub] onFindPeerAgentResponse errorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onServiceConnectionResponse(Lcom/samsung/android/sdk/accessory/SASocket;I)V
    .locals 3
    .param p1, "arg0"    # Lcom/samsung/android/sdk/accessory/SASocket;
    .param p2, "arg1"    # I

    .prologue
    const/4 v2, 0x0

    .line 190
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->mEventListener:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ISAPEventListener;

    if-nez v0, :cond_0

    .line 191
    const-string v0, "SAAgentService"

    const-string v1, "[jdub] onServiceConnectionResponse : mEventListener null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->mProfileVersion:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 196
    const-string v0, "SAAgentService"

    const-string v1, "[jdub] Profile Version is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->mEventListener:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ISAPEventListener;

    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$AgentErrorType;->FAIL:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$AgentErrorType;

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->mProfileVersion:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ISAPEventListener;->onConnected(Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$AgentErrorType;Ljava/lang/String;)V

    goto :goto_0

    .line 201
    :cond_1
    if-nez p2, :cond_3

    .line 202
    const-string v0, "SAAgentService"

    const-string v1, "[jdub] onServiceConnectionResponse : CONNECTION_SUCCESS"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->mSocket:Lcom/samsung/android/sdk/accessory/SASocket;

    .line 206
    iget v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->retryRequestServiceConnectionCount:I

    if-eqz v0, :cond_2

    .line 207
    iput v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->retryRequestServiceConnectionCount:I

    .line 208
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->mRequestServiceConnectionTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 211
    :cond_2
    const-string v0, "SAAgentService"

    const-string v1, "[jdub] 2.onConnected"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->mEventListener:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ISAPEventListener;

    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$AgentErrorType;->SUCCESS:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$AgentErrorType;

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->mProfileVersion:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ISAPEventListener;->onConnected(Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$AgentErrorType;Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :cond_3
    const/16 v0, 0x405

    if-ne p2, v0, :cond_5

    .line 215
    const-string v0, "SAAgentService"

    const-string v1, "[jdub] onServiceConnectionResponse : CONNECTION_ALREADY_EXIST"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->mSocket:Lcom/samsung/android/sdk/accessory/SASocket;

    .line 219
    iget v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->retryRequestServiceConnectionCount:I

    if-eqz v0, :cond_4

    .line 220
    iput v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->retryRequestServiceConnectionCount:I

    .line 221
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->mRequestServiceConnectionTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 224
    :cond_4
    const-string v0, "SAAgentService"

    const-string v1, "[jdub] 2.onConnected"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->mEventListener:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ISAPEventListener;

    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$AgentErrorType;->SUCCESS:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$AgentErrorType;

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->mProfileVersion:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ISAPEventListener;->onConnected(Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$AgentErrorType;Ljava/lang/String;)V

    goto :goto_0

    .line 227
    :cond_5
    const/16 v0, 0x406

    if-ne p2, v0, :cond_6

    .line 228
    const-string v0, "SAAgentService"

    const-string v1, "[jdub] onServiceConnectionResponse : CONNECTION_FAILURE_PEERAGENT_NO_RESPONSE"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->retryRequestServiceConnection()V

    goto :goto_0

    .line 231
    :cond_6
    const/16 v0, 0x500

    if-ne p2, v0, :cond_7

    .line 232
    const-string v0, "SAAgentService"

    const-string v1, "[jdub] onServiceConnectionResponse : CONNECTION_FAILURE_NETWORK"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->retryRequestServiceConnection()V

    goto/16 :goto_0

    .line 235
    :cond_7
    const/16 v0, 0x40d

    if-ne p2, v0, :cond_8

    .line 236
    const-string v0, "SAAgentService"

    const-string v1, "[jdub] onServiceConnectionResponse : CONNECTION_FAILURE_SERVICE_LIMIT_REACHED"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->retryRequestServiceConnection()V

    goto/16 :goto_0

    .line 239
    :cond_8
    const/16 v0, 0x404

    if-ne p2, v0, :cond_9

    .line 240
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->mEventListener:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ISAPEventListener;

    const-string v1, "CONNECTION_FAILURE_DEVICE_UNREACHABLE"

    invoke-interface {v0, v1, p2}, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ISAPEventListener;->onError(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 243
    :cond_9
    const-string v0, "SAAgentService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[jdub] onServiceConnectionResponse erorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->mEventListener:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ISAPEventListener;

    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$AgentErrorType;->FAIL:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$AgentErrorType;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ISAPEventListener;->onConnected(Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$AgentErrorType;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public sendBytes([B)Z
    .locals 3
    .param p1, "bytes"    # [B

    .prologue
    .line 70
    const/4 v0, 0x0

    .line 73
    .local v0, "result":Z
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->mSocket:Lcom/samsung/android/sdk/accessory/SASocket;

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->mSocket:Lcom/samsung/android/sdk/accessory/SASocket;

    const/16 v2, 0xde

    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/sdk/accessory/SASocket;->send(I[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    const/4 v0, 0x1

    .line 84
    :cond_0
    :goto_0
    return v0

    .line 79
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setEventListener(Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ISAPEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ISAPEventListener;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->mEventListener:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ISAPEventListener;

    .line 67
    return-void
.end method
