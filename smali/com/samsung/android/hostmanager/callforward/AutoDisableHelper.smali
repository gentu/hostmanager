.class public Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;
.super Ljava/lang/Object;
.source "AutoDisableHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TIMEOUT_FIRST:I = 0x1d4c0

.field private static final TIMEOUT_SECOND:I = 0x493e0

.field private static handler:Landroid/os/Handler;

.field private static instance:Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;


# instance fields
.field private deviceid:Ljava/lang/String;

.field private firstTry:Z

.field private mContext:Landroid/content/Context;

.field private mDisableCallForwardListener:Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

.field private mExternallistener:Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

.field private mReadCallForwardListener:Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    const-class v0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->TAG:Ljava/lang/String;

    .line 26
    sput-object v1, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->instance:Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;

    .line 28
    sput-object v1, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->firstTry:Z

    .line 106
    new-instance v0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper$2;-><init>(Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->mReadCallForwardListener:Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    .line 191
    new-instance v0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper$3;-><init>(Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->mDisableCallForwardListener:Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->doRead()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;[I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;
    .param p1, "x1"    # [I

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->printStates([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->doDisable()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;)Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->mExternallistener:Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->canProceed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->firstTry:Z

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->deviceid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;
    .param p4, "x4"    # Z

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->start(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;Z)V

    return-void
.end method

.method private canProceed()Z
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 173
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->deviceid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getConnectedType(Ljava/lang/String;)I

    move-result v1

    .line 174
    .local v1, "connectType":I
    sget-object v6, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "canProceed, connect type ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    if-ne v1, v4, :cond_0

    move v0, v4

    .line 177
    .local v0, "bt":Z
    :goto_0
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->deviceid:Ljava/lang/String;

    const-string v8, "gear_number_pref"

    const-string v9, "auto_call_forward_pref"

    invoke-static {v6, v7, v8, v9}, Lcom/samsung/android/hostmanager/utils/PrefUtils;->getPreferenceWithFilename(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, "mAutoCFD":Ljava/lang/String;
    sget-object v6, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BT connected mobilenetwork = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    if-eqz v0, :cond_1

    const-string v6, "true"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "true"

    iget-object v7, p0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->deviceid:Ljava/lang/String;

    .line 182
    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/status/StatusUtils;->isShowAutoCallForward(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v3, v4

    .line 183
    .local v3, "res":Z
    :goto_1
    sget-object v4, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "canProceed, result ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return v3

    .end local v0    # "bt":Z
    .end local v2    # "mAutoCFD":Ljava/lang/String;
    .end local v3    # "res":Z
    :cond_0
    move v0, v5

    .line 175
    goto :goto_0

    .restart local v0    # "bt":Z
    .restart local v2    # "mAutoCFD":Ljava/lang/String;
    :cond_1
    move v3, v5

    .line 182
    goto :goto_1
.end method

.method private doDisable()V
    .locals 3

    .prologue
    .line 156
    sget-object v0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->TAG:Ljava/lang/String;

    const-string v1, "doDisable starts"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->isStop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    sget-object v0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->TAG:Ljava/lang/String;

    const-string v1, "doDisable, logic was stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :goto_0
    return-void

    .line 162
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->canProceed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->deviceid:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->mDisableCallForwardListener:Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->doDisableCallForwardingModemIsOff(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;)V

    .line 169
    :goto_1
    sget-object v0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->TAG:Ljava/lang/String;

    const-string v1, "doDisable ends"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 166
    :cond_1
    sget-object v0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doDisable device ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->deviceid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] not connected by BT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->stop()V

    goto :goto_1
.end method

.method private doRead()V
    .locals 4

    .prologue
    .line 90
    sget-object v0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->TAG:Ljava/lang/String;

    const-string v1, "doRead starts"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->isStop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    sget-object v0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->TAG:Ljava/lang/String;

    const-string v1, "doRead, logic was stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->canProceed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    new-instance v0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->deviceid:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->mReadCallForwardListener:Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;)V

    .line 98
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->startgetCallForwarding()V

    .line 103
    :goto_1
    sget-object v0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->TAG:Ljava/lang/String;

    const-string v1, "doRead ends"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 100
    :cond_1
    sget-object v0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doRead device ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->deviceid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] not connected by BT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->stop()V

    goto :goto_1
.end method

.method public static getInstance()Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->instance:Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;

    invoke-direct {v0}, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;-><init>()V

    sput-object v0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->instance:Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;

    .line 42
    :cond_0
    sget-object v0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->instance:Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;

    return-object v0
.end method

.method private isStop()Z
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->deviceid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private printStates([I)Ljava/lang/String;
    .locals 4
    .param p1, "states"    # [I

    .prologue
    .line 255
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 256
    .local v1, "res":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 257
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "state ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private resetHanler()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    sget-object v0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 85
    sput-object v1, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->handler:Landroid/os/Handler;

    .line 87
    :cond_0
    return-void
.end method

.method private start(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deviceid"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;
    .param p4, "first"    # Z

    .prologue
    .line 50
    sget-object v0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start starts for ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], firstTry ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iput-boolean p4, p0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->firstTry:Z

    .line 52
    iput-object p1, p0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->mContext:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->deviceid:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->mExternallistener:Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    .line 56
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->isStop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    sget-object v0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->TAG:Ljava/lang/String;

    const-string v1, "start, ubnormal case"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->resetHanler()V

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->handler:Landroid/os/Handler;

    .line 63
    sget-object v2, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper$1;-><init>(Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;)V

    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->firstTry:Z

    if-eqz v0, :cond_1

    const-wide/32 v0, 0x1d4c0

    :goto_1
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 69
    sget-object v0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->TAG:Ljava/lang/String;

    const-string v1, "start ends"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 63
    :cond_1
    const-wide/32 v0, 0x493e0

    goto :goto_1
.end method


# virtual methods
.method public start(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deviceid"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    .prologue
    .line 46
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->start(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;Z)V

    .line 47
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 73
    sget-object v0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->TAG:Ljava/lang/String;

    const-string v1, "stop starts"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iput-object v2, p0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->mContext:Landroid/content/Context;

    .line 75
    iput-object v2, p0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->deviceid:Ljava/lang/String;

    .line 76
    iput-object v2, p0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->mExternallistener:Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    .line 78
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->resetHanler()V

    .line 79
    sget-object v0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->TAG:Ljava/lang/String;

    const-string v1, "stop ends"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void
.end method
