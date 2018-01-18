.class public Lcom/samsung/android/hostmanager/notification/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final ACTION_NOTIFICATION_APP_NAME_UPDATE:Ljava/lang/String; = "android.intent.hostmanager.action.NOTIFICATION_APP_NAME_UPDATE"

.field private static DefaultOffSalesCodeArray:[Ljava/lang/String; = null

.field private static final LABEL_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final META_MASTER_APP_PACKAGENAME:Ljava/lang/String; = "master_app_packagename"

.field private static final META_NOTIFICATION_MAX_BYTE:Ljava/lang/String; = "app_notification_maxbyte"

.field public static final PACKAGENAME_S_REMINDER:Ljava/lang/String; = "com.samsung.android.application.smartassistant"

.field public static final PACKAGENAME_VERIZON_MESSAGE_APP:Ljava/lang/String; = "com.verizon.messaging.vzmsgs"

.field private static final PACKAGE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PREDEFINED_APP_ID_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final REAL_PACKAGENAME_ALARM:Ljava/lang/String;

.field public static final REAL_PACKAGENAME_CALL:Ljava/lang/String; = "com.android.phone"

.field public static final REAL_PACKAGENAME_EMAIL:Ljava/lang/String; = "com.android.email"

.field public static final REAL_PACKAGENAME_EMAIL_NEW:Ljava/lang/String; = "com.samsung.android.email.ui"

.field public static final REAL_PACKAGENAME_MISSEDCALL:Ljava/lang/String; = "com.android.phone"

.field public static final REAL_PACKAGENAME_VOICEMAIL:Ljava/lang/String; = "com.android.phone"

.field public static final REAL_PACKAGENAME_WEATHERWIDGET:Ljava/lang/String; = "com.sec.android.widgetapp.ap.hero.accuweather"

.field static final TAG:Ljava/lang/String; = "Utils"

.field public static final VIRTUAL_PACKAGENAME_ALARM:Ljava/lang/String; = "alarm"

.field public static final VIRTUAL_PACKAGENAME_CALENDAR:Ljava/lang/String; = "calendar"

.field public static final VIRTUAL_PACKAGENAME_CALL:Ljava/lang/String; = "call"

.field public static final VIRTUAL_PACKAGENAME_EMAIL:Ljava/lang/String; = "email"

.field public static final VIRTUAL_PACKAGENAME_MESSAGES:Ljava/lang/String; = "messages"

.field public static final VIRTUAL_PACKAGENAME_MISSEDCALL:Ljava/lang/String; = "missedcall"

.field public static final VIRTUAL_PACKAGENAME_VOICEMAIL:Ljava/lang/String; = "voicemail"

.field private static VMSupportSalesCodeArray:[Ljava/lang/String;

.field private static defaultOffPackageArray:[Ljava/lang/String;

.field private static defaultOnPackageArray:[Ljava/lang/String;

.field private static excludeAppArray:[Ljava/lang/String;

.field private static excludeNormalAppArray:[Ljava/lang/String;

.field private static excludeWhenScsConnectionAppArray:[Ljava/lang/String;

.field private static samsungDeviceExcludeAppArray:[Ljava/lang/String;

.field private static weatherWidgetPackages:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 31
    const/16 v0, 0x36

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.samsung.android.app.watchmanager"

    aput-object v1, v0, v3

    const-string v1, "com.samsung.android.hostmanager"

    aput-object v1, v0, v4

    const-string v1, "com.samsung.android.app.watchmanager"

    aput-object v1, v0, v5

    const-string v1, "com.samsung.android.app.watchmanagerstub"

    aput-object v1, v0, v6

    const-string v1, "com.sec.keystringscreen"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.android.development"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.sec.android.quickmemo"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.sec.android.app.popupcalculator"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.sec.android.app.camera"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.android.chrome"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.android.contacts"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.samsung.android.contacts"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.sec.android.gallery3d"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.google.android.apps.books"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.google.android.play.games"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.google.android.videos"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "com.google.android.music"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "com.google.android.gms"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "com.samsung.groupcast"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "com.google.android.apps.magazines"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "com.android.vending"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "com.google.android.apps.docs"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "com.dropbox.android"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "com.sec.android.app.sbrowser"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "com.sec.kidsplat.installer"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "com.sec.android.app.kidshome"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "com.google.android.apps.maps"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "com.sec.android.app.music"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "com.sec.android.app.myfiles"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "com.sec.penup"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "com.vlingo.midas"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "com.sec.android.app.samsungapps"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "com.samsung.everglades.video"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "com.samsung.android.app.pinboard"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "com.android.settings"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "com.sec.android.app.voicenote"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "com.sec.android.app.voicerecorder"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "co.kr.pluu.appinfo"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "com.google.android.youtube"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "com.sec.android.app.dmb"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "com.diotek.diodict4.EDictionary"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "com.sds.mobiledesk"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "com.sds.mms.ui"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "com.sec.android.wallet"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "com.sec.android.widgetapp.ap.hero.accuweather"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "com.sec.android.widgetapp.ap.hero.accuweather"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "com.sec.android.GeoLookout"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "com.samsung.android.app.memo"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "jp.co.nttdocomo.carriermail"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "com.kddi.disasterapp"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "com.skt.skaf.l001f00006"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "com.kddi.market"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "com.sec.android.voltesettings"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "com.pinsightmedia.vpl.Amazon"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/hostmanager/notification/Utils;->excludeAppArray:[Ljava/lang/String;

    .line 107
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.email"

    aput-object v1, v0, v3

    const-string v1, "com.samsung.android.email.ui"

    aput-object v1, v0, v4

    const-string v1, "com.samsung.android.email.sync"

    aput-object v1, v0, v5

    const-string v1, "com.samsung.android.email.provider"

    aput-object v1, v0, v6

    const-string v1, "com.sec.android.app.clockpackage"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.sec.android.app.clockpackagechina"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.android.calendar"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.android.mms"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.samsung.android.messaging"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.samsung.android.calendar"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.android.phone"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/hostmanager/notification/Utils;->samsungDeviceExcludeAppArray:[Ljava/lang/String;

    .line 121
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.sec.android.app.clockpackage"

    aput-object v1, v0, v3

    const-string v1, "com.sec.android.app.clockpackagechina"

    aput-object v1, v0, v4

    const-string v1, "com.android.phone"

    aput-object v1, v0, v5

    const-string v1, "com.android.email"

    aput-object v1, v0, v6

    const-string v1, "com.samsung.android.email.ui"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.samsung.android.email.sync"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.samsung.android.email.provider"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.android.mms"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.samsung.android.messaging"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.samsung.android.calendar"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "sec_container_1.com.android.email"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.samsung.android.gear1plugin"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/hostmanager/notification/Utils;->excludeNormalAppArray:[Ljava/lang/String;

    .line 136
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "call"

    aput-object v1, v0, v3

    const-string v1, "alarm"

    aput-object v1, v0, v4

    const-string v1, "calendar"

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/hostmanager/notification/Utils;->excludeWhenScsConnectionAppArray:[Ljava/lang/String;

    .line 142
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.sec.android.widgetapp.at.hero.accuweather"

    aput-object v1, v0, v3

    const-string v1, "com.sec.android.widgetapp.ap.hero.accuweather"

    aput-object v1, v0, v4

    const-string v1, "com.sec.android.widgetapp.at.hero.kweather"

    aput-object v1, v0, v5

    const-string v1, "com.sec.android.widgetapp.ap.hero.kweather"

    aput-object v1, v0, v6

    const-string v1, "com.samsung.android.weather"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.sec.android.widgetapp.at.hero.cmaweather"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.sec.android.widgetapp.ap.hero.cmaweather"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.sec.android.widgetapp.ap.hero.weathernewsjp"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/hostmanager/notification/Utils;->weatherWidgetPackages:[Ljava/lang/String;

    .line 153
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ATT"

    aput-object v1, v0, v3

    const-string v1, "TMB"

    aput-object v1, v0, v4

    const-string v1, "BMC"

    aput-object v1, v0, v5

    const-string v1, "BWA"

    aput-object v1, v0, v6

    const-string v1, "ESK"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "GLW"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "KDO"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "MCT"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "MTA"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "RWC"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "SPC"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "TLS"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "VMC"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "VTR"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "XAC"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/hostmanager/notification/Utils;->VMSupportSalesCodeArray:[Ljava/lang/String;

    .line 171
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SPR"

    aput-object v1, v0, v3

    const-string v1, "VMU"

    aput-object v1, v0, v4

    const-string v1, "BST"

    aput-object v1, v0, v5

    const-string v1, "XAS"

    aput-object v1, v0, v6

    const-string v1, "VZW"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "ATT"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "TMB"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/hostmanager/notification/Utils;->DefaultOffSalesCodeArray:[Ljava/lang/String;

    .line 190
    invoke-static {}, Lcom/samsung/android/hostmanager/notification/Utils;->getClockPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hostmanager/notification/Utils;->REAL_PACKAGENAME_ALARM:Ljava/lang/String;

    .line 203
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/hostmanager/notification/Utils;->REAL_PACKAGENAME_ALARM:Ljava/lang/String;

    aput-object v1, v0, v3

    const-string v1, "com.sec.android.app.saspmodemailerprovider"

    aput-object v1, v0, v4

    const-string v1, "com.sec.android.app.saareamailprovider"

    aput-object v1, v0, v5

    const-string v1, "com.kddi.android.email"

    aput-object v1, v0, v6

    const-string v1, "com.kddi.android.cmail"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.sec.android.app.sadisasterprovider"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.sds.mobiledesk"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.sds.mms.ui"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.sec.android.app.cmas"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.verizon.messaging.vzmsgs"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.att.android.mobile.attmessages"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/hostmanager/notification/Utils;->defaultOnPackageArray:[Ljava/lang/String;

    .line 217
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "com.sec.android.app.shealth"

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/hostmanager/notification/Utils;->defaultOffPackageArray:[Ljava/lang/String;

    .line 222
    new-instance v0, Lcom/samsung/android/hostmanager/notification/Utils$1;

    invoke-direct {v0}, Lcom/samsung/android/hostmanager/notification/Utils$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hostmanager/notification/Utils;->PACKAGE_MAP:Ljava/util/Map;

    .line 234
    new-instance v0, Lcom/samsung/android/hostmanager/notification/Utils$2;

    invoke-direct {v0}, Lcom/samsung/android/hostmanager/notification/Utils$2;-><init>()V

    sput-object v0, Lcom/samsung/android/hostmanager/notification/Utils;->LABEL_MAP:Ljava/util/Map;

    .line 245
    new-instance v0, Lcom/samsung/android/hostmanager/notification/Utils$3;

    invoke-direct {v0}, Lcom/samsung/android/hostmanager/notification/Utils$3;-><init>()V

    sput-object v0, Lcom/samsung/android/hostmanager/notification/Utils;->PREDEFINED_APP_ID_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCalendarPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 307
    const/4 v4, 0x0

    if-eqz v4, :cond_1

    .line 310
    :try_start_0
    const-string v4, "Utils"

    const-string v5, "getCalendarPackageName"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const-string v1, "com.android.calendar"

    .line 312
    .local v1, "originalPackageName":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/floatingfeature/FloatingFeatureFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/floatingfeature/FloatingFeatureInterface;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_CALENDAR_CONFIG_PACKAGE_NAME"

    invoke-interface {v4, v5, v1}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/floatingfeature/FloatingFeatureInterface;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 314
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 315
    const-string v4, "Utils"

    const-string v5, "getCalendarPackageName \'M OS "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 333
    .end local v1    # "originalPackageName":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 321
    .restart local v1    # "originalPackageName":Ljava/lang/String;
    .restart local v3    # "packageName":Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string v4, "Utils"

    const-string v5, "getCalendarPackageName N OS "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 323
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_1
    move-object v1, v3

    .line 327
    goto :goto_0

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v3, v1

    goto :goto_1

    .line 329
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1    # "originalPackageName":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 330
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 333
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v1, "com.android.calendar"

    goto :goto_0
.end method

.method public static getClockPackageName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 337
    const/4 v3, 0x0

    if-eqz v3, :cond_1

    .line 339
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/floatingfeature/FloatingFeatureFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/floatingfeature/FloatingFeatureInterface;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_CLOCK_CONFIG_PACKAGE_NAME"

    const-string v5, "com.sec.android.app.clockpackage"

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/floatingfeature/FloatingFeatureInterface;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 342
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/floatingfeature/CscFeatureFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/floatingfeature/CscFeatureInterface;

    move-result-object v3

    const-string v4, "CscFeature_Clock_ConfigReplacePackage"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/floatingfeature/CscFeatureInterface;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 345
    .local v2, "packageNameCSC":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 353
    .end local v2    # "packageNameCSC":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-object v2

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "packageNameCSC":Ljava/lang/String;
    :cond_0
    move-object v2, v1

    .line 348
    goto :goto_0

    .line 349
    .end local v2    # "packageNameCSC":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 350
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 353
    :cond_1
    const-string v2, "com.sec.android.app.clockpackage"

    goto :goto_0
.end method

.method public static getListOfApplicableApps(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 517
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v0, v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 518
    .local v0, "appListIntent":Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 519
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 521
    .local v3, "totalAppInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "appListIntent":Landroid/content/Intent;
    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v0, v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 522
    .restart local v0    # "appListIntent":Landroid/content/Intent;
    const-string v4, "android.intent.category.INFO"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 523
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 524
    .local v2, "infoCategoryAppInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 525
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 528
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "appListIntent":Landroid/content/Intent;
    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v0, v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 529
    .restart local v0    # "appListIntent":Landroid/content/Intent;
    const-string v4, "android.intent.category.INFO"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 530
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0, v6}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 531
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 532
    .restart local v1    # "info":Landroid/content/pm/ResolveInfo;
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 536
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    :cond_1
    return-object v3
.end method

.method public static getListOfApplicableAppsForNormalNotifications(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 510
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 511
    .local v0, "app_list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    return-object v0
.end method

.method public static getLocaleApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "pack"    # Ljava/lang/String;

    .prologue
    .line 644
    const/4 v1, 0x0

    .line 645
    .local v1, "result":Ljava/lang/String;
    sget-object v2, Lcom/samsung/android/hostmanager/notification/Utils;->LABEL_MAP:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 646
    .local v0, "resourceId":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 647
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 649
    :cond_0
    return-object v1
.end method

.method public static getMessagePackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 277
    const/4 v4, 0x0

    if-eqz v4, :cond_1

    .line 279
    :try_start_0
    const-string v4, "Utils"

    const-string v5, "getMessagePackageName"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const-string v1, "com.android.mms"

    .line 282
    .local v1, "originalPackageName":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/floatingfeature/FloatingFeatureFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/floatingfeature/FloatingFeatureInterface;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_MESSAGE_CONFIG_PACKAGE_NAME"

    invoke-interface {v4, v5, v1}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/floatingfeature/FloatingFeatureInterface;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 284
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 285
    const-string v4, "Utils"

    const-string v5, "getMessagePackageName M OS "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 303
    .end local v1    # "originalPackageName":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 291
    .restart local v1    # "originalPackageName":Ljava/lang/String;
    .restart local v3    # "packageName":Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string v4, "Utils"

    const-string v5, "getMessagePackageName N OS "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 293
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_1
    move-object v1, v3

    .line 297
    goto :goto_0

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v3, v1

    goto :goto_1

    .line 299
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1    # "originalPackageName":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 300
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 303
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v1, "com.android.mms"

    goto :goto_0
.end method

.method public static getPredefinedAppId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "pack"    # Ljava/lang/String;

    .prologue
    .line 653
    sget-object v0, Lcom/samsung/android/hostmanager/notification/Utils;->PREDEFINED_APP_ID_MAP:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public static hasLauncherIntent(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pack"    # Ljava/lang/String;

    .prologue
    .line 540
    const/4 v2, 0x1

    .line 542
    .local v2, "res":Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 543
    .local v0, "appStartIntent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 544
    new-instance v3, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    throw v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    .end local v0    # "appStartIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 547
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    .line 549
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    return v2
.end method

.method public static hasMasterAppInManifest(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pack"    # Ljava/lang/String;

    .prologue
    .line 566
    const/4 v4, 0x0

    .line 567
    .local v4, "res":Ljava/lang/String;
    const/4 v0, 0x0

    .line 569
    .local v0, "MetadataInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 573
    :goto_0
    if-eqz v0, :cond_0

    .line 574
    const-string v2, "empty"

    .line 575
    .local v2, "masterAppPackageName":Ljava/lang/String;
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 576
    .local v3, "metaBundle":Landroid/os/Bundle;
    if-eqz v3, :cond_0

    const-string v5, "master_app_packagename"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 577
    const-string v5, "master_app_packagename"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 578
    move-object v4, v2

    .line 582
    .end local v2    # "masterAppPackageName":Ljava/lang/String;
    .end local v3    # "metaBundle":Landroid/os/Bundle;
    :cond_0
    return-object v4

    .line 570
    :catch_0
    move-exception v1

    .line 571
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static hasNotificationMaxByteInManifest(Landroid/content/Context;Ljava/lang/String;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pack"    # Ljava/lang/String;

    .prologue
    .line 589
    const/4 v3, -0x1

    .line 590
    .local v3, "res":I
    const/4 v0, 0x0

    .line 592
    .local v0, "MetadataInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 596
    :goto_0
    if-eqz v0, :cond_0

    .line 597
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 598
    .local v2, "metaBundle":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    const-string v4, "app_notification_maxbyte"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    .line 599
    const-string v4, "app_notification_maxbyte"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 602
    .end local v2    # "metaBundle":Landroid/os/Bundle;
    :cond_0
    return v3

    .line 593
    :catch_0
    move-exception v1

    .line 594
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isDefaultOff()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 500
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 501
    .local v0, "deviceSalesCode":Ljava/lang/String;
    sget-object v4, Lcom/samsung/android/hostmanager/notification/Utils;->DefaultOffSalesCodeArray:[Ljava/lang/String;

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v1, v4, v3

    .line 502
    .local v1, "salesCode":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 503
    const/4 v2, 0x1

    .line 506
    .end local v1    # "salesCode":Ljava/lang/String;
    :cond_0
    return v2

    .line 501
    .restart local v1    # "salesCode":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static isDefaultOffPackage(Ljava/lang/String;)Z
    .locals 6
    .param p0, "pack"    # Ljava/lang/String;

    .prologue
    .line 657
    const/4 v1, 0x0

    .line 659
    .local v1, "result":Z
    sget-object v3, Lcom/samsung/android/hostmanager/notification/Utils;->defaultOffPackageArray:[Ljava/lang/String;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 660
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 661
    const/4 v1, 0x1

    .line 665
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_0
    return v1

    .line 659
    .restart local v0    # "packageName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static isEligibleForNormalNotification(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pack"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 381
    const/4 v5, 0x0

    .line 382
    .local v5, "ret":Z
    invoke-static {p1}, Lcom/samsung/android/hostmanager/notification/Utils;->isPreloadNormalNotificationPackage(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 383
    const/4 v5, 0x1

    .line 405
    :cond_0
    :goto_0
    return v5

    .line 385
    :cond_1
    new-instance v3, Lcom/samsung/android/hostmanager/aidl/NotificationApp;

    const/4 v7, 0x0

    invoke-direct {v3, p1, v7, v6, v6}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 386
    .local v3, "notificationApp":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    invoke-static {v3}, Lcom/samsung/android/hostmanager/notification/Utils;->isExcludeNormalApp(Lcom/samsung/android/hostmanager/aidl/NotificationApp;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 387
    const/4 v5, 0x0

    goto :goto_0

    .line 389
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 392
    .local v2, "mManager":Landroid/content/pm/PackageManager;
    const/16 v7, 0x1000

    :try_start_0
    invoke-virtual {v2, p1, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 393
    .local v0, "app":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    iget-object v7, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v7, v7

    if-lez v7, :cond_0

    .line 394
    iget-object v7, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v8, v7

    :goto_1
    if-ge v6, v8, :cond_0

    aget-object v4, v7, v6

    .line 395
    .local v4, "reqPermission":Ljava/lang/String;
    const-string v9, "com.samsung.wmanager.ENABLE_NOTIFICATION"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-eqz v9, :cond_3

    .line 396
    const/4 v5, 0x1

    .line 394
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 399
    .end local v0    # "app":Landroid/content/pm/PackageInfo;
    .end local v4    # "reqPermission":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 400
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isExcludeApp(Lcom/samsung/android/hostmanager/aidl/NotificationApp;)Z
    .locals 7
    .param p0, "app"    # Lcom/samsung/android/hostmanager/aidl/NotificationApp;

    .prologue
    const/4 v2, 0x0

    .line 431
    const/4 v0, 0x0

    .line 432
    .local v0, "result":Z
    sget-object v4, Lcom/samsung/android/hostmanager/notification/Utils;->excludeAppArray:[Ljava/lang/String;

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v1, v4, v3

    .line 433
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 434
    const/4 v0, 0x1

    .line 439
    .end local v1    # "s":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    if-eqz v3, :cond_1

    .line 440
    sget-object v3, Lcom/samsung/android/hostmanager/notification/Utils;->samsungDeviceExcludeAppArray:[Ljava/lang/String;

    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v1, v3, v2

    .line 441
    .restart local v1    # "s":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 442
    const/4 v0, 0x1

    .line 448
    .end local v1    # "s":Ljava/lang/String;
    :cond_1
    return v0

    .line 432
    .restart local v1    # "s":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 440
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static isExcludeNormalApp(Lcom/samsung/android/hostmanager/aidl/NotificationApp;)Z
    .locals 6
    .param p0, "app"    # Lcom/samsung/android/hostmanager/aidl/NotificationApp;

    .prologue
    .line 409
    const/4 v0, 0x0

    .line 410
    .local v0, "result":Z
    sget-object v3, Lcom/samsung/android/hostmanager/notification/Utils;->excludeNormalAppArray:[Ljava/lang/String;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 411
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 412
    const/4 v0, 0x1

    .line 416
    .end local v1    # "s":Ljava/lang/String;
    :cond_0
    return v0

    .line 410
    .restart local v1    # "s":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static isExistApp(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/NotificationApp;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/hostmanager/aidl/NotificationApp;"
        }
    .end annotation

    .prologue
    .line 357
    .local p0, "listApp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/NotificationApp;>;"
    const/4 v1, 0x0

    .line 358
    .local v1, "result":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    if-eqz p1, :cond_1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 359
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/aidl/NotificationApp;

    .line 360
    .local v0, "a":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 361
    move-object v1, v0

    .line 366
    .end local v0    # "a":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    :cond_1
    return-object v1
.end method

.method public static isExistAppId(Ljava/util/ArrayList;I)Z
    .locals 3
    .param p1, "appId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/NotificationApp;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 370
    .local p0, "listApp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/NotificationApp;>;"
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 371
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/aidl/NotificationApp;

    .line 372
    .local v0, "a":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->getAppId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 373
    const/4 v1, 0x1

    .line 377
    .end local v0    # "a":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isInstalledDefaultApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "pack"    # Ljava/lang/String;

    .prologue
    .line 452
    const/4 v2, 0x1

    .line 455
    .local v2, "result":Z
    const-string v3, "email"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 456
    invoke-static {p0}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->isEmailPackageNameChanged(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 457
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_2

    const-string v1, "com.samsung.android.email.provider"

    .line 471
    .local v1, "realPackageName":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_0

    .line 473
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    const-string v3, "voicemail"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p0}, Lcom/samsung/android/hostmanager/notification/Utils;->isVMSupported(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 480
    const/4 v2, 0x0

    .line 482
    :cond_1
    return v2

    .line 457
    .end local v1    # "realPackageName":Ljava/lang/String;
    :cond_2
    const-string v1, "com.samsung.android.email.ui"

    goto :goto_0

    .line 460
    :cond_3
    const-string v1, "com.android.email"

    .restart local v1    # "realPackageName":Ljava/lang/String;
    goto :goto_0

    .line 462
    .end local v1    # "realPackageName":Ljava/lang/String;
    :cond_4
    const-string v3, "messages"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 463
    invoke-static {p0}, Lcom/samsung/android/hostmanager/notification/Utils;->getMessagePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "realPackageName":Ljava/lang/String;
    goto :goto_0

    .line 464
    .end local v1    # "realPackageName":Ljava/lang/String;
    :cond_5
    const-string v3, "calendar"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 465
    invoke-static {p0}, Lcom/samsung/android/hostmanager/notification/Utils;->getCalendarPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "realPackageName":Ljava/lang/String;
    goto :goto_0

    .line 467
    .end local v1    # "realPackageName":Ljava/lang/String;
    :cond_6
    sget-object v3, Lcom/samsung/android/hostmanager/notification/Utils;->PACKAGE_MAP:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 468
    .restart local v1    # "realPackageName":Ljava/lang/String;
    if-nez v1, :cond_7

    move-object v1, p1

    :cond_7
    goto :goto_0

    .line 474
    :catch_0
    move-exception v0

    .line 475
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 683
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 687
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 684
    :catch_0
    move-exception v0

    .line 685
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static isPreloadNormalNotificationPackage(Ljava/lang/String;)Z
    .locals 6
    .param p0, "pack"    # Ljava/lang/String;

    .prologue
    .line 553
    const/4 v0, 0x0

    .line 554
    .local v0, "result":Z
    sget-object v3, Lcom/samsung/android/hostmanager/notification/Utils;->weatherWidgetPackages:[Ljava/lang/String;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 555
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 556
    const/4 v0, 0x1

    .line 560
    .end local v1    # "s":Ljava/lang/String;
    :cond_0
    return v0

    .line 554
    .restart local v1    # "s":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static isSCSExcludeApp(Lcom/samsung/android/hostmanager/aidl/NotificationApp;)Z
    .locals 6
    .param p0, "app"    # Lcom/samsung/android/hostmanager/aidl/NotificationApp;

    .prologue
    .line 420
    const/4 v0, 0x0

    .line 421
    .local v0, "result":Z
    sget-object v3, Lcom/samsung/android/hostmanager/notification/Utils;->excludeWhenScsConnectionAppArray:[Ljava/lang/String;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 422
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 423
    const/4 v0, 0x1

    .line 427
    .end local v1    # "s":Ljava/lang/String;
    :cond_0
    return v0

    .line 421
    .restart local v1    # "s":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static isSamsungDevice()Z
    .locals 1

    .prologue
    .line 640
    const/4 v0, 0x0

    return v0
.end method

.method private static isVMSupported(Landroid/content/Context;)Z
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 486
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "GEAR_VOICEMAIL_ENABLED"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_0

    move v1, v3

    .line 487
    .local v1, "isVoiceMailEnabled":Z
    :goto_0
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 488
    .local v0, "deviceSalesCode":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 489
    sget-object v6, Lcom/samsung/android/hostmanager/notification/Utils;->VMSupportSalesCodeArray:[Ljava/lang/String;

    array-length v7, v6

    move v5, v4

    :goto_1
    if-ge v5, v7, :cond_2

    aget-object v2, v6, v5

    .line 490
    .local v2, "salesCode":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 496
    .end local v2    # "salesCode":Ljava/lang/String;
    :goto_2
    return v3

    .end local v0    # "deviceSalesCode":Ljava/lang/String;
    .end local v1    # "isVoiceMailEnabled":Z
    :cond_0
    move v1, v4

    .line 486
    goto :goto_0

    .line 489
    .restart local v0    # "deviceSalesCode":Ljava/lang/String;
    .restart local v1    # "isVoiceMailEnabled":Z
    .restart local v2    # "salesCode":Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v2    # "salesCode":Ljava/lang/String;
    :cond_2
    move v3, v4

    .line 496
    goto :goto_2
.end method

.method public static notifyAppNameUpdated(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 677
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.hostmanager.action.NOTIFICATION_APP_NAME_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 678
    return-void
.end method

.method public static notifyListUpdated(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 669
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.hostmanager.action.NOTIFICATION_LIST_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 670
    return-void
.end method

.method public static notifySettingChanged(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 673
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.hostmanager.action.NOTIFICATION_SETTTING_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 674
    return-void
.end method

.method public static parseComponents(Ljava/lang/String;)[I
    .locals 11
    .param p0, "components"    # Ljava/lang/String;

    .prologue
    .line 606
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_2

    .line 607
    :cond_0
    const/4 v7, 0x0

    .line 636
    :cond_1
    return-object v7

    .line 609
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 610
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v8, 0x2f

    .line 611
    .local v8, "separator":C
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 613
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .line 614
    .local v4, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 615
    .local v2, "componentsLength":I
    :goto_0
    if-ge v4, v2, :cond_5

    .line 616
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 617
    .local v1, "ch":C
    if-ne v1, v8, :cond_4

    .line 618
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    if-lez v9, :cond_3

    .line 619
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 620
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 625
    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 623
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 627
    .end local v1    # "ch":C
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    if-lez v9, :cond_6

    .line 628
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 631
    :cond_6
    const/4 v4, 0x0

    .line 632
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    new-array v7, v9, [I

    .line 633
    .local v7, "result":[I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 634
    .local v3, "e":Ljava/lang/Integer;
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aput v10, v7, v4

    move v4, v5

    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_2
.end method
