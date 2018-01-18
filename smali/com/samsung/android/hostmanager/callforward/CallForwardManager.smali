.class public Lcom/samsung/android/hostmanager/callforward/CallForwardManager;
.super Ljava/lang/Object;
.source "CallForwardManager.java"


# static fields
.field private static final CALLPROVIDER_CF_REASON_ALL:I = 0x68

.field private static final CALLPROVIDER_CF_REASON_ALL_CONDITIONAL:I = 0x69

.field private static final CALLPROVIDER_CF_REASON_BUSY:I = 0x65

.field private static final CALLPROVIDER_CF_REASON_NOT_REACHABLE:I = 0x67

.field private static final CALLPROVIDER_CF_REASON_NO_REPLY:I = 0x66

.field private static final CALLPROVIDER_CF_REASON_UNCONDITIONAL:I = 0x64

.field private static final CALLPROVIDER_CF_SERVICE:Ljava/lang/String; = "com.samsung.accessory.callprovider.cf_setting"

.field private static final EXTRA_PHONENUMBER:Ljava/lang/String; = "phone_number"

.field private static final MESSAGE_GET_CALLFORWARDING:I = 0x0

.field private static final MESSAGE_SET_CALLFORWARDING:I = 0x1

.field private static final MESSAGE_SET_CALLFORWARDING_USSD:I = 0x4

.field private static final MESSAGE_TIMEOUT_GET:I = 0x2

.field private static final MESSAGE_TIMEOUT_SET:I = 0x3

.field private static final MESSAGE_TIMEOUT_SET_USSD:I = 0x5

.field private static final TAG:Ljava/lang/String;

.field private static final TEST_TAG:Ljava/lang/String; = "CF_TYPE"

.field private static final TYPE_INPUT:Ljava/lang/String; = "Type"

.field public static mTshareHandler:Landroid/os/Handler;


# instance fields
.field private final CF_REASON_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private activateCF:Z

.field private final callBack:Lcom/samsung/accessory/callprovider/ICallForwardingCallbackInterface$Stub;

.field private deviceID:Ljava/lang/String;

.field private mActionRunnable:Ljava/lang/Runnable;

.field mCFServiceConnection:Landroid/content/ServiceConnection;

.field private final mCallForwardingSetup:Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;

.field private final mContext:Landroid/content/Context;

.field private mIRemoteService:Lcom/samsung/accessory/callprovider/ICallForwardingInterface;

.field private final mListener:Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

.field private phoneNumber:Ljava/lang/String;

