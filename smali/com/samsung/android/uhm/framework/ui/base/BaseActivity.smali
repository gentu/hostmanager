.class public abstract Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "BaseActivity.java"

# interfaces
.implements Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper$ActionBarListener;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final MenuList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/uhm/framework/ui/drawermenu/DrawerMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private final dbObserver:Landroid/database/ContentObserver;

.field protected isEnableButton:Z

.field protected isFinishedByUser:Z

.field protected isSaveInstanceState:Z

.field private isSpinnerShow:Z

.field protected mActionBarButtonSelectorId:I

.field private mActionBarHelper:Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;

.field private mDataCacheManager:Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;

.field private mDeviceId:Ljava/lang/String;

.field private volatile mIsBackPressEnabled:Z

.field private mNumOfPackage:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSpinnerItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private final mSpinnerMenuList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/uhm/framework/ui/drawermenu/SpinnerMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private provider:Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->MenuList:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mSpinnerMenuList:Ljava/util/ArrayList;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->provider:Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;

    .line 64
    new-instance v0, Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;

    invoke-direct {v0}, Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mDataCacheManager:Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mDeviceId:Ljava/lang/String;

    .line 67
    iput-boolean v1, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->isFinishedByUser:Z

    .line 68
    iput-boolean v1, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->isSaveInstanceState:Z

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mNumOfPackage:I

    .line 70
    iput-boolean v1, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->isEnableButton:Z

    .line 71
    iput v1, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mActionBarButtonSelectorId:I

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mIsBackPressEnabled:Z

    .line 76
    new-instance v0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity$1;-><init>(Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;)V

    iput-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 408
    new-instance v0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity$7;-><init>(Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;)V

    iput-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mSpinnerItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 918
    new-instance v0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity$8;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity$8;-><init>(Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->dbObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;)Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mActionBarHelper:Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->checkPlugins()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;)Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->provider:Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->registerDeviceStatusListener(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mSpinnerMenuList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->selectSpinnerItem(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->removeAllCachedData()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->updateSpinnerMenu()V

    return-void
.end method

.method private addAppRegistryData(Ljava/lang/String;)Z
    .locals 9
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 261
    sget-object v6, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addAppRegistryData starts for device ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const/4 v4, 0x0

    .line 263
    .local v4, "res":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, "packageName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 268
    .local v0, "appName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 269
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    invoke-virtual {v3, v2, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 277
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    iget-object v6, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->provider:Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;

    new-instance v7, Lcom/samsung/android/uhm/framework/appregistry/data/AppRegistryData;

    .line 278
    invoke-static {p0, v2}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->getVersionNameForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v2, v0, v8, p1}, Lcom/samsung/android/uhm/framework/appregistry/data/AppRegistryData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-virtual {v6, v7, p0}, Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;->addAppRegistryData(Lcom/samsung/android/uhm/framework/appregistry/data/AppRegistryData;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_1

    const/4 v4, 0x1

    .line 280
    .end local v0    # "appName":Ljava/lang/String;
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_0
    :goto_1
    sget-object v5, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addAppRegistryData ends, res = ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return v4

    .line 271
    .restart local v0    # "appName":Ljava/lang/String;
    .restart local v2    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 273
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v6, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    const-string v7, "Application not found!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    move v4, v5

    .line 277
    goto :goto_1
.end method

.method private addToSpinnerMenuList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "Title"    # Ljava/lang/String;
    .param p2, "pName"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 612
    invoke-virtual {p0, p3}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->getDeviceRegistryDataByDeviceId(Ljava/lang/String;)Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;

    move-result-object v0

    .line 613
    .local v0, "data":Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;
    if-nez v0, :cond_1

    .line 623
    :cond_0
    :goto_0
    return-void

    .line 616
    :cond_1
    sget-object v1, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addToSpinnerMenuList:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ::deviceName:: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;->deviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mSpinnerMenuList:Ljava/util/ArrayList;

    invoke-direct {p0, p2}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->getMenuListItemByPackageName(Ljava/lang/String;)Lcom/samsung/android/uhm/framework/ui/drawermenu/SpinnerMenuItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 620
    sget-object v1, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addToDrawerMenuList::Title::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "::pName::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "::deviceId::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "::connected::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mSpinnerMenuList:Ljava/util/ArrayList;

    new-instance v2, Lcom/samsung/android/uhm/framework/ui/drawermenu/SpinnerMenuItem;

    invoke-virtual {p0}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-direct {v2, p1, p2, p3, v3}, Lcom/samsung/android/uhm/framework/ui/drawermenu/SpinnerMenuItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private checkDeviceStatusMenuList()Z
    .locals 6

    .prologue
    .line 626
    sget-object v3, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    const-string v4, "checkDeviceStatusMenuList starts"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    const/4 v2, 0x0

    .line 628
    .local v2, "res":Z
    iget-object v3, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mSpinnerMenuList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/uhm/framework/ui/drawermenu/SpinnerMenuItem;

    .line 629
    .local v1, "menuitem":Lcom/samsung/android/uhm/framework/ui/drawermenu/SpinnerMenuItem;
    invoke-virtual {v1}, Lcom/samsung/android/uhm/framework/ui/drawermenu/SpinnerMenuItem;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 630
    invoke-virtual {p0}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->getDeviceStatus()I

    move-result v0

    .line 631
    .local v0, "deviceStatus":I
    sget-object v3, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkDeviceStatusMenuList , device has status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    invoke-virtual {v1, v0}, Lcom/samsung/android/uhm/framework/ui/drawermenu/SpinnerMenuItem;->setDeviceStatus(I)V

    .line 633
    const/4 v2, 0x1

    .line 637
    .end local v0    # "deviceStatus":I
    .end local v1    # "menuitem":Lcom/samsung/android/uhm/framework/ui/drawermenu/SpinnerMenuItem;
    :cond_1
    sget-object v3, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkDeviceStatusMenuList, res = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    return v2
.end method

.method private checkPlugins()V
    .locals 8

    .prologue
    .line 843
    sget-object v4, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    const-string v5, "checkPlugins starts"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    iget-object v4, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mDataCacheManager:Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;

    invoke-virtual {v4, p0}, Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;->getCachedAllAppData(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    .line 846
    .local v2, "plugins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/uhm/framework/appregistry/data/AppRegistryData;>;"
    if-eqz v2, :cond_0

    .line 847
    sget-object v4, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkPlugins, count of plugins "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/uhm/framework/appregistry/data/AppRegistryData;

    .line 849
    .local v0, "app":Lcom/samsung/android/uhm/framework/appregistry/data/AppRegistryData;
    sget-object v5, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkPlugins, plugin packageName["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/samsung/android/uhm/framework/appregistry/data/AppRegistryData;->packagename:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "], appName ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/samsung/android/uhm/framework/appregistry/data/AppRegistryData;->appName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "], deviceId ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/samsung/android/uhm/framework/appregistry/data/AppRegistryData;->deviceId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 853
    .end local v0    # "app":Lcom/samsung/android/uhm/framework/appregistry/data/AppRegistryData;
    :cond_0
    const/4 v3, 0x0

    .line 854
    .local v3, "res":Z
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 855
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/uhm/framework/appregistry/data/AppRegistryData;

    .line 856
    .local v1, "obj":Lcom/samsung/android/uhm/framework/appregistry/data/AppRegistryData;
    iget-object v5, v1, Lcom/samsung/android/uhm/framework/appregistry/data/AppRegistryData;->packagename:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->isExistPackage(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 857
    iget-object v5, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->provider:Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;

    iget-object v6, v1, Lcom/samsung/android/uhm/framework/appregistry/data/AppRegistryData;->packagename:Ljava/lang/String;

    invoke-virtual {v5, v6, p0}, Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;->deleteAppRegistryData(Ljava/lang/String;Landroid/content/Context;)I

    .line 858
    const/4 v3, 0x1

    goto :goto_1

    .line 862
    .end local v1    # "obj":Lcom/samsung/android/uhm/framework/appregistry/data/AppRegistryData;
    :cond_2
    sget-object v4, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkPlugins, res = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    if-eqz v3, :cond_3

    .line 864
    iget-object v4, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mDataCacheManager:Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;

    invoke-virtual {v4}, Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;->resetCachedAppData()V

    .line 866
    :cond_3
    sget-object v4, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    const-string v5, "checkPlugins ends"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    return-void
.end method

.method private doStartPlugin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 748
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x3ee

    move-object v0, p0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->handlePluginLaunch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 749
    invoke-virtual {p0}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->finish()V

    .line 750
    return-void
.end method

.method private getMenuListItemByPackageName(Ljava/lang/String;)Lcom/samsung/android/uhm/framework/ui/drawermenu/SpinnerMenuItem;
    .locals 3
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 642
    if-eqz p1, :cond_1

    .line 643
    iget-object v2, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mSpinnerMenuList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 644
    .local v1, "menuListSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 645
    iget-object v2, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mSpinnerMenuList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/uhm/framework/ui/drawermenu/SpinnerMenuItem;

    invoke-virtual {v2}, Lcom/samsung/android/uhm/framework/ui/drawermenu/SpinnerMenuItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 646
    iget-object v2, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mSpinnerMenuList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/uhm/framework/ui/drawermenu/SpinnerMenuItem;

    .line 650
    .end local v0    # "i":I
    .end local v1    # "menuListSize":I
    :goto_1
    return-object v2

    .line 644
    .restart local v0    # "i":I
    .restart local v1    # "menuListSize":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 650
    .end local v0    # "i":I
    .end local v1    # "menuListSize":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getNumOfRegisteredPackage()I
    .locals 9

    .prologue
    .line 357
    sget-object v5, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    const-string v6, "getNumOfRegisteredPackage starts"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v5, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mDataCacheManager:Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;

    invoke-virtual {v5, p0}, Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;->getCachedAllAppData(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v4

    .line 360
    .local v4, "plugin":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/uhm/framework/appregistry/data/AppRegistryData;>;"
    if-eqz v4, :cond_0

    .line 361
    sget-object v5, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getNumOfRegisteredPackage, count of plugins "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/uhm/framework/appregistry/data/AppRegistryData;

    .line 363
    .local v0, "app":Lcom/samsung/android/uhm/framework/appregistry/data/AppRegistryData;
    sget-object v6, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getNumOfRegisteredPackage, plugin packageName["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/samsung/android/uhm/framework/appregistry/data/AppRegistryData;->packagename:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], appName ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/samsung/android/uhm/framework/appregistry/data/AppRegistryData;->appName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], deviceId ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/samsung/android/uhm/framework/appregistry/data/AppRegistryData;->deviceId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 367
    .end local v0    # "app":Lcom/samsung/android/uhm/framework/appregistry/data/AppRegistryData;
    :cond_0
    const/4 v3, 0x0

    .line 368
    .local v3, "num":I
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 370
    .local v1, "bTAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v4, :cond_2

    .line 371
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/uhm/framework/appregistry/data/AppRegistryData;

    .line 372
    .local v2, "data":Lcom/samsung/android/uhm/framework/appregistry/data/AppRegistryData;
    iget-object v6, v2, Lcom/samsung/android/uhm/framework/appregistry/data/AppRegistryData;->packagename:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->isExistRegistryDevice(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v2, Lcom/samsung/android/uhm/framework/appregistry/data/AppRegistryData;->deviceId:Ljava/lang/String;

    invoke-static {v1, v6}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->isPaired(Landroid/bluetooth/BluetoothAdapter;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 373
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 377
    .end local v2    # "data":Lcom/samsung/android/uhm/framework/appregistry/data/AppRegistryData;
    :cond_2
    sget-object v5, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getNumOfPackage return "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    return v3
.end method

.method public static getSimpleBTName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "BTName"    # Ljava/lang/String;

    .prologue
    .line 450
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->getSimpleBTName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSimpleBTName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "BTName"    # Ljava/lang/String;
    .param p1, "BTAddress"    # Ljava/lang/String;

    .prologue
    .line 432
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 447
    .end local p0    # "BTName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 434
    .restart local p0    # "BTName":Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSimpleBTName BTName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    if-eqz p1, :cond_2

    .line 436
    const/4 v3, 0x1

    invoke-static {p1, v3}, Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;->getBTName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, "BTOriginalName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 440
    .end local v0    # "BTOriginalName":Ljava/lang/String;
    :cond_2
    move-object v2, p0

    .line 441
    .local v2, "simpleName":Ljava/lang/String;
    const-string v3, "("

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 443
    .local v1, "lastPosition":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    .line 444
    const/4 v3, 0x0

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 445
    sget-object v3, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSimpleBTName simpleName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object p0, v2

    .line 447
    goto :goto_0
.end method

.method private getTopProcess(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 537
    const-string v4, "activity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 538
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 540
    .local v2, "taskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v3, 0x0

    .line 541
    .local v3, "topProcess":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 542
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 543
    .local v1, "componentInfo":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 544
    sget-object v4, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CURRENT Activity ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    sget-object v4, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CURRENT Process ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    .end local v1    # "componentInfo":Landroid/content/ComponentName;
    :cond_0
    sget-object v4, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Top Process ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    return-object v3
.end method

.method private static getVersionNameForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 949
    const/4 v1, 0x0

    .line 951
    .local v1, "pInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 955
    :goto_0
    if-eqz v1, :cond_0

    .line 956
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 958
    :goto_1
    return-object v2

    .line 952
    :catch_0
    move-exception v0

    .line 953
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 958
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const-string v2, "NA"

    goto :goto_1
.end method

.method private getstartUHMIntent(Z)Landroid/content/Intent;
    .locals 3
    .param p1, "bConn"    # Z

    .prologue
    .line 185
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 186
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.app.watchmanager"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    const-string v1, "connstatus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 188
    const-string v1, "isFromPlugin"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 189
    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 192
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 193
    return-object v0
.end method

.method private initActivity()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 91
    sget-object v2, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    const-string v3, "BaseActivity actionbar init called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v2, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;

    invoke-direct {v2, p0}, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mActionBarHelper:Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;

    .line 95
    iget v2, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mActionBarButtonSelectorId:I

    if-eqz v2, :cond_0

    .line 96
    iget-object v2, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mActionBarHelper:Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;

    iget v3, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mActionBarButtonSelectorId:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->setActionBarButtonSelectorId(I)V

    .line 99
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mActionBarHelper:Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;

    invoke-virtual {v2}, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->createActionBar()V

    .line 100
    iget-object v2, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mActionBarHelper:Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3}, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->setActionBarListener(Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper$ActionBarListener;Z)V

    .line 101
    iget-object v2, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mActionBarHelper:Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;

    invoke-virtual {v2, v4}, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->setUpButtonClickable(Z)V

    .line 103
    invoke-virtual {p0}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->customizeActionBar()V

    .line 105
    iget-boolean v2, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->isSpinnerShow:Z

    if-eqz v2, :cond_2

    .line 106
    iget-object v2, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mActionBarHelper:Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->setActionBarTitleVisibility(I)V

    .line 107
    iget-object v2, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mActionBarHelper:Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;

    invoke-virtual {v2, v4}, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->setSpinnerVisibility(I)V

    .line 108
    invoke-direct {p0}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->initializeSpinnerMenuList()Z

    .line 109
    iget-object v2, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mActionBarHelper:Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;

    iget-object v3, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mSpinnerMenuList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->setSpinner(Ljava/util/ArrayList;)V

    .line 110
    iget-object v2, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mActionBarHelper:Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;

    iget-object v3, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mSpinnerItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->setSpinnerSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 118
    :cond_1
    :goto_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 119
    .local v1, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity$2;-><init>(Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 128
    return-void

    .line 112
    .end local v1    # "handler":Landroid/os/Handler;
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mDeviceId:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->getDeviceRegistryDataByDeviceId(Ljava/lang/String;)Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;

    move-result-object v0

    .line 113
    .local v0, "data":Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;
    if-eqz v0, :cond_1

    .line 114
    iget-object v2, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mActionBarHelper:Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;

    iget-object v3, v0, Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;->deviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->setActionBarTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initializeSpinnerMenuList()Z
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 454
    sget-object v5, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    const-string v6, "initializeSpinnerMenuList called"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v5, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mDataCacheManager:Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;

    invoke-virtual {v5, p0}, Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;->getCachedAllAppData(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    .line 457
    .local v2, "listOfAllInstalledPlugins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/uhm/framework/appregistry/data/AppRegistryData;>;"
    iget-object v5, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mActionBarHelper:Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;

    if-nez v5, :cond_0

    .line 458
    new-instance v5, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;

    invoke-direct {v5, p0}, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mActionBarHelper:Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;

    .line 459
    iget-object v5, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mActionBarHelper:Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;

    invoke-virtual {v5}, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->createActionBar()V

    .line 462
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mActionBarHelper:Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;

    invoke-virtual {v5}, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->hideActionBarUpButton()V

    .line 463
    iget-object v5, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mActionBarHelper:Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;

    invoke-virtual {v5, v4}, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->setUpButtonClickable(Z)V

    .line 466
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 467
    .local v0, "deviceId":Ljava/lang/String;
    sget-object v5, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initializeSpinnerMenuList deviceId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v5, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mSpinnerMenuList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 469
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 471
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/uhm/framework/appregistry/data/AppRegistryData;

    .line 472
    .local v3, "obj":Lcom/samsung/android/uhm/framework/appregistry/data/AppRegistryData;
    iget-object v6, v3, Lcom/samsung/android/uhm/framework/appregistry/data/AppRegistryData;->deviceId:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 474
    iget-object v5, v3, Lcom/samsung/android/uhm/framework/appregistry/data/AppRegistryData;->deviceId:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->getDeviceNameFromDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lcom/samsung/android/uhm/framework/appregistry/data/AppRegistryData;->deviceId:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->getSimpleBTName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lcom/samsung/android/uhm/framework/appregistry/data/AppRegistryData;->packagename:Ljava/lang/String;

    iget-object v7, v3, Lcom/samsung/android/uhm/framework/appregistry/data/AppRegistryData;->deviceId:Ljava/lang/String;

    invoke-direct {p0, v5, v6, v7}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->addToSpinnerMenuList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    .end local v3    # "obj":Lcom/samsung/android/uhm/framework/appregistry/data/AppRegistryData;
    :cond_2
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 482
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/uhm/framework/appregistry/data/AppRegistryData;

    .line 483
    .restart local v3    # "obj":Lcom/samsung/android/uhm/framework/appregistry/data/AppRegistryData;
    iget-object v6, v3, Lcom/samsung/android/uhm/framework/appregistry/data/AppRegistryData;->deviceId:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, v3, Lcom/samsung/android/uhm/framework/appregistry/data/AppRegistryData;->packagename:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->isExistRegistryDevice(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 484
    iget-object v6, v3, Lcom/samsung/android/uhm/framework/appregistry/data/AppRegistryData;->deviceId:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->getDeviceNameFromDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v3, Lcom/samsung/android/uhm/framework/appregistry/data/AppRegistryData;->deviceId:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->getSimpleBTName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v3, Lcom/samsung/android/uhm/framework/appregistry/data/AppRegistryData;->packagename:Ljava/lang/String;

    iget-object v8, v3, Lcom/samsung/android/uhm/framework/appregistry/data/AppRegistryData;->deviceId:Ljava/lang/String;

    invoke-direct {p0, v6, v7, v8}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->addToSpinnerMenuList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 505
    .end local v0    # "deviceId":Ljava/lang/String;
    .end local v3    # "obj":Lcom/samsung/android/uhm/framework/appregistry/data/AppRegistryData;
    :catch_0
    move-exception v1

    .line 506
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    sget-object v5, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    const-string v6, "IndexOutOfBoundsException in initializeDrawerMenuList"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v5, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mActionBarHelper:Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;

    invoke-virtual {v5}, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->hideActionBarUpButton()V

    .line 508
    iget-object v5, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mActionBarHelper:Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;

    invoke-virtual {v5, v4}, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->setUpButtonClickable(Z)V

    .line 512
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_1
    return v4

    .restart local v0    # "deviceId":Ljava/lang/String;
    :cond_4
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private isExistPackage(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 834
    invoke-virtual {p0}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 836
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-nez v1, :cond_1

    .line 838
    :cond_0
    :goto_0
    return v2

    .line 836
    :cond_1
    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 837
    :catch_0
    move-exception v0

    .line 838
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private isExistRegistryDevice(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 812
    sget-object v1, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isExistRegistryDevice:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mDataCacheManager:Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;

    invoke-virtual {v1, p0, p1}, Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;->getCachedDeviceRegistryDataByPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 815
    .local v0, "device":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 816
    sget-object v1, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    const-string v2, "isExistRegistryDevice return true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    const/4 v1, 0x1

    .line 820
    :goto_0
    return v1

    .line 819
    :cond_0
    sget-object v1, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    const-string v2, "isExistRegistryDevice return false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isPaired(Landroid/bluetooth/BluetoothAdapter;Ljava/lang/String;)Z
    .locals 7
    .param p0, "bTAdapter"    # Landroid/bluetooth/BluetoothAdapter;
    .param p1, "deviceID"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 382
    sget-object v3, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isPairder(), bTAdapter = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    if-nez p0, :cond_0

    .line 384
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    .line 386
    :cond_0
    sget-object v3, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isPairder(), deviceID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 389
    sget-object v3, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    const-string v4, "btAdapter is turned off..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :goto_0
    return v2

    .line 393
    :cond_1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    .line 395
    .local v1, "pairedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 396
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 398
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    sget-object v4, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isPairder(), founded deviceID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 405
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isShowDrawer()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 251
    iget v1, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mNumOfPackage:I

    if-gez v1, :cond_0

    .line 252
    invoke-direct {p0}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->getNumOfRegisteredPackage()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mNumOfPackage:I

    .line 254
    :cond_0
    iget v1, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mNumOfPackage:I

    if-le v1, v0, :cond_1

    .line 257
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerDeviceStatusListener(Z)V
    .locals 4
    .param p1, "register"    # Z

    .prologue
    .line 908
    if-eqz p1, :cond_0

    .line 909
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    const-string v1, "registerContentObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    invoke-virtual {p0}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/uhm/framework/appregistry/BaseContentProvider;->DEVICE_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->dbObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 916
    :goto_0
    return-void

    .line 913
    :cond_0
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    const-string v1, "unregisterContentObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    invoke-virtual {p0}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->dbObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method private removeAllCachedData()V
    .locals 2

    .prologue
    .line 552
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    const-string v1, "removeAllCachedData starts"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mDataCacheManager:Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;

    invoke-virtual {v0}, Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;->resetCachedAppData()V

    .line 554
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mDataCacheManager:Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;

    invoke-virtual {v0}, Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;->resetCachedDeviceDataByPackageName()V

    .line 555
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mDataCacheManager:Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;

    invoke-virtual {v0}, Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;->resetCachedDeviceDataByDeviceId()V

    .line 556
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    const-string v1, "removeAllCachedData ends"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    return-void
.end method

.method private selectSpinnerItem(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 739
    iget-object v2, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mSpinnerMenuList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/uhm/framework/ui/drawermenu/SpinnerMenuItem;

    invoke-virtual {v2}, Lcom/samsung/android/uhm/framework/ui/drawermenu/SpinnerMenuItem;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 740
    .local v0, "deviceId":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mSpinnerMenuList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/uhm/framework/ui/drawermenu/SpinnerMenuItem;

    invoke-virtual {v2}, Lcom/samsung/android/uhm/framework/ui/drawermenu/SpinnerMenuItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 742
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 743
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->doStartPlugin(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    :cond_0
    return-void
.end method

.method public static startPluginActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;
    .param p3, "bSwitching"    # Z
    .param p4, "targetPage"    # Ljava/lang/String;
    .param p5, "launchMode"    # I

    .prologue
    .line 690
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPluginActivity()::packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", deviceId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bSwitching  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", targetPage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", launchMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    new-instance v9, Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;

    invoke-direct {v9}, Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;-><init>()V

    .line 694
    .local v9, "provider":Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;
    invoke-virtual {v9, p2, p0}, Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;->queryDevicebyDeviceIdRegistryData(Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    .line 695
    .local v6, "devices":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;>;"
    if-eqz p2, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 696
    :cond_0
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "device ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] does not exist in DB, lets add"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    new-instance v0, Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;

    invoke-static {p2}, Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;->getBTName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v9, v0, p0}, Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;->addDeviceRegistryData(Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;Landroid/content/Context;)Landroid/net/Uri;

    .line 704
    :goto_0
    const-string v0, "SimpleFragmentActivity"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 705
    new-instance v8, Landroid/content/Intent;

    const-string v0, "com.samsung.uhm.action.SIMPLE_FRAGMENT"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 706
    .local v8, "launcherintent":Landroid/content/Intent;
    const/high16 v0, 0x10000

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 707
    const v0, 0x10008000

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 708
    const-string v0, "targetActivity"

    invoke-virtual {v8, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 717
    :cond_1
    :goto_1
    invoke-virtual {v8, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 719
    const/16 v0, 0x3e9

    if-eq p5, v0, :cond_2

    const/16 v0, 0x3ec

    if-eq p5, v0, :cond_2

    .line 720
    const v0, 0x10008000

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 723
    :cond_2
    const-string v0, "deviceid"

    invoke-virtual {v8, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 724
    const-string v0, "bt_addr"

    invoke-virtual {v8, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 725
    const-string v0, "switching"

    invoke-virtual {v8, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 726
    const-string v0, "launch_mode"

    invoke-virtual {v8, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 729
    :try_start_0
    invoke-virtual {p0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 735
    const/4 v0, 0x1

    :goto_2
    return v0

    .line 700
    .end local v8    # "launcherintent":Landroid/content/Intent;
    :cond_3
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "device ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] already in DB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 710
    :cond_4
    new-instance v8, Landroid/content/Intent;

    const-string v0, "com.samsung.uhm.action.STEALTH_MODE"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 711
    .restart local v8    # "launcherintent":Landroid/content/Intent;
    const/high16 v0, 0x10000

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 712
    if-eqz p4, :cond_1

    .line 713
    const v0, 0x10008000

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 714
    const-string v0, "targetPage"

    invoke-virtual {v8, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 730
    :catch_0
    move-exception v7

    .line 731
    .local v7, "e":Ljava/lang/RuntimeException;
    const-string v0, "No plug-in"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 732
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private updateSpinnerMenu()V
    .locals 2

    .prologue
    .line 930
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    const-string v1, "updateSpinnerMenu starts"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    iget-boolean v0, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->isSpinnerShow:Z

    if-eqz v0, :cond_0

    .line 932
    invoke-direct {p0}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->initializeSpinnerMenuList()Z

    .line 933
    invoke-direct {p0}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->checkDeviceStatusMenuList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 934
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mActionBarHelper:Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;

    iget-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mSpinnerMenuList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->setSpinner(Ljava/util/ArrayList;)V

    .line 935
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mActionBarHelper:Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;

    iget-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mSpinnerItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->setSpinnerSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 938
    :cond_0
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    const-string v1, "updateSpinnerMenu ends"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    return-void
.end method


# virtual methods
.method public addDefaultActionbarButton()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 131
    new-instance v1, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity$3;-><init>(Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;)V

    .line 147
    .local v1, "buttonListener":Landroid/view/View$OnClickListener;
    new-instance v0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButton;

    sget v2, Lcom/samsung/android/uhm/framework/ui/R$drawable;->manager_action_bar_mh_icon_plus:I

    invoke-direct {v0, v2, v4, v4, v1}, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButton;-><init>(IIILandroid/view/View$OnClickListener;)V

    .line 148
    .local v0, "actionButton":Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButton;
    iget-object v2, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mActionBarHelper:Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButton;

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->addActionButton([Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButton;)V

    .line 149
    iget-boolean v2, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->isEnableButton:Z

    if-nez v2, :cond_0

    .line 150
    iget-object v2, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mActionBarHelper:Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;

    invoke-virtual {v2, v4}, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->disableActionBarButton(I)V

    .line 152
    :cond_0
    return-void
.end method

.method brandGlowEffect()V
    .locals 9

    .prologue
    .line 891
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-gt v5, v6, :cond_0

    .line 894
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "overscroll_glow"

    const-string v7, "drawable"

    const-string v8, "android"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 895
    .local v4, "glowDrawableId":I
    invoke-virtual {p0}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 896
    .local v1, "androidGlow":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/samsung/android/uhm/framework/ui/R$color;->boundry_effect_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 898
    invoke-virtual {p0}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "overscroll_edge"

    const-string v7, "drawable"

    const-string v8, "android"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 899
    .local v3, "edgeDrawableId":I
    invoke-virtual {p0}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 900
    .local v0, "androidEdge":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/samsung/android/uhm/framework/ui/R$color;->boundry_effect_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 905
    .end local v0    # "androidEdge":Landroid/graphics/drawable/Drawable;
    .end local v1    # "androidGlow":Landroid/graphics/drawable/Drawable;
    .end local v3    # "edgeDrawableId":I
    .end local v4    # "glowDrawableId":I
    :cond_0
    :goto_0
    return-void

    .line 901
    :catch_0
    move-exception v2

    .line 902
    .local v2, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method public closeScreen()V
    .locals 0

    .prologue
    .line 338
    return-void
.end method

.method protected customizeActionBar()V
    .locals 0

    .prologue
    .line 309
    return-void
.end method

.method protected abstract disconnect(Landroid/os/Handler;)V
.end method

.method public getActionBarHelper()Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mActionBarHelper:Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 772
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceNameByDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 792
    invoke-virtual {p0, p1}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->getDeviceRegistryDataByDeviceId(Ljava/lang/String;)Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;

    move-result-object v0

    .line 793
    .local v0, "device":Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;
    if-eqz v0, :cond_0

    .line 794
    sget-object v1, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceNameByDeviceId("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;->deviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    iget-object v1, v0, Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;->deviceName:Ljava/lang/String;

    .line 797
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDeviceNameFromDB(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 776
    sget-object v2, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDeviceNameFromDB deviceId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    invoke-virtual {p0, p1}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 778
    .local v0, "deviceName":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->getDeviceNameByDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 779
    .local v1, "deviceNameDB":Ljava/lang/String;
    sget-object v2, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDeviceNameFromDB, deviceName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", deviceNameDB = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "No Name"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v1, :cond_0

    .line 782
    sget-object v2, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    const-string v3, "getDeviceNameFromDB updateDeviceName initialization"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->updateDeviceName(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    invoke-virtual {p0, p1}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->getDeviceNameByDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 785
    sget-object v2, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDeviceNameFromDB, deviceNameDB 2 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    :cond_0
    move-object v0, v1

    .line 788
    if-nez v0, :cond_1

    const-string v0, "No Name"

    .end local v0    # "deviceName":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public getDeviceRegistryDataByDeviceId(Ljava/lang/String;)Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;
    .locals 4
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 824
    sget-object v1, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceRegistryDataByDeviceId Id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mDataCacheManager:Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;

    invoke-virtual {v1, p0, p1}, Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;->getCachedDeviceRegistryDataByDeviceId(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 826
    .local v0, "device":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 827
    sget-object v1, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    const-string v2, "getDeviceRegistryDataByDeviceId has 0 value"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    const/4 v1, 0x0

    .line 830
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;

    goto :goto_0
.end method

.method public abstract getDeviceStatus()I
.end method

.method protected abstract getNormalAppIcon()Landroid/graphics/drawable/Drawable;
.end method

.method public getPackagenameByDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 801
    sget-object v1, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPackagenameByDeviceId("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    invoke-virtual {p0, p1}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->getDeviceRegistryDataByDeviceId(Ljava/lang/String;)Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;

    move-result-object v0

    .line 803
    .local v0, "device":Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;
    if-eqz v0, :cond_0

    .line 804
    sget-object v1, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPackagenameByDeviceId("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;->packagename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    iget-object v1, v0, Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;->packagename:Ljava/lang/String;

    .line 808
    :goto_0
    return-object v1

    .line 807
    :cond_0
    sget-object v1, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPackagenameByDeviceId("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") return NULL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected abstract getSelectedAppIcon()Landroid/graphics/drawable/Drawable;
.end method

.method public handlePluginLaunch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "bSwitching"    # Z
    .param p5, "targetPage"    # Ljava/lang/String;
    .param p6, "launchMode"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 666
    sget-object v3, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handlePluginLaunch() deviceId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 668
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.samsung.android.app.watchmanager"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 669
    const-string v3, "isFromPlugin"

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 670
    const-string v3, "deviceid"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 671
    const-string v3, "bt_addr"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 672
    const-string v3, "prev_deviceid"

    invoke-virtual {p0}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 673
    const-string v3, "switching"

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 674
    new-instance v2, Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;

    invoke-direct {v2}, Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;-><init>()V

    .line 675
    .local v2, "provider":Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;
    invoke-virtual {v2, p3, p1}, Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;->queryDevicebyDeviceIdRegistryData(Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 677
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 678
    sget-object v4, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handlePluginLaunch() deviceName:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;

    iget-object v3, v3, Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;->deviceName:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const-string v4, "DEVICE_MODEL"

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;

    iget-object v3, v3, Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 682
    :cond_0
    const-string v3, "launch_mode"

    invoke-virtual {v1, v3, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 683
    const/high16 v3, 0x10000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 684
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 685
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 686
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 237
    sget-object v1, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    const-string v2, "onBackPressed()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-boolean v1, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mIsBackPressEnabled:Z

    if-eqz v1, :cond_0

    .line 241
    :try_start_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_0
    return-void

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 246
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    sget-object v1, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    const-string v2, "mIsBackPressEnabled :: false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 210
    invoke-super {p0, v4}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 211
    invoke-virtual {p0}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->brandGlowEffect()V

    .line 212
    iget-object v2, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->provider:Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;

    if-nez v2, :cond_0

    .line 213
    new-instance v2, Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;

    invoke-direct {v2}, Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->provider:Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;

    .line 215
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->isShowDrawer()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->isSpinnerShow:Z

    .line 216
    sget v2, Lcom/samsung/android/uhm/framework/ui/R$layout;->blank_screen:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->setContentView(I)V

    .line 217
    sget v2, Lcom/samsung/android/uhm/framework/ui/R$id;->root_view:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 218
    .local v1, "rootView":Landroid/widget/RelativeLayout;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/samsung/android/uhm/framework/ui/R$layout;->content_wo_drawer:I

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 220
    invoke-direct {p0}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->initActivity()V

    .line 222
    new-instance v2, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity$5;-><init>(Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;)V

    .line 227
    invoke-virtual {v2}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity$5;->start()V

    .line 229
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 230
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.samsung.uhm.action.STEALTH_FINISH"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    iget-object v2, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.samsung.android.hostmanager.permission.ACCESS_UNIFIED_HOST_MANAGER"

    invoke-virtual {p0, v2, v0, v3, v4}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 233
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 517
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy starts"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 520
    iget-boolean v0, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->isSpinnerShow:Z

    if-eqz v0, :cond_0

    .line 521
    invoke-direct {p0, v2}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->registerDeviceStatusListener(Z)V

    .line 524
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mActionBarHelper:Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;

    .line 525
    invoke-direct {p0}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->removeAllCachedData()V

    .line 526
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 527
    iget-boolean v0, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->isFinishedByUser:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p0}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->getTopProcess(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 528
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    const-string v1, "BaseActivity fully destroy!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 530
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 531
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 533
    :cond_1
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy ends"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 656
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 658
    const/4 v0, 0x1

    .line 661
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 885
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 887
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->isSaveInstanceState:Z

    .line 888
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 878
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    const-string v1, "onRestoreInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 880
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->isSaveInstanceState:Z

    .line 881
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 766
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 767
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mActionBarHelper:Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;

    invoke-virtual {v0}, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->setFocusOntheRootView()V

    .line 768
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mIsBackPressEnabled:Z

    .line 769
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 871
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 873
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->isSaveInstanceState:Z

    .line 874
    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 4
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 285
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDeviceId ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iput-object p1, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mDeviceId:Ljava/lang/String;

    .line 287
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->provider:Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;

    if-nez v0, :cond_0

    .line 288
    new-instance v0, Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;

    invoke-direct {v0}, Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->provider:Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;

    .line 291
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->addAppRegistryData(Ljava/lang/String;)Z

    .line 293
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity$6;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity$6;-><init>(Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;Ljava/lang/String;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 301
    return-void
.end method

.method protected setSpinnerListener(Lcom/samsung/android/uhm/framework/ui/base/CustomSpinner$OnSpinnerEventsListener;)V
    .locals 1
    .param p1, "l"    # Lcom/samsung/android/uhm/framework/ui/base/CustomSpinner$OnSpinnerEventsListener;

    .prologue
    .line 961
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->mActionBarHelper:Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->setSpinnerListener(Lcom/samsung/android/uhm/framework/ui/base/CustomSpinner$OnSpinnerEventsListener;)V

    .line 962
    return-void
.end method

.method protected showFragment(Lcom/samsung/android/uhm/framework/ui/base/BaseFragment;)V
    .locals 6
    .param p1, "fragmentClass"    # Lcom/samsung/android/uhm/framework/ui/base/BaseFragment;

    .prologue
    .line 564
    sget-object v3, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showFragment:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    invoke-virtual {p0}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 566
    .local v2, "ft":Landroid/support/v4/app/FragmentTransaction;
    sget v3, Lcom/samsung/android/uhm/framework/ui/R$id;->content_frame:I

    invoke-virtual {v2, v3, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 567
    iget-boolean v3, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->isSaveInstanceState:Z

    if-eqz v3, :cond_0

    .line 568
    sget-object v3, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    const-string v4, "isSaveInstanceState:true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 584
    :goto_0
    invoke-virtual {v2, p1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 585
    return-void

    .line 572
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 573
    :catch_0
    move-exception v0

    .line 574
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 576
    :try_start_1
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 577
    :catch_1
    move-exception v1

    .line 578
    .local v1, "e1":Ljava/lang/IllegalStateException;
    sget-object v3, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fragment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " already added to back stack"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method protected showFragment1(Lcom/samsung/android/uhm/framework/ui/base/BaseFragment;)V
    .locals 6
    .param p1, "fragmentClass"    # Lcom/samsung/android/uhm/framework/ui/base/BaseFragment;

    .prologue
    .line 588
    sget-object v3, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showFragment1:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    invoke-virtual {p0}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 590
    .local v2, "ft":Landroid/support/v4/app/FragmentTransaction;
    sget v3, Lcom/samsung/android/uhm/framework/ui/R$id;->content_frame1:I

    invoke-virtual {v2, v3, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 591
    iget-boolean v3, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->isSaveInstanceState:Z

    if-eqz v3, :cond_0

    .line 592
    sget-object v3, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    const-string v4, "isSaveInstanceState:true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 608
    :goto_0
    invoke-virtual {v2, p1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 609
    return-void

    .line 596
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 597
    :catch_0
    move-exception v0

    .line 598
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 600
    :try_start_1
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 601
    :catch_1
    move-exception v1

    .line 602
    .local v1, "e1":Ljava/lang/IllegalStateException;
    sget-object v3, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fragment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " already added to back stack"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public startNewDeviceActivity(Z)V
    .locals 5
    .param p1, "bConn"    # Z

    .prologue
    .line 155
    sget-object v2, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startNewDeviceActivity("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-direct {p0, p1}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->getstartUHMIntent(Z)Landroid/content/Intent;

    move-result-object v1

    .line 159
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->finish()V

    .line 164
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    sget-object v2, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can not find activity, intent["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startNewWelcomeActivity()V
    .locals 3

    .prologue
    .line 197
    sget-object v1, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    const-string v2, "startNewWelcomeActivity()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 200
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "isFromPlugin"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 201
    const-string v1, "classname"

    const-string v2, "com.samsung.android.app.watchmanager.setupwizard.SetupWizardWelcomeActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    const-string v1, "com.samsung.android.app.watchmanager"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 204
    invoke-virtual {p0, v0}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 205
    invoke-virtual {p0}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->finish()V

    .line 206
    return-void
.end method

.method public startUpdateModuleActivity(Z)V
    .locals 6
    .param p1, "bConn"    # Z

    .prologue
    .line 167
    sget-object v2, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startUpdateModuleActivity("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-direct {p0, p1}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->getstartUHMIntent(Z)Landroid/content/Intent;

    move-result-object v1

    .line 170
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "isFromUpdateNotification"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 172
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_0
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity$4;

    invoke-direct {v3, p0}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity$4;-><init>(Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 182
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    sget-object v2, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can not find activity, intent["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateDeviceName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 341
    invoke-virtual {p0, p1}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->getDeviceRegistryDataByDeviceId(Ljava/lang/String;)Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;

    move-result-object v1

    .line 342
    .local v1, "device":Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;
    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    iget-object v2, v1, Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;->deviceName:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 343
    sget-object v2, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rename DeviceName from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;->deviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iput-object p2, v1, Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;->deviceName:Ljava/lang/String;

    .line 345
    iget-object v2, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->provider:Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;

    invoke-virtual {v2, v1, p0}, Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;->updateDeviceNameRegistryData(Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;Landroid/content/Context;)I

    move-result v0

    .line 347
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 348
    sget-object v2, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->TAG:Ljava/lang/String;

    const-string v3, "Device was renamed, let\'s reset Cached data..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-direct {p0}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->removeAllCachedData()V

    .line 352
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->updateSpinnerMenu()V

    .line 354
    .end local v0    # "count":I
    :cond_1
    return-void
.end method
