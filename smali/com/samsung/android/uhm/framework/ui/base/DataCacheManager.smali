.class Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;
.super Ljava/lang/Object;
.source "DataCacheManager.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mCacheAllAppData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/uhm/framework/appregistry/data/AppRegistryData;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceByDeviceId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDeviceByPackageName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;->mCacheAllAppData:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;->mDeviceByPackageName:Ljava/util/HashMap;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;->mDeviceByDeviceId:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getCachedAllAppData(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/uhm/framework/appregistry/data/AppRegistryData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;->TAG:Ljava/lang/String;

    const-string v1, "getCachedAllAppData starts"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;->mCacheAllAppData:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;

    invoke-direct {v0}, Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;-><init>()V

    .line 25
    invoke-virtual {v0, p1}, Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;->queryAllAppRegistryData(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;->mCacheAllAppData:Ljava/util/ArrayList;

    .line 27
    :cond_0
    sget-object v1, Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCachedAllAppData, size = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;->mCacheAllAppData:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    const/4 v0, -0x1

    .line 28
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;->mCacheAllAppData:Ljava/util/ArrayList;

    return-object v0

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;->mCacheAllAppData:Ljava/util/ArrayList;

    .line 28
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getCachedDeviceRegistryDataByDeviceId(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    sget-object v1, Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCachedDeviceRegistryDataByDeviceId starts, deviceId ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;->mDeviceByDeviceId:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 76
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;->mDeviceByDeviceId:Ljava/util/HashMap;

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;->mDeviceByDeviceId:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 79
    .local v0, "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 80
    :cond_1
    sget-object v1, Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;->TAG:Ljava/lang/String;

    const-string v2, "getCachedDeviceRegistryDataByDeviceId, don\'t have this deviceId in Cache, let\'s request from Provider"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v1, Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;

    invoke-direct {v1}, Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;-><init>()V

    .line 82
    invoke-virtual {v1, p2, p1}, Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;->queryDevicebyDeviceIdRegistryData(Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .end local v0    # "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 83
    .restart local v0    # "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;>;"
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 84
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;->mDeviceByDeviceId:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v1, Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;->TAG:Ljava/lang/String;

    const-string v2, "getCachedDeviceRegistryDataByDeviceId, new value was added"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_2
    sget-object v2, Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCachedDeviceRegistryDataByDeviceId, size = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_3

    const/4 v1, -0x1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-object v0

    .line 88
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0
.end method

.method public getCachedDeviceRegistryDataByPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    sget-object v1, Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCachedDeviceRegistryDataByPackageName starts, packageName ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;->mDeviceByPackageName:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;->mDeviceByPackageName:Ljava/util/HashMap;

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;->mDeviceByPackageName:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 47
    .local v0, "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 48
    :cond_1
    sget-object v1, Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;->TAG:Ljava/lang/String;

    const-string v2, "getCachedDeviceRegistryDataByPackageName, don\'t have this packageName in Cache, let\'s request from Provider"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance v1, Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;

    invoke-direct {v1}, Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;-><init>()V

    .line 50
    invoke-virtual {v1, p2, p1}, Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;->queryDevicebyPackageNameRegistryData(Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .end local v0    # "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 51
    .restart local v0    # "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;>;"
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 52
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;->mDeviceByPackageName:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v1, Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;->TAG:Ljava/lang/String;

    const-string v2, "getCachedDeviceRegistryDataByPackageName, new value was added"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_2
    sget-object v2, Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCachedDeviceRegistryDataByPackageName, size = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_3

    const/4 v1, -0x1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-object v0

    .line 56
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0
.end method

.method public resetCachedAppData()V
    .locals 2

    .prologue
    .line 33
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;->TAG:Ljava/lang/String;

    const-string v1, "resetCachedAppData starts"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;->mCacheAllAppData:Ljava/util/ArrayList;

    .line 35
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;->TAG:Ljava/lang/String;

    const-string v1, "resetCachedAppData ends"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    return-void
.end method

.method public resetCachedDeviceDataByDeviceId()V
    .locals 2

    .prologue
    .line 93
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;->TAG:Ljava/lang/String;

    const-string v1, "resetCachedDeviceDataByDeviceId starts"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;->mDeviceByDeviceId:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;->mDeviceByDeviceId:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 97
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;->mDeviceByDeviceId:Ljava/util/HashMap;

    .line 98
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;->TAG:Ljava/lang/String;

    const-string v1, "resetCachedDeviceDataByDeviceId ends"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-void
.end method

.method public resetCachedDeviceDataByPackageName()V
    .locals 2

    .prologue
    .line 61
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;->TAG:Ljava/lang/String;

    const-string v1, "resetCachedDeviceDataByPackageName starts"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;->mDeviceByPackageName:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;->mDeviceByPackageName:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 65
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;->mDeviceByPackageName:Ljava/util/HashMap;

    .line 66
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/base/DataCacheManager;->TAG:Ljava/lang/String;

    const-string v1, "resetCachedDeviceDataByPackageName ends"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void
.end method