.field private final simstate:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    const-class v0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    .line 671
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->mTshareHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "device"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;
    .param p4, "callForwardingSetup"    # Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;
    .param p5, "simstate"    # Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->mIRemoteService:Lcom/samsung/accessory/callprovider/ICallForwardingInterface;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->activateCF:Z

    .line 75
    new-instance v0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$1;-><init>(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->CF_REASON_MAP:Ljava/util/HashMap;

    .line 265
    new-instance v0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$2;-><init>(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->mCFServiceConnection:Landroid/content/ServiceConnection;

    .line 414
    new-instance v0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$8;-><init>(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->callBack:Lcom/samsung/accessory/callprovider/ICallForwardingCallbackInterface$Stub;

    .line 86
    iput-object p1, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->mContext:Landroid/content/Context;

    .line 87
    iput-object p2, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->deviceID:Ljava/lang/String;

    .line 88
    iput-object p3, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->mListener:Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    .line 89
    iput-object p5, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->simstate:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    .line 90
    iput-object p4, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->mCallForwardingSetup:Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;

    .line 92
    sget-object v0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CallForwardManager :: simstate ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void
.end method

.method private _startActionIfPossible()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->mActionRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->mIRemoteService:Lcom/samsung/accessory/callprovider/ICallForwardingInterface;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->mActionRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->mActionRunnable:Ljava/lang/Runnable;

    .line 263
    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Lcom/samsung/accessory/callprovider/ICallForwardingInterface;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->mIRemoteService:Lcom/samsung/accessory/callprovider/ICallForwardingInterface;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->activateCF:Z

    return v0
.end method

.method static synthetic access$102(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;Lcom/samsung/accessory/callprovider/ICallForwardingInterface;)Lcom/samsung/accessory/callprovider/ICallForwardingInterface;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/callforward/CallForwardManager;
    .param p1, "x1"    # Lcom/samsung/accessory/callprovider/ICallForwardingInterface;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->mIRemoteService:Lcom/samsung/accessory/callprovider/ICallForwardingInterface;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->isNTTCarrier()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->mCallForwardingSetup:Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->stopCallForwardService()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->_startActionIfPossible()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Lcom/samsung/accessory/callprovider/ICallForwardingCallbackInterface$Stub;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->callBack:Lcom/samsung/accessory/callprovider/ICallForwardingCallbackInterface$Stub;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->simstate:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->deviceID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/callforward/CallForwardManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->checkEndsStar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->updateDeactivateSIMState()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->mListener:Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkEndsStar(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 697
    move-object v0, p1

    .line 698
    .local v0, "result":Ljava/lang/String;
    const-string v1, "*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 699
    sget-object v1, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    const-string v2, "Gear number ends with *"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 702
    :cond_0
    return-object v0
.end method

.method public static getPhoneNumber(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 4
    .param p0, "telephonyManager"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 626
    sget-object v1, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPhoneNumber for TM = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    const-string v0, "none"

    .line 628
    .local v0, "phoneNumber":Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->isSimExists(Landroid/telephony/TelephonyManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 629
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 631
    :cond_0
    sget-object v1, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    const-string v2, "getPhoneNumber"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->printPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    return-object v0
.end method

.method public static getPhoneType(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 4
    .param p0, "telephonyManager"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 606
    sget-object v1, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPhoneType for TM = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    const-string v0, "none"

    .line 608
    .local v0, "networkType":Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->isSimExists(Landroid/telephony/TelephonyManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 609
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 621
    :cond_0
    :goto_0
    sget-object v1, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPhoneType result ["

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

    .line 622
    return-object v0

    .line 611
    :pswitch_0
    const-string v0, "CDMA"

    .line 612
    goto :goto_0

    .line 614
    :pswitch_1
    const-string v0, "GSM"

    .line 615
    goto :goto_0

    .line 617
    :pswitch_2
    const-string v0, "SIP"

    goto :goto_0

    .line 609
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getTMSim1()Landroid/telephony/TelephonyManager;
    .locals 3

    .prologue
    .line 536
    sget-object v1, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    const-string v2, "getTMSim1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 538
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->isSim2OnlyIn1ModemPhone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 539
    sget-object v1, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    const-string v2, "DUAL MODEL with 1 modem, has sim card in SLOT 2 only"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const/4 v0, 0x0

    .line 542
    :cond_0
    return-object v0
.end method

.method public static getTMSim2()Landroid/telephony/TelephonyManager;
    .locals 3

    .prologue
    .line 546
    sget-object v1, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    const-string v2, "getTMSim2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-gt v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 548
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/APIChecker;->getTelephonyService2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 549
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->isSim2OnlyIn1ModemPhone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 550
    sget-object v1, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    const-string v2, "DUAL MODEL with 1 modem, has sim card in SLOT 2 only"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "tm":Landroid/telephony/TelephonyManager;
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 553
    .restart local v0    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    return-object v0

    .line 547
    .end local v0    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 644
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    .line 648
    :cond_0
    return v2
.end method

.method public static isIdleCallState(Landroid/telephony/TelephonyManager;)Z
    .locals 4
    .param p0, "telephonyManager"    # Landroid/telephony/TelephonyManager;

    .prologue
    const/4 v0, 0x0

    .line 580
    sget-object v1, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isIdleCallState for TM = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 582
    .local v0, "res":Z
    :cond_0
    sget-object v1, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isIdleCallState result ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    return v0
.end method

.method private isIdleCallStateBySimID()Z
    .locals 4

    .prologue
    .line 568
    sget-object v1, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isIdleCallStateBySimID ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->simstate:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    const/4 v0, 0x0

    .line 570
    .local v0, "res":Z
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-gt v1, v2, :cond_1

    .line 571
    iget-object v1, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->simstate:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    sget-object v2, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;->SLOT2:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->getTMSim2()Landroid/telephony/TelephonyManager;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->isIdleCallState(Landroid/telephony/TelephonyManager;)Z

    move-result v0

    .line 575
    :goto_1
    sget-object v1, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isIdleCallStateBySimID res ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    return v0

    .line 571
    :cond_0
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->getTMSim1()Landroid/telephony/TelephonyManager;

    move-result-object v1

    goto :goto_0

    .line 573
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->simstate:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;->value()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/hostmanager/callforward/LMultiSimManager;->isIdleCallState(I)Z

    move-result v0

    goto :goto_1
.end method

.method private isNTTCarrier()Z
    .locals 4

    .prologue
    .line 663
    sget-object v1, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    const-string v2, "isNTTCarrier starts"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iget-object v1, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->mCallForwardingSetup:Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 667
    .local v0, "res":Z
    :goto_0
    sget-object v1, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNTTCarrier ends ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    return v0

    .line 664
    .end local v0    # "res":Z
    :cond_0
    const-string v1, "NTT"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->mCallForwardingSetup:Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;

    .line 665
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->getCarrier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isNetworkRoaming(Landroid/telephony/TelephonyManager;)Z
    .locals 4
    .param p0, "telephonyManager"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 599
    sget-object v1, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNetworkRoaming for TM = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 601
    .local v0, "res":Z
    :goto_0
    sget-object v1, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNetworkRoaming result ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    return v0

    .line 600
    .end local v0    # "res":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNetworkRoamingBySimID()Z
    .locals 4

    .prologue
    .line 587
    sget-object v1, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNetworkRoamingBySimID ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->simstate:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    const/4 v0, 0x0

    .line 589
    .local v0, "res":Z
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-gt v1, v2, :cond_1

    .line 590
    iget-object v1, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->simstate:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    sget-object v2, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;->SLOT2:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->getTMSim2()Landroid/telephony/TelephonyManager;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->isNetworkRoaming(Landroid/telephony/TelephonyManager;)Z

    move-result v0

    .line 594
    :goto_1
    sget-object v1, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNetworkRoamingBySimID res ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    return v0

    .line 590
    :cond_0
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->getTMSim1()Landroid/telephony/TelephonyManager;

    move-result-object v1

    goto :goto_0

    .line 592
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->simstate:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;->value()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/hostmanager/callforward/LMultiSimManager;->isNetworkRoaming(I)Z

    move-result v0

    goto :goto_1
.end method

.method private isSKTCarrier()Z
    .locals 4

    .prologue
    .line 654
    sget-object v1, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    const-string v2, "isSKTCarrier starts"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget-object v1, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->mCallForwardingSetup:Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 658
    .local v0, "res":Z
    :goto_0
    sget-object v1, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSKTCarrier ends ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    return v0

    .line 655
    .end local v0    # "res":Z
    :cond_0
    const-string v1, "SKT"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->mCallForwardingSetup:Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;

    .line 656
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->getCarrier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static isSim2OnlyIn1ModemPhone()Z
    .locals 2

    .prologue
    .line 557
    const-string v0, "1"

    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->get2ModemValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSimExists(Landroid/telephony/TelephonyManager;)Z
    .locals 4
    .param p0, "telephonyManager"    # Landroid/telephony/TelephonyManager;

    .prologue
    const/4 v0, 0x0

    .line 561
    sget-object v1, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSimExists for TM = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 563
    .local v0, "res":Z
    :cond_0
    sget-object v1, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSimExists result ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    return v0
.end method

.method private performAction(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->mActionRunnable:Ljava/lang/Runnable;

    .line 282
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->_startActionIfPossible()V

    .line 283
    return-void
.end method

.method public static requestLoginStateToTshare(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 714
    sget-object v1, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    const-string v2, "requestLoginStateToTshare()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.gear.tshare.forward.request.getloginstate"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 716
    .local v0, "tshareIntent":Landroid/content/Intent;
    const-string v1, "com.sk.vas.tshare.permission.SELECT_DIVICE"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 717
    return-void
.end method

.method public static sendLoginStateToTshare(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "state"    # I

    .prologue
    .line 707
    sget-object v1, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    const-string v2, "sendLoginStateToTshare()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.gear.tshare.forward.setloginstate"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 709
    .local v0, "tshareIntent":Landroid/content/Intent;
    const-string v1, "login_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 710
    const-string v1, "com.sk.vas.tshare.permission.SELECT_DIVICE"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 711
    return-void
.end method

.method private setARSType(Ljava/lang/String;)V
    .locals 6
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 507
    iget-object v2, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->simstate:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;->value()I

    move-result v1

    .line 508
    .local v1, "simId":I
    sget-object v2, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setARSType starts for simId ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->printPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 510
    .local v0, "intent":Landroid/content/Intent;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-gt v2, v3, :cond_0

    const-string v2, "com.android.phone"

    :goto_0
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 512
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 513
    const-string v2, "simSlot"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 515
    const-string v2, "origin"

    const-string v3, "us_cdma_call_fowarding_setting"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 516
    const-string v2, "extra_by_pass"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 518
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    :goto_1
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$9;

    invoke-direct {v3, p0}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$9;-><init>(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 532
    sget-object v2, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    const-string v3, "setARSType ends"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    return-void

    .line 510
    :cond_0
    const-string v2, "com.android.server.telecom"

    goto :goto_0

    .line 519
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private startCallForwardService()V
    .locals 5

    .prologue
    .line 388
    sget-object v2, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bind CF Service mIRemoteService = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->mIRemoteService:Lcom/samsung/accessory/callprovider/ICallForwardingInterface;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v2, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->mIRemoteService:Lcom/samsung/accessory/callprovider/ICallForwardingInterface;

    if-nez v2, :cond_0

    .line 390
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.accessory.callprovider.cf_setting"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 391
    .local v0, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.accessory.callprovider"

    const-string v4, "com.samsung.accessory.callprovider.CallForwardingService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 392
    iget-object v2, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->mCFServiceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 393
    .local v1, "res":Z
    sget-object v2, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bind CF Service, res ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "res":Z
    :cond_0
    return-void
.end method

.method private startgetCallForwardingNumber()V
    .locals 2

    .prologue
    .line 320
    sget-object v0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    const-string v1, "startgetCallForwardingNumber"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->startCallForwardService()V

    .line 323
    new-instance v0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$5;-><init>(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->performAction(Ljava/lang/Runnable;)V

    .line 334
    return-void
.end method

.method private startgetCallForwardingNumberWithReason(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 337
    sget-object v0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startgetCallForwardingNumberWithReason, reason ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->startCallForwardService()V

    .line 340
    new-instance v0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$6;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$6;-><init>(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;I)V

    invoke-direct {p0, v0}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->performAction(Ljava/lang/Runnable;)V

    .line 351
    return-void
.end method

.method private startsetCallForwardingNumber(Ljava/lang/String;)V
    .locals 2
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    .line 286
    sget-object v0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    const-string v1, "startsetCallForwardingNumber"

    invoke-static {v0, v1, p1}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->printPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->startCallForwardService()V

    .line 289
    new-instance v0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$3;-><init>(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->performAction(Ljava/lang/Runnable;)V

    .line 300
    return-void
.end method

.method private startsetCallForwardingNumberViaUSSD(Ljava/lang/String;)V
    .locals 2
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    .line 354
    sget-object v0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    const-string v1, "startsetCallForwardingNumberViaUSSD"

    invoke-static {v0, v1, p1}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->printPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->startCallForwardService()V

    .line 357
    new-instance v0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$7;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$7;-><init>(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->performAction(Ljava/lang/Runnable;)V

    .line 368
    return-void
.end method

.method private startsetCallForwardingNumberWithReason(Ljava/lang/String;I)V
    .locals 3
    .param p1, "phone"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    .line 303
    sget-object v0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startsetCallForwardingNumberWithReason reason ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->printPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->startCallForwardService()V

    .line 306
    new-instance v0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$4;-><init>(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->performAction(Ljava/lang/Runnable;)V

    .line 317
    return-void
.end method

.method private startsetCallForwardingTShare(Ljava/lang/String;)V
    .locals 6
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 674
    sget-object v1, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    const-string v3, "startsetCallForwardingTShare"

    invoke-static {v1, v3, p1}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->printPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->activateCF:Z

    .line 676
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 677
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "select"

    iget-boolean v1, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->activateCF:Z

    if-eqz v1, :cond_1

    const-string v1, "gear"

    :goto_1
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 678
    const-string v1, "com.android.gear.tshare.forward.request"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 679
    iget-object v1, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->mContext:Landroid/content/Context;

    const-string v3, "com.sk.vas.tshare.permission.SELECT_DIVICE"

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 680
    sput-boolean v2, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->isProgress:Z

    .line 681
    sget-object v1, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->mTshareHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$10;

    invoke-direct {v2, p0}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$10;-><init>(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)V

    const-wide/32 v4, 0xea60

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 694
    return-void

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    move v1, v2

    .line 675
    goto :goto_0

    .line 677
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v1, "mobile"

    goto :goto_1
.end method

.method private stopCallForwardService()V
    .locals 3

    .prologue
    .line 398
    sget-object v0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unbind CF Service mIRemoteService = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->mIRemoteService:Lcom/samsung/accessory/callprovider/ICallForwardingInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->mIRemoteService:Lcom/samsung/accessory/callprovider/ICallForwardingInterface;

    if-eqz v0, :cond_0

    .line 400
    sget-object v0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    const-string v1, "Unbind Service stopService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->mCFServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 402
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->mIRemoteService:Lcom/samsung/accessory/callprovider/ICallForwardingInterface;

    .line 404
    :cond_0
    return-void
.end method

.method private updateDeactivateSIMState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 407
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->simstate:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    sget-object v1, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;->SLOT2:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    if-ne v0, v1, :cond_0

    .line 408
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->deviceID:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/hostmanager/status/StatusUtils;->updateCallForwardingActionSim2(Ljava/lang/String;I)V

    .line 412
    :goto_0
    return-void

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->deviceID:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/hostmanager/status/StatusUtils;->updateCallForwardingActionSim1(Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public startgetCallForwarding()V
    .locals 12

    .prologue
    .line 195
    sget-object v9, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    const-string v10, "startgetCallForwarding, starts"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v9, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->mCallForwardingSetup:Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;

    if-eqz v9, :cond_8

    .line 197
    sget-object v9, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "startgetCallForwarding for:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->mCallForwardingSetup:Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v9, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->mCallForwardingSetup:Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;

    invoke-virtual {v9}, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->getCfSupport()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 199
    iget-object v9, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->mCallForwardingSetup:Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;

    invoke-virtual {v9}, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->getCfType()Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "cfType":Ljava/lang/String;
    sget-object v9, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "startgetCallForwarding, callForwardingSetup.getCfType() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const-string v9, "USSD"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 202
    sget-object v9, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    const-string v10, "startgetCallForwarding, does not support GET phone number for USSD"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v9, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->mListener:Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    iget-object v10, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->deviceID:Ljava/lang/String;

    invoke-interface {v9, v10}, Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;->onGetCallForwardError(Ljava/lang/String;)V

    .line 253
    .end local v1    # "cfType":Ljava/lang/String;
    :goto_0
    sget-object v9, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    const-string v10, "startgetCallForwarding, ends"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return-void

    .line 204
    .restart local v1    # "cfType":Ljava/lang/String;
    :cond_0
    const-string v9, "SS"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 205
    sget-object v9, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    const-string v10, "startgetCallForwarding, current HostDevice supports SS type"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v9, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->mCallForwardingSetup:Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;

    invoke-virtual {v9}, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->getCarrierReq()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "carrierReq":Ljava/lang/String;
    sget-object v9, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "startgetCallForwarding, current HostDevice callForwardingSetup.getCarrierReq() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v9, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->CF_REASON_MAP:Ljava/util/HashMap;

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 210
    iget-object v9, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->deviceID:Ljava/lang/String;

    const-string v10, "support.callforward.multisim"

    invoke-static {v9, v10}, Lcom/samsung/android/hostmanager/status/StatusUtils;->isSupportFeatureHost(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 211
    .local v5, "isSupportMultisim":Z
    iget-object v9, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->deviceID:Ljava/lang/String;

    invoke-static {v9}, Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil;->getIsCheckedMultiSim(Ljava/lang/String;)Z

    move-result v4

    .line 212
    .local v4, "isCheckedMultisim":Z
    sget-object v9, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isSupportMultisim : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", isCheckedMultisim : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    if-eqz v5, :cond_3

    if-eqz v4, :cond_3

    .line 214
    iget-object v9, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->deviceID:Ljava/lang/String;

    const-string v10, "support.callforward.primary"

    invoke-static {v9, v10}, Lcom/samsung/android/hostmanager/status/StatusUtils;->isSupportFeatureHost(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 215
    .local v6, "isSupportPrimaryNumber":Z
    sget-object v9, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isSupportPrimaryNumber : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    if-eqz v6, :cond_2

    .line 217
    sget-object v9, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    const-string v10, "before setting primary device, it needs to check carrier of both device"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v9, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->mCallForwardingSetup:Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;

    invoke-virtual {v9}, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->getMcc()Ljava/lang/String;

    move-result-object v2

    .line 219
    .local v2, "hostMCC":Ljava/lang/String;
    iget-object v9, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->mCallForwardingSetup:Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;

    invoke-virtual {v9}, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->getMnc()Ljava/lang/String;

    move-result-object v3

    .line 220
    .local v3, "hostMNC":Ljava/lang/String;
    iget-object v9, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->deviceID:Ljava/lang/String;

    invoke-static {v9}, Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil;->getWearableMCC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 221
    .local v7, "wearableMCC":Ljava/lang/String;
    iget-object v9, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->deviceID:Ljava/lang/String;

    invoke-static {v9}, Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil;->getWearableMNC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 222
    .local v8, "wearableMNC":Ljava/lang/String;
    sget-object v9, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "hostMCC : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", hostMNC : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    sget-object v9, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "wearableMCC : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", wearableMNC : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-static {v2, v7}, Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil;->compareValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {v3, v8}, Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil;->compareValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 225
    sget-object v9, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    const-string v10, "both sim is same sim code."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v9, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->CF_REASON_MAP:Ljava/util/HashMap;

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->startgetCallForwardingNumberWithReason(I)V

    goto/16 :goto_0

    .line 228
    :cond_1
    sget-object v9, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    const-string v10, "both sim is not same sim code."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 231
    .end local v2    # "hostMCC":Ljava/lang/String;
    .end local v3    # "hostMNC":Ljava/lang/String;
    .end local v7    # "wearableMCC":Ljava/lang/String;
    .end local v8    # "wearableMNC":Ljava/lang/String;
    :cond_2
    iget-object v9, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->CF_REASON_MAP:Ljava/util/HashMap;

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->startgetCallForwardingNumberWithReason(I)V

    goto/16 :goto_0

    .line 234
    .end local v6    # "isSupportPrimaryNumber":Z
    :cond_3
    iget-object v9, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->CF_REASON_MAP:Ljava/util/HashMap;

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->startgetCallForwardingNumberWithReason(I)V

    goto/16 :goto_0

    .line 238
    .end local v4    # "isCheckedMultisim":Z
    .end local v5    # "isSupportMultisim":Z
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->startgetCallForwardingNumber()V

    goto/16 :goto_0

    .line 240
    .end local v0    # "carrierReq":Ljava/lang/String;
    :cond_5
    const-string v9, "ARS"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 241
    sget-object v9, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    const-string v10, "startgetCallForwarding, does not support GET phone number for ARS"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v9, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->mListener:Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    iget-object v10, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->deviceID:Ljava/lang/String;

    invoke-interface {v9, v10}, Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;->onGetCallForwardError(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 244
    :cond_6
    sget-object v9, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "startgetCallForwarding, Abnormal type of CF = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 247
    .end local v1    # "cfType":Ljava/lang/String;
    :cond_7
    sget-object v9, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    const-string v10, "startgetCallForwarding, Call Fowarding is disabled for current Carrier"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 250
    :cond_8
    sget-object v9, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    const-string v10, "startgetCallForwarding, CallForwardSetup is NULL, set SS type callforwarding"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/16 v9, 0x64

    invoke-direct {p0, v9}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->startgetCallForwardingNumberWithReason(I)V

    goto/16 :goto_0
.end method

.method public startsetCallForwarding(Ljava/lang/String;)V
    .locals 11
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 96
    sget-object v6, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    const-string v9, "startsetCallForwarding"

    invoke-static {v6, v9, p1}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->printPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iput-object p1, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->phoneNumber:Ljava/lang/String;

    .line 99
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->activateCF:Z

    .line 101
    iget-object v6, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->mCallForwardingSetup:Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;

    if-eqz v6, :cond_c

    .line 102
    sget-object v6, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "startsetCallForwarding for:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->mCallForwardingSetup:Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v6, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->mCallForwardingSetup:Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->getCfSupport()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 106
    iget-object v6, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->deviceID:Ljava/lang/String;

    invoke-static {v6, v9}, Lcom/samsung/android/hostmanager/status/StatusUtils;->isMultiSimChecked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 107
    iget-object v6, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->mCallForwardingSetup:Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->getPrimaryNum()Ljava/lang/String;

    move-result-object v5

    .line 108
    .local v5, "primaryNumber":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "none"

    .line 109
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 110
    sget-object v6, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startsetCallForwarding, DO Special case for Primary Number feature ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-direct {p0, v5}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->startsetCallForwardingNumberViaUSSD(Ljava/lang/String;)V

    .line 192
    .end local v5    # "primaryNumber":Ljava/lang/String;
    :goto_1
    return-void

    :cond_0
    move v6, v8

    .line 99
    goto :goto_0

    .line 117
    .restart local v5    # "primaryNumber":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->isSKTCarrier()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "4"

    iget-object v9, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->mCallForwardingSetup:Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;

    invoke-virtual {v9}, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->getMultiSimCategory()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 118
    sget-object v6, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    const-string v7, "startsetCallForwarding, T Share case"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->startsetCallForwardingTShare(Ljava/lang/String;)V

    goto :goto_1

    .line 126
    .end local v5    # "primaryNumber":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->mCallForwardingSetup:Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->getCfType()Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "cfType":Ljava/lang/String;
    sget-object v6, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "startsetCallForwarding, callForwardingSetup.getCfType() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const-string v6, "USSD"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 129
    sget-object v6, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    const-string v7, "startsetCallForwarding, current HostDevice supports USSD type"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const-string v6, "CF_TYPE"

    const-string v7, "USSD type"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-boolean v6, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->activateCF:Z

    if-eqz v6, :cond_3

    .line 133
    iget-object v6, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->mCallForwardingSetup:Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->getFwdNum()Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, "fwdNum":Ljava/lang/String;
    sget-object v6, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startsetCallForwarding, type is USSD and callForwardingSetup.getFwdNum() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const-string v6, "NUMBER"

    invoke-virtual {v3, v6, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->startsetCallForwardingNumberViaUSSD(Ljava/lang/String;)V

    .line 191
    .end local v1    # "cfType":Ljava/lang/String;
    .end local v3    # "fwdNum":Ljava/lang/String;
    :goto_2
    sget-object v6, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    const-string v7, "startsetCallForwarding, ends"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 138
    .restart local v1    # "cfType":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->mCallForwardingSetup:Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->getDisableNum()Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "disableNum":Ljava/lang/String;
    sget-object v6, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startsetCallForwarding, type is USSD and callForwardingSetup.getDisableNum() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-direct {p0, v2}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->startsetCallForwardingNumberViaUSSD(Ljava/lang/String;)V

    goto :goto_2

    .line 142
    .end local v2    # "disableNum":Ljava/lang/String;
    :cond_4
    const-string v6, "SS"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 143
    sget-object v6, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    const-string v7, "startsetCallForwarding, current HostDevice supports SS type"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const-string v6, "CF_TYPE"

    const-string v7, "SS type"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v6, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->mCallForwardingSetup:Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->getCarrierReq()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "carrierReq":Ljava/lang/String;
    sget-object v6, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startsetCallForwarding, current HostDevice callForwardingSetup.getCarrierReq() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v6, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->CF_REASON_MAP:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 149
    iget-object v6, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->CF_REASON_MAP:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, p1, v6}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->startsetCallForwardingNumberWithReason(Ljava/lang/String;I)V

    goto :goto_2

    .line 152
    :cond_5
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->startsetCallForwardingNumber(Ljava/lang/String;)V

    goto :goto_2

    .line 154
    .end local v0    # "carrierReq":Ljava/lang/String;
    :cond_6
    const-string v6, "ARS"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 155
    sget-object v6, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    const-string v9, "startsetCallForwarding, current HostDevice supports ARS type"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const-string v6, "CF_TYPE"

    const-string v9, "ARS type"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->isIdleCallStateBySimID()Z

    move-result v6

    if-nez v6, :cond_7

    .line 158
    sget-object v6, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    const-string v7, "startsetCallForwarding, call is in RINGING state"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v6, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->mListener:Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    iget-object v7, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->deviceID:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->activateCF:Z

    const/4 v9, 0x4

    invoke-interface {v6, v7, v8, v9}, Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;->onSetCallForwardError(Ljava/lang/String;ZI)V

    goto/16 :goto_2

    .line 161
    :cond_7
    sget-object v6, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    const-string v9, "startsetCallForwarding, call is in Idle state"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v6, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->mListener:Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    iget-object v9, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->deviceID:Ljava/lang/String;

    iget-boolean v10, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->activateCF:Z

    new-array v7, v7, [I

    aput v8, v7, v8

    invoke-interface {v6, v9, p1, v10, v7}, Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;->onSetCallForwardSuccess(Ljava/lang/String;Ljava/lang/String;Z[I)V

    .line 163
    sget-object v6, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    const-string v7, "startsetCallForwarding, success responce was done, let\'s start ARS"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-boolean v6, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->activateCF:Z

    if-eqz v6, :cond_9

    .line 166
    iget-object v6, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->mCallForwardingSetup:Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->getFwdNum()Ljava/lang/String;

    move-result-object v3

    .line 167
    .restart local v3    # "fwdNum":Ljava/lang/String;
    move-object v4, p1

    .line 168
    .local v4, "number":Ljava/lang/String;
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->isNetworkRoamingBySimID()Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "+"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 169
    iget-object v6, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->mContext:Landroid/content/Context;

    invoke-static {v6, p1}, Lcom/samsung/android/hostmanager/callforward/TelephonyHelper;->normalizeNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 170
    sget-object v6, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    const-string v7, "FIELD_CF_TYPE_ARS not roaming -> normalized number - xxxxxxx"

    invoke-static {v6, v7, v4}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->printPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_8
    sget-object v6, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startsetCallForwarding, type is ARS and callForwardingSetup.getFwdNum() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const-string v6, "NUMBER"

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->setARSType(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 176
    .end local v3    # "fwdNum":Ljava/lang/String;
    .end local v4    # "number":Ljava/lang/String;
    :cond_9
    iget-object v6, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->mCallForwardingSetup:Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->getDisableNum()Ljava/lang/String;

    move-result-object v2

    .line 177
    .restart local v2    # "disableNum":Ljava/lang/String;
    sget-object v6, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startsetCallForwarding, type is ARS and callForwardingSetup.getDisableNum() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-direct {p0, v2}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->setARSType(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 182
    .end local v2    # "disableNum":Ljava/lang/String;
    :cond_a
    sget-object v6, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startsetCallForwarding, Abnormal type of CF = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 185
    .end local v1    # "cfType":Ljava/lang/String;
    :cond_b
    sget-object v6, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    const-string v7, "startsetCallForwarding, Call Fowarding is disabled for current Carrier"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 188
    :cond_c
    sget-object v6, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->TAG:Ljava/lang/String;

    const-string v7, "startsetCallForwarding, CallForwardSetup is NULL, set SS type callforwarding"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/16 v6, 0x64

    invoke-direct {p0, p1, v6}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->startsetCallForwardingNumberWithReason(Ljava/lang/String;I)V

    goto/16 :goto_2
.end method
