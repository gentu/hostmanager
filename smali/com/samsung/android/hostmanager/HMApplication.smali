.class public Lcom/samsung/android/hostmanager/HMApplication;
.super Landroid/app/Application;
.source "HMApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hostmanager/HMApplication$ContactsEmergencyObserver;,
        Lcom/samsung/android/hostmanager/HMApplication$ContactsObserver;,
        Lcom/samsung/android/hostmanager/HMApplication$LogsObserver;,
        Lcom/samsung/android/hostmanager/HMApplication$DefaultSmsApplicatProviderObserver;
    }
.end annotation


# static fields
.field private static final ACTION_CONTACT_DATA_CHANGED:Ljava/lang/String; = "com.samsung.accessory.saproviders.sacontact.DATA_CHANGED"

.field private static final ACTION_DEFAULT_SMS_CHANGED:Ljava/lang/String; = "com.samsung.accessory.saproviders.samessage.ACTION_DEFAULT_SMS_CHANGED"

.field private static final CALL_LOGS_URI:Landroid/net/Uri;

.field private static final EMERGENCY_CONTACTS_URI:Landroid/net/Uri;

.field private static final EXTRA_URI:Ljava/lang/String; = "URI"

.field private static final FOTA_PROVIDER_EULA_SETTINGS_STATE:Ljava/lang/String; = "wmanager_eula_agree"

.field private static final FOTA_PROVIDER_STATE_NONE:I = 0x0

.field private static final IS_ALREADY_LAUNCHED:Ljava/lang/String; = "is_first_launched"

.field private static final IS_ALREADY_LAUNCHED_KEY:Ljava/lang/String; = "launched"

.field private static final RAW_CONTACTS_URI:Landroid/net/Uri;

.field private static final SMS_DEFAULT_APPLICATION:Ljava/lang/String; = "sms_default_application"

.field private static final TAG:Ljava/lang/String; = "HMApplication"

.field private static mContext:Landroid/content/Context;

.field public static final sPMLock:Ljava/lang/Object;

.field private static sWConnectionMgr:Lcom/samsung/android/hostmanager/connection/IWConnectionManager;


# instance fields
.field private UHMContentObserver:Landroid/database/ContentObserver;

.field private mContactsEmergencyObserver:Lcom/samsung/android/hostmanager/HMApplication$ContactsEmergencyObserver;

.field private mContactsObserver:Lcom/samsung/android/hostmanager/HMApplication$ContactsObserver;

.field private mDefaultSmsSettingObserver:Lcom/samsung/android/hostmanager/HMApplication$DefaultSmsApplicatProviderObserver;

.field private mLogsObserver:Lcom/samsung/android/hostmanager/HMApplication$LogsObserver;

