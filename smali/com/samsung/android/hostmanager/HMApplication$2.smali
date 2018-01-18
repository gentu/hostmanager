.class Lcom/samsung/android/hostmanager/HMApplication$2;
.super Landroid/database/ContentObserver;
.source "HMApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/HMApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/HMApplication;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/HMApplication;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/HMApplication;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/samsung/android/hostmanager/HMApplication$2;->this$0:Lcom/samsung/android/hostmanager/HMApplication;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 9
    .param p1, "selfChange"    # Z

    .prologue
    .line 146
    const-string v5, "HMApplication"

    const-string v6, "DB::printDB starts"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->access$000()Landroid/content/Context;

    move-result-object v5

    if-nez v5, :cond_1

    .line 148
    const-string v5, "HMApplication"

    const-string v6, "DB::mContext is null"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_0
    :goto_0
    const-string v5, "HMApplication"

    const-string v6, "DB::printDB ends"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 174
    return-void

    .line 150
    :cond_1
    new-instance v4, Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;

    invoke-direct {v4}, Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;-><init>()V

    .line 152
    .local v4, "provider":Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->access$000()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;->queryAllAppRegistryData(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 153
    .local v0, "allAppData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/uhm/framework/appregistry/data/AppRegistryData;>;"
    if-eqz v0, :cond_3

    .line 154
    const-string v5, "HMApplication"

    const-string v6, "DB::Print all app data:"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/uhm/framework/appregistry/data/AppRegistryData;

    .line 156
    .local v2, "app":Lcom/samsung/android/uhm/framework/appregistry/data/AppRegistryData;
    const-string v6, "HMApplication"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 158
    .end local v2    # "app":Lcom/samsung/android/uhm/framework/appregistry/data/AppRegistryData;
    :cond_2
    const-string v5, "HMApplication"

    const-string v6, "DB::Print all app data ends"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_3
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->access$000()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;->queryAllDeviceRegistryData(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 162
    .local v1, "allDeviceData":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;>;"
    if-eqz v1, :cond_0

    .line 163
    const-string v5, "HMApplication"

    const-string v6, "uhm::Print all device data:"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;

    .line 165
    .local v3, "device":Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;
    const-string v6, "HMApplication"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 167
    .end local v3    # "device":Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;
    :cond_4
    const-string v5, "HMApplication"

    const-string v6, "DB::Print all device data ends"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
