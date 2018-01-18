.class public Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;
.super Ljava/lang/Object;
.source "MultiSimCallForwardManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$CFAction;,
        Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;
    }
.end annotation


# static fields
.field private static final INT_SLOT1:I = 0x0

.field private static final INT_SLOT2:I = 0x1

.field public static RESULT_FAILED:I

.field public static RESULT_SUCCESS:I

.field public static RESULT_UNKNOWN:I

.field private static final TAG:Ljava/lang/String;

.field static isProgress:Z


# instance fields
.field private currentSimId:I

.field private deviceID:Ljava/lang/String;

.field private mCFAction:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$CFAction;

.field private mContext:Landroid/content/Context;

.field private mExternalListener:Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

.field mInternalListener:Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

.field private simResultsGetCF:[I

.field private simResultsSetCF:[I

.field private states:[Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    const-class v0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->TAG:Ljava/lang/String;

    .line 37
    sput-boolean v1, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->isProgress:Z

    .line 66
    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->RESULT_UNKNOWN:I

    .line 67
    const/4 v0, 0x1

    sput v0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->RESULT_FAILED:I

    .line 68
    sput v1, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->RESULT_SUCCESS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "device"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->currentSimId:I

    .line 70
    new-array v2, v4, [I

    sget v3, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->RESULT_UNKNOWN:I

    aput v3, v2, v5

    sget v3, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->RESULT_UNKNOWN:I

    aput v3, v2, v6

    iput-object v2, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->simResultsSetCF:[I

    .line 71
    new-array v2, v4, [I

    sget v3, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->RESULT_FAILED:I

    aput v3, v2, v5

    sget v3, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->RESULT_FAILED:I

    aput v3, v2, v6

    iput-object v2, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->simResultsGetCF:[I

    .line 376
    new-instance v2, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$4;-><init>(Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;)V

    iput-object v2, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->mInternalListener:Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    .line 108
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->init(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;)V

    .line 109
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->isDualModel()Z

    move-result v1

    .line 111
    .local v1, "multiSimModel":Z
    sget-object v2, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MultiSimCallForwardManager :: multiSimModel ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], deviceID ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->deviceID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], listener ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    if-eqz v1, :cond_2

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;>;"
    sget-object v2, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;->SLOT2:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    invoke-direct {p0, v2}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->isSimExist(Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    sget-object v2, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->TAG:Ljava/lang/String;

    const-string v3, "MultiSimCallForwardManager :: add SLOT2 to list"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    sget-object v2, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;->SLOT2:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    :goto_0
    sget-object v2, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;->SLOT1:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    invoke-direct {p0, v2}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->isSimExist(Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 123
    sget-object v2, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->TAG:Ljava/lang/String;

    const-string v3, "MultiSimCallForwardManager :: add SLOT1 to list"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    sget-object v2, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;->SLOT1:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    iput-object v2, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->states:[Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    .line 129
    iget-object v2, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->states:[Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 140
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;>;"
    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->checkAirplaneMode()V

    .line 142
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->checkRebootingState()V

    .line 144
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->statesToString()V

    .line 145
    return-void

    .line 120
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;>;"
    :cond_0
    sget-object v2, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->TAG:Ljava/lang/String;

    const-string v3, "MultiSimCallForwardManager :: sim SLOT2 not ready"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 126
    :cond_1
    sget-object v2, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->TAG:Ljava/lang/String;

    const-string v3, "MultiSimCallForwardManager :: sim SLOT1 not ready"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 131
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;>;"
    :cond_2
    sget-object v2, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;->SLOT1:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    invoke-direct {p0, v2}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->isSimExist(Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 132
    new-array v2, v6, [Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    sget-object v3, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;->SLOT1:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    aput-object v3, v2, v5

    iput-object v2, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->states:[Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    goto :goto_2

    .line 136
    :cond_3
    sget-object v2, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->TAG:Ljava/lang/String;

    const-string v3, "MultiSimCallForwardManager :: default slot is not ready"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "device"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;
    .param p4, "sim"    # Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->currentSimId:I

    .line 70
    new-array v0, v2, [I

    sget v1, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->RESULT_UNKNOWN:I

    aput v1, v0, v3

    sget v1, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->RESULT_UNKNOWN:I

    aput v1, v0, v4

    iput-object v0, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->simResultsSetCF:[I

    .line 71
    new-array v0, v2, [I

    sget v1, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->RESULT_FAILED:I

    aput v1, v0, v3

    sget v1, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->RESULT_FAILED:I

    aput v1, v0, v4

    iput-object v0, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->simResultsGetCF:[I

    .line 376
    new-instance v0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$4;-><init>(Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->mInternalListener:Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    .line 84
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->init(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;)V

    .line 86
    sget-object v0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MultiSimCallForwardManager :: sim ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], deviceID ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->deviceID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], istener ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-direct {p0, p4}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->isSimExist(Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    new-array v0, v4, [Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    aput-object p4, v0, v3

    iput-object v0, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->states:[Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    .line 96
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->checkAirplaneMode()V

    .line 98
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->checkRebootingState()V

    .line 100
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->statesToString()V

    .line 101
    return-void

    .line 93
    :cond_0
    sget-object v0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MultiSimCallForwardManager :: sim ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is not ready"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;)Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->getCurrentSim()Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;)[I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->simResultsSetCF:[I

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;Ljava/lang/String;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->handleSetCallForwardError(Ljava/lang/String;ZI)V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->updateGetSuccessCFSimResult()V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->handleGetCallForwardSuccess(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->deviceID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;)Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->getCallForwardSetupBySim()Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;)Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$CFAction;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->mCFAction:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$CFAction;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->updateSetSuccessCFSimResult(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->isExistNextSim()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->proceedNextSimSot()V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->handleSetCallForwardSuccess(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private checkAirplaneMode()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->states:[Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    .line 156
    sget-object v0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->TAG:Ljava/lang/String;

    const-string v1, "MultiSimCallForwardManager :: Airplane mode is ON"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    return-void
.end method

.method private checkRebootingState()V
    .locals 5

    .prologue
    .line 161
    const-string v0, "sys.shutdown.requested"

    .line 162
    .local v0, "SHUTDOWN_ACTION_PROPERTY":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/systemproperty/SystemPropertyFactory;->getAndroidSystemProperty()Lcom/samsung/android/app/watchmanager/plugin/libinterface/systemproperty/AndroidSystemInterface;

    move-result-object v2

    const-string v3, "sys.shutdown.requested"

    invoke-interface {v2, v3}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/systemproperty/AndroidSystemInterface;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "rebootValue":Ljava/lang/String;
    sget-object v2, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MultiSimCallForwardManager :: checkRebootingState, rebootValue ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->states:[Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    .line 168
    sget-object v2, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->TAG:Ljava/lang/String;

    const-string v3, "MultiSimCallForwardManager :: checkRebootingState, device is in Rebooting state"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    return-void
.end method

.method public static clear()V
    .locals 3

    .prologue
    .line 516
    sget-object v0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clear starts, isProgress ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->isProgress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->isProgress:Z

    .line 518
    sget-object v0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->TAG:Ljava/lang/String;

    const-string v1, "clear ends"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    return-void
.end method

.method public static doDisableCallForwardingModemIsOff(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    .prologue
    const/4 v5, 0x1

    .line 524
    sget-object v2, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doDisableCallForwardingModemIsOff starts, deviceID ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], listener ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    invoke-static {p0, p1}, Lcom/samsung/android/hostmanager/status/StatusUtils;->getCallForwardingActionSim1(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 527
    .local v0, "lastActivateModeIntSim1":I
    sget-object v2, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doDisableCallForwardingModemIsOff, lastActivateModeIntSim1 ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    invoke-static {p0, p1}, Lcom/samsung/android/hostmanager/status/StatusUtils;->getCallForwardingActionSim2(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 530
    .local v1, "lastActivateModeIntSim2":I
    sget-object v2, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doDisableCallForwardingModemIsOff, lastActivateModeIntSim2 ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    if-eq v0, v5, :cond_0

    if-ne v1, v5, :cond_1

    .line 533
    :cond_0
    new-instance v2, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;

    invoke-direct {v2, p0, p1, p2}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;)V

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->startsetCallForwarding(Ljava/lang/String;)V

    .line 535
    :cond_1
    sget-object v2, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->TAG:Ljava/lang/String;

    const-string v3, "doDisableCallForwardingModemIsOff ends"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    return-void
.end method

.method private getCallForwardSetupBySim()Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;
    .locals 2

    .prologue
    .line 260
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->getCurrentSim()Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;->SLOT2:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->getInstance()Lcom/samsung/android/hostmanager/callforward/CallForwardParser;

    move-result-object v0

    .line 261
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->getCallForwardSetupSim2()Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;

    move-result-object v0

    .line 262
    :goto_0
    return-object v0

    .line 261
    :cond_0
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->getInstance()Lcom/samsung/android/hostmanager/callforward/CallForwardParser;

    move-result-object v0

    .line 262
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->getCallForwardSetupSim1()Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;

    move-result-object v0

    goto :goto_0
.end method

.method private getCurrentSim()Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;
    .locals 2

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->isExistSim()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->states:[Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    iget v1, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->currentSimId:I

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPhoneNumberSim1()Ljava/lang/String;
    .locals 3

    .prologue
    .line 334
    sget-object v1, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->TAG:Ljava/lang/String;

    const-string v2, "getPhoneNumberSim1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->getTMSim1()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->getPhoneNumber(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, "res":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->TAG:Ljava/lang/String;

    const-string v2, "getPhoneNumberSim1"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->printPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    return-object v0
.end method

.method public static getPhoneNumberSim2()Ljava/lang/String;
    .locals 3

    .prologue
    .line 341
    sget-object v1, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->TAG:Ljava/lang/String;

    const-string v2, "getPhoneNumberSim2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const/4 v0, 0x0

    .line 343
    .local v0, "res":Ljava/lang/String;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-gt v1, v2, :cond_0

    .line 344
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->getTMSim2()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->getPhoneNumber(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    .line 348
    :goto_0
    sget-object v1, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->TAG:Ljava/lang/String;

    const-string v2, "getPhoneNumberSim2"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->printPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    return-object v0

    .line 346
    :cond_0
    sget-object v1, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;->SLOT2:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;->value()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/hostmanager/callforward/LMultiSimManager;->getPhoneNumber(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPhoneTypeSim1()Ljava/lang/String;
    .locals 4

    .prologue
    .line 310
    sget-object v1, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->TAG:Ljava/lang/String;

    const-string v2, "getPhoneTypeSim1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const/4 v0, 0x0

    .line 312
    .local v0, "res":Ljava/lang/String;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-gt v1, v2, :cond_0

    .line 313
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->getTMSim1()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->getPhoneType(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    .line 317
    :goto_0
    sget-object v1, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPhoneTypeSim1, res ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    return-object v0

    .line 315
    :cond_0
    sget-object v1, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;->SLOT1:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;->value()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/hostmanager/callforward/LMultiSimManager;->getPhoneType(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPhoneTypeSim2()Ljava/lang/String;
    .locals 4

    .prologue
    .line 322
    sget-object v1, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->TAG:Ljava/lang/String;

    const-string v2, "getPhoneTypeSim2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const/4 v0, 0x0

    .line 324
    .local v0, "res":Ljava/lang/String;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-gt v1, v2, :cond_0

    .line 325
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->getTMSim2()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->getPhoneType(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    .line 329
    :goto_0
    sget-object v1, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPhoneTypeSim2, res ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return-object v0

    .line 327
    :cond_0
    sget-object v1, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;->SLOT2:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;->value()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/hostmanager/callforward/LMultiSimManager;->getPhoneType(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private handleGetCallForwardError(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 500
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->mExternalListener:Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->mExternalListener:Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;->onGetCallForwardError(Ljava/lang/String;)V

    .line 503
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->isProgress:Z

    .line 504
    return-void
.end method

.method private handleGetCallForwardSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "phone"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 485
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->simResultsGetCF:[I

    aget v0, v0, v3

    sget v1, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->RESULT_SUCCESS:I

    if-ne v0, v1, :cond_0

    .line 486
    invoke-static {p1, v2}, Lcom/samsung/android/hostmanager/status/StatusUtils;->updateCallForwardingActionSim1(Ljava/lang/String;I)V

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->simResultsGetCF:[I

    aget v0, v0, v2

    sget v1, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->RESULT_SUCCESS:I

    if-ne v0, v1, :cond_1

    .line 490
    invoke-static {p1, v2}, Lcom/samsung/android/hostmanager/status/StatusUtils;->updateCallForwardingActionSim2(Ljava/lang/String;I)V

    .line 493
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->mExternalListener:Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    if-eqz v0, :cond_2

    .line 494
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->mExternalListener:Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->simResultsGetCF:[I

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;->onGetCallForwardSuccess(Ljava/lang/String;Ljava/lang/String;[I)V

    .line 496
    :cond_2
    sput-boolean v3, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->isProgress:Z

    .line 497
    return-void
.end method

.method private handleOnProgressCallForwardError(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "activate"    # Z

    .prologue
    .line 478
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->mExternalListener:Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->mExternalListener:Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;->onProgress(Ljava/lang/String;Z)V

    .line 481
    :cond_0
    return-void
.end method

.method private handleSetCallForwardError(Ljava/lang/String;ZI)V
    .locals 1
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "activate"    # Z
    .param p3, "reason"    # I

    .prologue
    .line 469
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->mExternalListener:Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->mExternalListener:Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;->onSetCallForwardError(Ljava/lang/String;ZI)V

    .line 472
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->isProgress:Z

    .line 473
    return-void
.end method

.method private handleSetCallForwardSuccess(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "phone"    # Ljava/lang/String;
    .param p3, "activate"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 449
    if-eqz p3, :cond_3

    move v0, v1

    .line 452
    .local v0, "action":I
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->simResultsSetCF:[I

    aget v3, v3, v2

    sget v4, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->RESULT_SUCCESS:I

    if-ne v3, v4, :cond_0

    .line 453
    invoke-static {p1, v0}, Lcom/samsung/android/hostmanager/status/StatusUtils;->updateCallForwardingActionSim1(Ljava/lang/String;I)V

    .line 456
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->simResultsSetCF:[I

    aget v1, v3, v1

    sget v3, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->RESULT_SUCCESS:I

    if-ne v1, v3, :cond_1

    .line 457
    invoke-static {p1, v0}, Lcom/samsung/android/hostmanager/status/StatusUtils;->updateCallForwardingActionSim2(Ljava/lang/String;I)V

    .line 460
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->mExternalListener:Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    if-eqz v1, :cond_2

    .line 461
    iget-object v1, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->mExternalListener:Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    iget-object v3, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->simResultsSetCF:[I

    invoke-interface {v1, p1, p2, p3, v3}, Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;->onSetCallForwardSuccess(Ljava/lang/String;Ljava/lang/String;Z[I)V

    .line 463
    :cond_2
    sput-boolean v2, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->isProgress:Z

    .line 464
    return-void

    .end local v0    # "action":I
    :cond_3
    move v0, v2

    .line 449
    goto :goto_0
.end method

.method private init(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "device"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->mContext:Landroid/content/Context;

    .line 149
    iput-object p2, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->deviceID:Ljava/lang/String;

    .line 150
    iput-object p3, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->mExternalListener:Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    .line 151
    return-void
.end method

.method public static isDualModel()Z
    .locals 8

    .prologue
    const/16 v7, 0x13

    .line 266
    const/4 v1, 0x0

    .line 267
    .local v1, "res":Z
    sget-object v4, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDualModel, Build.VERSION.SDK_INT = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v4, v7, :cond_3

    .line 269
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 270
    .local v2, "t1":Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/APIChecker;->getTelephonyService2()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 271
    .local v3, "t2":Landroid/telephony/TelephonyManager;
    sget-object v4, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDualModel, t1 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    sget-object v4, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDualModel, t2 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->hasTwoSim()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 276
    :goto_0
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->getModelName()Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "modelName":Ljava/lang/String;
    sget-object v4, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDualModel, modelName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const-string v4, "SCH-I939"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 279
    const/4 v1, 0x0

    .line 292
    .end local v0    # "modelName":Ljava/lang/String;
    .end local v2    # "t1":Landroid/telephony/TelephonyManager;
    .end local v3    # "t2":Landroid/telephony/TelephonyManager;
    :cond_1
    :goto_1
    sget-object v4, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDualModel, res = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    return v1

    .line 274
    .restart local v2    # "t1":Landroid/telephony/TelephonyManager;
    .restart local v3    # "t2":Landroid/telephony/TelephonyManager;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 281
    .end local v2    # "t1":Landroid/telephony/TelephonyManager;
    .end local v3    # "t2":Landroid/telephony/TelephonyManager;
    :cond_3
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v4, v7, :cond_4

    .line 282
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 283
    .restart local v2    # "t1":Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/APIChecker;->getTelephonyService2()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 284
    .restart local v3    # "t2":Landroid/telephony/TelephonyManager;
    sget-object v4, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDualModel, t1 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    sget-object v4, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDualModel, t2 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/APIChecker;->isMultiSimSlot()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 288
    goto :goto_1

    .line 289
    .end local v2    # "t1":Landroid/telephony/TelephonyManager;
    .end local v3    # "t2":Landroid/telephony/TelephonyManager;
    :cond_4
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/LMultiSimManager;->isDual()Z

    move-result v1

    .line 290
    sget-object v4, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDualModel, Android 5.0 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private isExistNextSim()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 186
    iget-object v1, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->states:[Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->currentSimId:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->states:[Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isExistSim()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 182
    iget-object v1, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->states:[Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->currentSimId:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->currentSimId:I

    iget-object v2, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->states:[Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSimExist(Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;)Z
    .locals 4
    .param p1, "sim"    # Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    .prologue
    .line 297
    sget-object v1, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSimExist for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const/4 v0, 0x0

    .line 299
    .local v0, "res":Z
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-gt v1, v2, :cond_1

    .line 300
    sget-object v1, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;->SLOT2:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    if-ne p1, v1, :cond_0

    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->getTMSim2()Landroid/telephony/TelephonyManager;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->isSimExists(Landroid/telephony/TelephonyManager;)Z

    move-result v0

    .line 305
    :goto_1
    sget-object v1, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSimExist res = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    return v0

    .line 301
    :cond_0
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->getTMSim1()Landroid/telephony/TelephonyManager;

    move-result-object v1

    goto :goto_0

    .line 303
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;->value()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/hostmanager/callforward/LMultiSimManager;->isSimExists(I)Z

    move-result v0

    goto :goto_1
.end method

.method private proceedNextSimSot()V
    .locals 4

    .prologue
    .line 353
    sget-object v0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->TAG:Ljava/lang/String;

    const-string v1, "proceedNextSimSot starts"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->setNextSimId()V

    .line 355
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$3;-><init>(Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 361
    sget-object v0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->TAG:Ljava/lang/String;

    const-string v1, "proceedNextSimSot ends"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    return-void
.end method

.method private setNextSimId()V
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->currentSimId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->currentSimId:I

    .line 179
    return-void
.end method

.method private showToast(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .prologue
    .line 507
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$5;-><init>(Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 513
    return-void
.end method

.method private statesToString()V
    .locals 5

    .prologue
    .line 190
    iget-object v2, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->states:[Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    if-nez v2, :cond_0

    const/4 v1, -0x1

    .line 191
    .local v1, "size":I
    :goto_0
    sget-object v2, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "statesToString starts, size ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 193
    sget-object v2, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+++ state ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->states:[Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 190
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->states:[Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    array-length v1, v2

    goto :goto_0

    .line 195
    .restart local v0    # "i":I
    .restart local v1    # "size":I
    :cond_1
    sget-object v2, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->TAG:Ljava/lang/String;

    const-string v3, "statesToString ends"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-void
.end method

.method private updateGetSuccessCFSimResult()V
    .locals 4

    .prologue
    .line 371
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->getCurrentSim()Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;->SLOT2:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 372
    .local v0, "index":I
    :goto_0
    sget-object v1, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateGetSuccessCFSimResult for index ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v1, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->simResultsGetCF:[I

    sget v2, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->RESULT_SUCCESS:I

    aput v2, v1, v0

    .line 374
    return-void

    .line 371
    .end local v0    # "index":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateSetSuccessCFSimResult(Z)V
    .locals 4
    .param p1, "success"    # Z

    .prologue
    .line 365
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->getCurrentSim()Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;->SLOT2:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 366
    .local v0, "index":I
    :goto_0
    sget-object v1, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSetSuccessCFSimResult for index ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v2, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->simResultsSetCF:[I

    if-eqz p1, :cond_1

    sget v1, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->RESULT_SUCCESS:I

    :goto_1
    aput v1, v2, v0

    .line 368
    return-void

    .line 365
    .end local v0    # "index":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 367
    .restart local v0    # "index":I
    :cond_1
    sget v1, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->RESULT_FAILED:I

    goto :goto_1
.end method


# virtual methods
.method public startgetCallForwarding()V
    .locals 3

    .prologue
    .line 228
    sget-boolean v0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->isProgress:Z

    if-eqz v0, :cond_1

    .line 229
    sget-object v0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startgetCallForwarding :: isProgress ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->isProgress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->mExternalListener:Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->mExternalListener:Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->deviceID:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;->onGetCallForwardError(Ljava/lang/String;)V

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->isProgress:Z

    .line 236
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->isExistNextSim()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 237
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->setNextSimId()V

    .line 239
    new-instance v0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$2;-><init>(Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->mCFAction:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$CFAction;

    .line 251
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->mCFAction:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$CFAction;

    invoke-interface {v0}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$CFAction;->doAction()V

    goto :goto_0

    .line 253
    :cond_2
    sget-object v0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->TAG:Ljava/lang/String;

    const-string v1, "startgetCallForwarding :: sim slots are not ready"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->deviceID:Ljava/lang/String;

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->handleGetCallForwardSuccess(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startsetCallForwarding(Ljava/lang/String;)V
    .locals 5
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 199
    sget-boolean v2, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->isProgress:Z

    if-eqz v2, :cond_1

    .line 200
    sget-object v2, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startsetCallForwarding :: isProgress ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->isProgress:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v2, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->deviceID:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    invoke-direct {p0, v2, v0}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->handleOnProgressCallForwardError(Ljava/lang/String;Z)V

    .line 225
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 201
    goto :goto_0

    .line 205
    :cond_1
    sput-boolean v0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->isProgress:Z

    .line 207
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->isExistNextSim()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 208
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->setNextSimId()V

    .line 210
    new-instance v0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$1;-><init>(Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->mCFAction:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$CFAction;

    .line 220
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->mCFAction:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$CFAction;

    invoke-interface {v0}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$CFAction;->doAction()V

    goto :goto_1

    .line 222
    :cond_2
    sget-object v2, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->TAG:Ljava/lang/String;

    const-string v3, "startsetCallForwarding :: sim slots are not ready"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v2, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->deviceID:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    :goto_2
    const/4 v1, 0x6

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->handleSetCallForwardError(Ljava/lang/String;ZI)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method