.field private mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private messageContentObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-string v0, "content://logs/historys/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hostmanager/HMApplication;->CALL_LOGS_URI:Landroid/net/Uri;

    .line 61
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/samsung/android/hostmanager/HMApplication;->RAW_CONTACTS_URI:Landroid/net/Uri;

    .line 62
    const-string v0, "content://com.android.contacts/emergency"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hostmanager/HMApplication;->EMERGENCY_CONTACTS_URI:Landroid/net/Uri;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/hostmanager/HMApplication;->sPMLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 116
    new-instance v0, Lcom/samsung/android/hostmanager/HMApplication$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/HMApplication$1;-><init>(Lcom/samsung/android/hostmanager/HMApplication;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/HMApplication;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    .line 142
    new-instance v0, Lcom/samsung/android/hostmanager/HMApplication$2;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/hostmanager/HMApplication$2;-><init>(Lcom/samsung/android/hostmanager/HMApplication;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/HMApplication;->UHMContentObserver:Landroid/database/ContentObserver;

    .line 178
    new-instance v0, Lcom/samsung/android/hostmanager/HMApplication$3;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/hostmanager/HMApplication$3;-><init>(Lcom/samsung/android/hostmanager/HMApplication;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/HMApplication;->messageContentObserver:Landroid/database/ContentObserver;

    .line 197
    new-instance v0, Lcom/samsung/android/hostmanager/HMApplication$DefaultSmsApplicatProviderObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/hostmanager/HMApplication$DefaultSmsApplicatProviderObserver;-><init>(Lcom/samsung/android/hostmanager/HMApplication;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/HMApplication;->mDefaultSmsSettingObserver:Lcom/samsung/android/hostmanager/HMApplication$DefaultSmsApplicatProviderObserver;

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/samsung/android/hostmanager/HMApplication;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/samsung/android/hostmanager/HMApplication;->CALL_LOGS_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/samsung/android/hostmanager/HMApplication;->RAW_CONTACTS_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/samsung/android/hostmanager/HMApplication;->EMERGENCY_CONTACTS_URI:Landroid/net/Uri;

    return-object v0
.end method

.method private checkAlreadyLaunched(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 102
    const-string v3, "is_first_launched"

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/hostmanager/HMApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 103
    .local v2, "prefsFirstLaunch":Landroid/content/SharedPreferences;
    const-string v3, "launched"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 105
    .local v1, "isLaunched":Z
    if-nez v1, :cond_0

    .line 106
    const-string v3, "HMApplication"

    const-string v4, "HostManager is first Launch..."

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 108
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "launched"

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 109
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 112
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return v1
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 289
    sget-object v0, Lcom/samsung/android/hostmanager/HMApplication;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getWearableConnectionMgr()Lcom/samsung/android/hostmanager/connection/IWConnectionManager;
    .locals 2

    .prologue
    .line 38
    sget-object v0, Lcom/samsung/android/hostmanager/HMApplication;->sWConnectionMgr:Lcom/samsung/android/hostmanager/connection/IWConnectionManager;

    if-eqz v0, :cond_0

    .line 39
    sget-object v0, Lcom/samsung/android/hostmanager/HMApplication;->sWConnectionMgr:Lcom/samsung/android/hostmanager/connection/IWConnectionManager;

    .line 42
    :goto_0
    return-object v0

    .line 41
    :cond_0
    new-instance v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/hostmanager/HMApplication;->sWConnectionMgr:Lcom/samsung/android/hostmanager/connection/IWConnectionManager;

    .line 42
    sget-object v0, Lcom/samsung/android/hostmanager/HMApplication;->sWConnectionMgr:Lcom/samsung/android/hostmanager/connection/IWConnectionManager;

    goto :goto_0
.end method

.method private initContactsObserver()V
    .locals 4

    .prologue
    .line 223
    iget-object v0, p0, Lcom/samsung/android/hostmanager/HMApplication;->mContactsObserver:Lcom/samsung/android/hostmanager/HMApplication$ContactsObserver;

    if-nez v0, :cond_0

    .line 224
    new-instance v0, Lcom/samsung/android/hostmanager/HMApplication$ContactsObserver;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/HMApplication$ContactsObserver;-><init>(Lcom/samsung/android/hostmanager/HMApplication;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/HMApplication;->mContactsObserver:Lcom/samsung/android/hostmanager/HMApplication$ContactsObserver;

    .line 225
    sget-object v0, Lcom/samsung/android/hostmanager/HMApplication;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/hostmanager/HMApplication;->RAW_CONTACTS_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/hostmanager/HMApplication;->mContactsObserver:Lcom/samsung/android/hostmanager/HMApplication$ContactsObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 227
    iget-object v0, p0, Lcom/samsung/android/hostmanager/HMApplication;->mContactsObserver:Lcom/samsung/android/hostmanager/HMApplication$ContactsObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/HMApplication$ContactsObserver;->onChange(Z)V

    .line 230
    :cond_0
    return-void
.end method

.method private initEmergencyObserver()V
    .locals 4

    .prologue
    .line 233
    iget-object v0, p0, Lcom/samsung/android/hostmanager/HMApplication;->mContactsEmergencyObserver:Lcom/samsung/android/hostmanager/HMApplication$ContactsEmergencyObserver;

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Lcom/samsung/android/hostmanager/HMApplication$ContactsEmergencyObserver;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/HMApplication$ContactsEmergencyObserver;-><init>(Lcom/samsung/android/hostmanager/HMApplication;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/HMApplication;->mContactsEmergencyObserver:Lcom/samsung/android/hostmanager/HMApplication$ContactsEmergencyObserver;

    .line 235
    sget-object v0, Lcom/samsung/android/hostmanager/HMApplication;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/hostmanager/HMApplication;->EMERGENCY_CONTACTS_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/hostmanager/HMApplication;->mContactsEmergencyObserver:Lcom/samsung/android/hostmanager/HMApplication$ContactsEmergencyObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 237
    iget-object v0, p0, Lcom/samsung/android/hostmanager/HMApplication;->mContactsEmergencyObserver:Lcom/samsung/android/hostmanager/HMApplication$ContactsEmergencyObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/HMApplication$ContactsEmergencyObserver;->onChange(Z)V

    .line 239
    :cond_0
    return-void
.end method

.method private initLogsObserver()V
    .locals 4

    .prologue
    .line 214
    iget-object v0, p0, Lcom/samsung/android/hostmanager/HMApplication;->mLogsObserver:Lcom/samsung/android/hostmanager/HMApplication$LogsObserver;

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Lcom/samsung/android/hostmanager/HMApplication$LogsObserver;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/HMApplication$LogsObserver;-><init>(Lcom/samsung/android/hostmanager/HMApplication;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/HMApplication;->mLogsObserver:Lcom/samsung/android/hostmanager/HMApplication$LogsObserver;

    .line 216
    sget-object v0, Lcom/samsung/android/hostmanager/HMApplication;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/hostmanager/HMApplication;->CALL_LOGS_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/hostmanager/HMApplication;->mLogsObserver:Lcom/samsung/android/hostmanager/HMApplication$LogsObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 218
    iget-object v0, p0, Lcom/samsung/android/hostmanager/HMApplication;->mLogsObserver:Lcom/samsung/android/hostmanager/HMApplication$LogsObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/HMApplication$LogsObserver;->onChange(Z)V

    .line 220
    :cond_0
    return-void
.end method

.method private registerMessageContentObserver(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 126
    const-string v0, "HMApplication"

    const-string v1, "registerMessageContentObserver"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    if-eqz p1, :cond_0

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/hostmanager/HMApplication;->messageContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sms_default_application"

    .line 131
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/hostmanager/HMApplication;->mDefaultSmsSettingObserver:Lcom/samsung/android/hostmanager/HMApplication$DefaultSmsApplicatProviderObserver;

    .line 130
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 133
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->DEBUGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/uhm/framework/appregistry/BaseContentProvider;->APP_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/hostmanager/HMApplication;->UHMContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/uhm/framework/appregistry/BaseContentProvider;->DEVICE_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/hostmanager/HMApplication;->UHMContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 140
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 7

    .prologue
    .line 69
    const-string v3, "HMApplication"

    const-string v4, "G1G2swtich::IU:: HMApplication is onCreate()"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 72
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/HMApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/hostmanager/HMApplication;->mContext:Landroid/content/Context;

    .line 73
    invoke-static {p0}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/util/FeatureUtil;->init(Landroid/content/Context;)V

    .line 74
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.android.hostmanager.service.IUHostManager"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    .local v1, "intent":Landroid/content/Intent;
    sget-object v3, Lcom/samsung/android/hostmanager/HMApplication;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    sget-object v3, Lcom/samsung/android/hostmanager/HMApplication;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 78
    new-instance v3, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/HMApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/samsung/android/hostmanager/HMApplication;->sWConnectionMgr:Lcom/samsung/android/hostmanager/connection/IWConnectionManager;

    .line 80
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 81
    .local v2, "intentHMSAP":Landroid/content/Intent;
    sget-object v3, Lcom/samsung/android/hostmanager/HMApplication;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 82
    sget-object v3, Lcom/samsung/android/hostmanager/HMApplication;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    sget-object v3, Lcom/samsung/android/hostmanager/HMApplication;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 85
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v0

    .line 86
    .local v0, "ichostmanager":Lcom/samsung/android/hostmanager/service/ICHostManager;
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/HMApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/hostmanager/service/ICHostManager;->init(Landroid/content/Context;)V

    .line 88
    sget-object v3, Lcom/samsung/android/hostmanager/HMApplication;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/hostmanager/HMApplication;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 89
    sget-object v3, Lcom/samsung/android/hostmanager/HMApplication;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/samsung/android/hostmanager/HMApplication;->registerMessageContentObserver(Landroid/content/Context;)V

    .line 91
    sget-object v3, Lcom/samsung/android/hostmanager/HMApplication;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/samsung/android/hostmanager/HMApplication;->checkAlreadyLaunched(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 92
    const-string v3, "HMApplication"

    const-string v4, "FOTA Setting DB set to 0"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/HMApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wmanager_eula_agree"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/samsung/android/uhm/framework/ui/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 96
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/HMApplication;->initLogsObserver()V

    .line 97
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/HMApplication;->initContactsObserver()V

    .line 98
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/HMApplication;->initEmergencyObserver()V

    .line 99
    return-void
.end method
