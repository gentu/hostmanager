.class public Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;
.super Ljava/lang/Object;
.source "SetupManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/setup/SetupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeviceSetup"
.end annotation


# instance fields
.field private mAppsOrderSetupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/AppsOrderSetup;",
            ">;"
        }
    .end annotation
.end field

.field private mCallForwardSetup:Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;

.field private final mCallForwardSetupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;",
            ">;"
        }
    .end annotation
.end field

.field private mClocksSetupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/ClocksSetup;",
            ">;"
        }
    .end annotation
.end field

.field private mFavoriteReorderSetupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;",
            ">;"
        }
    .end annotation
.end field

.field private mFontsSetupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/FontsSetup;",
            ">;"
        }
    .end annotation
.end field

.field private mIMESetupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/IMESetup;",
            ">;"
        }
    .end annotation
.end field

.field private mMyAppsSetupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsSetup:Lcom/samsung/android/hostmanager/aidl/SettingsSetup;

.field private mTTSSetupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/TTSSetup;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/android/hostmanager/setup/SetupManager;


# direct methods
.method protected constructor <init>(Lcom/samsung/android/hostmanager/setup/SetupManager;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/setup/SetupManager;

    .prologue
    .line 3158
    iput-object p1, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->this$0:Lcom/samsung/android/hostmanager/setup/SetupManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->mClocksSetupList:Ljava/util/ArrayList;

    .line 3160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->mMyAppsSetupList:Ljava/util/ArrayList;

    .line 3161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->mFontsSetupList:Ljava/util/ArrayList;

    .line 3162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->mTTSSetupList:Ljava/util/ArrayList;

    .line 3163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->mIMESetupList:Ljava/util/ArrayList;

    .line 3164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->mFavoriteReorderSetupList:Ljava/util/ArrayList;

    .line 3165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->mAppsOrderSetupList:Ljava/util/ArrayList;

    .line 3166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->mCallForwardSetupList:Ljava/util/ArrayList;

    .line 3168
    return-void
.end method


# virtual methods
.method protected changeAppsOrderList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/AppsOrderSetup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3370
    .local p1, "changeAppsOrderList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/AppsOrderSetup;>;"
    iput-object p1, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->mAppsOrderSetupList:Ljava/util/ArrayList;

    .line 3371
    return-void
.end method

.method protected changeClockList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/ClocksSetup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3346
    .local p1, "changedClockList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/ClocksSetup;>;"
    iput-object p1, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->mClocksSetupList:Ljava/util/ArrayList;

    .line 3347
    return-void
.end method

.method protected changeFavoriteReorderList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3366
    .local p1, "changeFavoriteReorderList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;>;"
    iput-object p1, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->mFavoriteReorderSetupList:Ljava/util/ArrayList;

    .line 3367
    return-void
.end method

.method protected changeFontsList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/FontsSetup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3354
    .local p1, "changedFontList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/FontsSetup;>;"
    iput-object p1, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->mFontsSetupList:Ljava/util/ArrayList;

    .line 3355
    return-void
.end method

.method protected changeIMEList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/IMESetup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3362
    .local p1, "changedIMEList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/IMESetup;>;"
    iput-object p1, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->mIMESetupList:Ljava/util/ArrayList;

    .line 3363
    return-void
.end method

.method protected changeMyAppList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3350
    .local p1, "changedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;>;"
    iput-object p1, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->mMyAppsSetupList:Ljava/util/ArrayList;

    .line 3351
    return-void
.end method

.method protected changeTTSList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/TTSSetup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3358
    .local p1, "changedTTSList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/TTSSetup;>;"
    iput-object p1, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->mTTSSetupList:Ljava/util/ArrayList;

    .line 3359
    return-void
.end method

.method protected getAppsOrderList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/AppsOrderSetup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3398
    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->mAppsOrderSetupList:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getCallForwardSetup()Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;
    .locals 1

    .prologue
    .line 3410
    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->mCallForwardSetup:Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;

    return-object v0
.end method

.method protected getClockList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/ClocksSetup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3374
    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->mClocksSetupList:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getFavoriteReorderList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3394
    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->mFavoriteReorderSetupList:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getFontsList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/FontsSetup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3382
    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->mFontsSetupList:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getIMEList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/IMESetup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3390
    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->mIMESetupList:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getMyAppsList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3378
    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->mMyAppsSetupList:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getSettings()Lcom/samsung/android/hostmanager/aidl/SettingsSetup;
    .locals 1

    .prologue
    .line 3402
    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->mSettingsSetup:Lcom/samsung/android/hostmanager/aidl/SettingsSetup;

    return-object v0
.end method

.method protected getTTSList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/TTSSetup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3386
    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->mTTSSetupList:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected removeAppsOrderList()V
    .locals 3

    .prologue
    .line 3449
    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->mAppsOrderSetupList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3450
    const-string v0, "SetupManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeAppsOrderList() mDeviceID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->this$0:Lcom/samsung/android/hostmanager/setup/SetupManager;

    iget-object v2, v2, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,mAppsOrderSetupList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->mAppsOrderSetupList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3452
    return-void
.end method

.method protected removeCallForwardSetup()V
    .locals 3

    .prologue
    .line 3460
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->mCallForwardSetup:Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;

    .line 3461
    const-string v0, "SetupManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeCallForwardSetup() mDeviceID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->this$0:Lcom/samsung/android/hostmanager/setup/SetupManager;

    iget-object v2, v2, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,mCallForwardSetup = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->mCallForwardSetup:Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3463
    return-void
.end method

.method protected removeClockList()V
    .locals 3

    .prologue
    .line 3418
    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->mClocksSetupList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3419
    const-string v0, "SetupManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeClockList() mDeviceID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->this$0:Lcom/samsung/android/hostmanager/setup/SetupManager;

    iget-object v2, v2, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,mClocksSetupList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->mClocksSetupList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3420
    return-void
.end method

.method protected removeFavoriteReorderList()V
    .locals 3

    .prologue
    .line 3443
    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->mFavoriteReorderSetupList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3444
    const-string v0, "SetupManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeFavoriteReorderList() mDeviceID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->this$0:Lcom/samsung/android/hostmanager/setup/SetupManager;

    iget-object v2, v2, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,mFavoriteReorderSetupList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->mFavoriteReorderSetupList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3446
    return-void
.end method

.method protected removeFontsList()V
    .locals 3

    .prologue
    .line 3428
    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->mFontsSetupList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3429
    const-string v0, "SetupManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeFontsList() mDeviceID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->this$0:Lcom/samsung/android/hostmanager/setup/SetupManager;

    iget-object v2, v2, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,mFontsSetupList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->mFontsSetupList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3430
    return-void
.end method

.method protected removeIMEList()V
    .locals 3

    .prologue
    .line 3438
    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->mIMESetupList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3439
    const-string v0, "SetupManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeIMEList() mDeviceID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->this$0:Lcom/samsung/android/hostmanager/setup/SetupManager;

    iget-object v2, v2, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,mIMESetupList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->mIMESetupList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3440
    return-void
.end method

.method protected removeMyAppsList()V
    .locals 3

    .prologue
    .line 3423
    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->mMyAppsSetupList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3424
    const-string v0, "SetupManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeMyAppsList() mDeviceID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->this$0:Lcom/samsung/android/hostmanager/setup/SetupManager;

    iget-object v2, v2, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,mMyAppsSetupList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->mMyAppsSetupList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3425
    return-void
.end method

.method protected removeSettings()V
    .locals 3

    .prologue
    .line 3455
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->mSettingsSetup:Lcom/samsung/android/hostmanager/aidl/SettingsSetup;

    .line 3456
    const-string v0, "SetupManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeSettings() mDeviceID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->this$0:Lcom/samsung/android/hostmanager/setup/SetupManager;

    iget-object v2, v2, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,mSettingsSetup = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->mSettingsSetup:Lcom/samsung/android/hostmanager/aidl/SettingsSetup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3457
    return-void
.end method

.method protected removeTTSList()V
    .locals 3

    .prologue
    .line 3433
    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->mTTSSetupList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3434
    const-string v0, "SetupManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeTTSList() mDeviceID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->this$0:Lcom/samsung/android/hostmanager/setup/SetupManager;

    iget-object v2, v2, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,mTTSSetupList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->mTTSSetupList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3435
    return-void
.end method

.method protected setCallForwardSetup(Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;)V
    .locals 0
    .param p1, "callForwardSetup"    # Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;

    .prologue
    .line 3414
    iput-object p1, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->mCallForwardSetup:Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;

    .line 3415
    return-void
.end method

.method protected setSettings(Lcom/samsung/android/hostmanager/aidl/SettingsSetup;)V
    .locals 0
    .param p1, "settingsSetup"    # Lcom/samsung/android/hostmanager/aidl/SettingsSetup;

    .prologue
    .line 3406
    iput-object p1, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->mSettingsSetup:Lcom/samsung/android/hostmanager/aidl/SettingsSetup;

    .line 3407
    return-void
.end method

.method protected setSetupDataFromFile(Ljava/lang/String;)V
    .locals 10
    .param p1, "fn"    # Ljava/lang/String;

    .prologue
    .line 3171
    if-eqz p1, :cond_0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ge v6, v7, :cond_2

    .line 3172
    :cond_0
    const-string v6, "SetupManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSetupDataFromFile() fn is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "... wrong function call!!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3343
    :cond_1
    :goto_0
    return-void

    .line 3175
    :cond_2
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->this$0:Lcom/samsung/android/hostmanager/setup/SetupManager;

    invoke-static {v7}, Lcom/samsung/android/hostmanager/setup/SetupManager;->access$000(Lcom/samsung/android/hostmanager/setup/SetupManager;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3176
    .local v1, "file":Ljava/io/File;
    const-string v6, "SetupManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSetupDataFromFile() fn = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3178
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3179
    const-string v6, "clocklist.xml"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 3180
    const/4 v4, 0x0

    .line 3181
    .local v4, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 3183
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3184
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_34
    .catchall {:try_start_1 .. :try_end_1} :catchall_10

    .line 3185
    .end local v4    # "is":Ljava/io/InputStream;
    .local v5, "is":Ljava/io/InputStream;
    :try_start_2
    iget-object v6, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->this$0:Lcom/samsung/android/hostmanager/setup/SetupManager;

    iget-object v7, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->mClocksSetupList:Ljava/util/ArrayList;

    invoke-static {v6, v7, v5}, Lcom/samsung/android/hostmanager/setup/SetupManager;->access$100(Lcom/samsung/android/hostmanager/setup/SetupManager;Ljava/util/ArrayList;Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_35
    .catchall {:try_start_2 .. :try_end_2} :catchall_11

    .line 3189
    if-eqz v3, :cond_3

    .line 3191
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 3192
    const/4 v2, 0x0

    .line 3197
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :goto_1
    if-eqz v5, :cond_20

    .line 3199
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 3200
    const/4 v4, 0x0

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    goto :goto_0

    .line 3193
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 3194
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "SetupManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSetupDataFromFile() IOException in closing inputStream - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .line 3201
    :catch_1
    move-exception v0

    .line 3202
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "SetupManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSetupDataFromFile() IOException in closing inputStream - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    .line 3203
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    goto/16 :goto_0

    .line 3186
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 3187
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_5
    const-string v6, "SetupManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSetupDataFromFile() FileNotFoundException - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not exists yet"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3189
    if-eqz v2, :cond_4

    .line 3191
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 3192
    const/4 v2, 0x0

    .line 3197
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_4
    :goto_3
    if-eqz v4, :cond_1

    .line 3199
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 3200
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 3193
    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v0

    .line 3194
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "SetupManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSetupDataFromFile() IOException in closing inputStream - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 3201
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 3202
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "SetupManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSetupDataFromFile() IOException in closing inputStream - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3189
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v2, :cond_5

    .line 3191
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 3192
    const/4 v2, 0x0

    .line 3197
    :cond_5
    :goto_5
    if-eqz v4, :cond_6

    .line 3199
    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 3200
    const/4 v4, 0x0

    .line 3203
    :cond_6
    :goto_6
    throw v6

    .line 3193
    :catch_5
    move-exception v0

    .line 3194
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "SetupManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setSetupDataFromFile() IOException in closing inputStream - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 3201
    .end local v0    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v0

    .line 3202
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "SetupManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setSetupDataFromFile() IOException in closing inputStream - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 3206
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "is":Ljava/io/InputStream;
    :cond_7
    const-string v6, "wapplist.xml"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 3207
    const/4 v4, 0x0

    .line 3208
    .restart local v4    # "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 3210
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :try_start_a
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_9
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 3211
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :try_start_b
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_32
    .catchall {:try_start_b .. :try_end_b} :catchall_e

    .line 3212
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :try_start_c
    iget-object v6, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->this$0:Lcom/samsung/android/hostmanager/setup/SetupManager;

    iget-object v7, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->mMyAppsSetupList:Ljava/util/ArrayList;

    invoke-static {v6, v7, v5}, Lcom/samsung/android/hostmanager/setup/SetupManager;->access$200(Lcom/samsung/android/hostmanager/setup/SetupManager;Ljava/util/ArrayList;Ljava/io/InputStream;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_33
    .catchall {:try_start_c .. :try_end_c} :catchall_f

    .line 3216
    if-eqz v3, :cond_8

    .line 3218
    :try_start_d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 3219
    const/4 v2, 0x0

    .line 3224
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :goto_7
    if-eqz v5, :cond_20

    .line 3226
    :try_start_e
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    .line 3227
    const/4 v4, 0x0

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    goto/16 :goto_0

    .line 3220
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catch_7
    move-exception v0

    .line 3221
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "SetupManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSetupDataFromFile() IOException in closing inputStream - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/io/IOException;
    :cond_8
    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_7

    .line 3228
    :catch_8
    move-exception v0

    .line 3229
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "SetupManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSetupDataFromFile() IOException in closing inputStream - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    .line 3230
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    goto/16 :goto_0

    .line 3213
    .end local v0    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v0

    .line 3214
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_8
    :try_start_f
    const-string v6, "SetupManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSetupDataFromFile() FileNotFoundException - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not exists yet"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 3216
    if-eqz v2, :cond_9

    .line 3218
    :try_start_10
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a

    .line 3219
    const/4 v2, 0x0

    .line 3224
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_9
    :goto_9
    if-eqz v4, :cond_1

    .line 3226
    :try_start_11
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b

    .line 3227
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 3220
    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_a
    move-exception v0

    .line 3221
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "SetupManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSetupDataFromFile() IOException in closing inputStream - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 3228
    .end local v0    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v0

    .line 3229
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "SetupManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSetupDataFromFile() IOException in closing inputStream - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3216
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v6

    :goto_a
    if-eqz v2, :cond_a

    .line 3218
    :try_start_12
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_c

    .line 3219
    const/4 v2, 0x0

    .line 3224
    :cond_a
    :goto_b
    if-eqz v4, :cond_b

    .line 3226
    :try_start_13
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_d

    .line 3227
    const/4 v4, 0x0

    .line 3230
    :cond_b
    :goto_c
    throw v6

    .line 3220
    :catch_c
    move-exception v0

    .line 3221
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "SetupManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setSetupDataFromFile() IOException in closing inputStream - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 3228
    .end local v0    # "e":Ljava/io/IOException;
    :catch_d
    move-exception v0

    .line 3229
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "SetupManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setSetupDataFromFile() IOException in closing inputStream - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 3233
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "is":Ljava/io/InputStream;
    :cond_c
    const-string v6, "fontlist.xml"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 3234
    const/4 v4, 0x0

    .line 3235
    .restart local v4    # "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 3237
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :try_start_14
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_14} :catch_10
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 3238
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :try_start_15
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_15} :catch_30
    .catchall {:try_start_15 .. :try_end_15} :catchall_c

    .line 3239
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :try_start_16
    iget-object v6, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->this$0:Lcom/samsung/android/hostmanager/setup/SetupManager;

    iget-object v7, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->mFontsSetupList:Ljava/util/ArrayList;

    invoke-static {v6, v7, v5}, Lcom/samsung/android/hostmanager/setup/SetupManager;->access$300(Lcom/samsung/android/hostmanager/setup/SetupManager;Ljava/util/ArrayList;Ljava/io/InputStream;)V
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_16} :catch_31
    .catchall {:try_start_16 .. :try_end_16} :catchall_d

    .line 3243
    if-eqz v3, :cond_d

    .line 3245
    :try_start_17
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_e

    .line 3246
    const/4 v2, 0x0

    .line 3251
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :goto_d
    if-eqz v5, :cond_20

    .line 3253
    :try_start_18
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_f

    .line 3254
    const/4 v4, 0x0

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    goto/16 :goto_0

    .line 3247
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catch_e
    move-exception v0

    .line 3248
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "SetupManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSetupDataFromFile() IOException in closing inputStream - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/io/IOException;
    :cond_d
    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_d

    .line 3255
    :catch_f
    move-exception v0

    .line 3256
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "SetupManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSetupDataFromFile() IOException in closing inputStream - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    .line 3257
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    goto/16 :goto_0

    .line 3240
    .end local v0    # "e":Ljava/io/IOException;
    :catch_10
    move-exception v0

    .line 3241
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_e
    :try_start_19
    const-string v6, "SetupManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSetupDataFromFile() FileNotFoundException - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not exists yet"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    .line 3243
    if-eqz v2, :cond_e

    .line 3245
    :try_start_1a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_11

    .line 3246
    const/4 v2, 0x0

    .line 3251
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_e
    :goto_f
    if-eqz v4, :cond_1

    .line 3253
    :try_start_1b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_12

    .line 3254
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 3247
    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_11
    move-exception v0

    .line 3248
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "SetupManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSetupDataFromFile() IOException in closing inputStream - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 3255
    .end local v0    # "e":Ljava/io/IOException;
    :catch_12
    move-exception v0

    .line 3256
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "SetupManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSetupDataFromFile() IOException in closing inputStream - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3243
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v6

    :goto_10
    if-eqz v2, :cond_f

    .line 3245
    :try_start_1c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_13

    .line 3246
    const/4 v2, 0x0

    .line 3251
    :cond_f
    :goto_11
    if-eqz v4, :cond_10

    .line 3253
    :try_start_1d
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_14

    .line 3254
    const/4 v4, 0x0

    .line 3257
    :cond_10
    :goto_12
    throw v6

    .line 3247
    :catch_13
    move-exception v0

    .line 3248
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "SetupManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setSetupDataFromFile() IOException in closing inputStream - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 3255
    .end local v0    # "e":Ljava/io/IOException;
    :catch_14
    move-exception v0

    .line 3256
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "SetupManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setSetupDataFromFile() IOException in closing inputStream - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    .line 3260
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "is":Ljava/io/InputStream;
    :cond_11
    const-string v6, "favorites_order.xml"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 3261
    const/4 v4, 0x0

    .line 3262
    .restart local v4    # "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 3264
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :try_start_1e
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1e
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_1e} :catch_17
    .catchall {:try_start_1e .. :try_end_1e} :catchall_3

    .line 3265
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :try_start_1f
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_1f} :catch_2e
    .catchall {:try_start_1f .. :try_end_1f} :catchall_a

    .line 3266
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :try_start_20
    iget-object v6, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->this$0:Lcom/samsung/android/hostmanager/setup/SetupManager;

    iget-object v7, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->mFavoriteReorderSetupList:Ljava/util/ArrayList;

    invoke-static {v6, v7, v5}, Lcom/samsung/android/hostmanager/setup/SetupManager;->access$400(Lcom/samsung/android/hostmanager/setup/SetupManager;Ljava/util/ArrayList;Ljava/io/InputStream;)V
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_20 .. :try_end_20} :catch_2f
    .catchall {:try_start_20 .. :try_end_20} :catchall_b

    .line 3270
    if-eqz v3, :cond_12

    .line 3272
    :try_start_21
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_15

    .line 3273
    const/4 v2, 0x0

    .line 3278
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :goto_13
    if-eqz v5, :cond_20

    .line 3280
    :try_start_22
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_16

    .line 3281
    const/4 v4, 0x0

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    goto/16 :goto_0

    .line 3274
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catch_15
    move-exception v0

    .line 3275
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "SetupManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSetupDataFromFile() IOException in closing inputStream - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/io/IOException;
    :cond_12
    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_13

    .line 3282
    :catch_16
    move-exception v0

    .line 3283
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "SetupManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSetupDataFromFile() IOException in closing inputStream - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    .line 3284
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    goto/16 :goto_0

    .line 3267
    .end local v0    # "e":Ljava/io/IOException;
    :catch_17
    move-exception v0

    .line 3268
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_14
    :try_start_23
    const-string v6, "SetupManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSetupDataFromFile() FileNotFoundException - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not exists yet"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_3

    .line 3270
    if-eqz v2, :cond_13

    .line 3272
    :try_start_24
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_18

    .line 3273
    const/4 v2, 0x0

    .line 3278
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_13
    :goto_15
    if-eqz v4, :cond_1

    .line 3280
    :try_start_25
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_19

    .line 3281
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 3274
    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_18
    move-exception v0

    .line 3275
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "SetupManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSetupDataFromFile() IOException in closing inputStream - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    .line 3282
    .end local v0    # "e":Ljava/io/IOException;
    :catch_19
    move-exception v0

    .line 3283
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "SetupManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSetupDataFromFile() IOException in closing inputStream - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3270
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_3
    move-exception v6

    :goto_16
    if-eqz v2, :cond_14

    .line 3272
    :try_start_26
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_1a

    .line 3273
    const/4 v2, 0x0

    .line 3278
    :cond_14
    :goto_17
    if-eqz v4, :cond_15

    .line 3280
    :try_start_27
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_1b

    .line 3281
    const/4 v4, 0x0

    .line 3284
    :cond_15
    :goto_18
    throw v6

    .line 3274
    :catch_1a
    move-exception v0

    .line 3275
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "SetupManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setSetupDataFromFile() IOException in closing inputStream - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    .line 3282
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1b
    move-exception v0

    .line 3283
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "SetupManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setSetupDataFromFile() IOException in closing inputStream - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 3287
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "is":Ljava/io/InputStream;
    :cond_16
    const-string v6, "apps_order.xml"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 3288
    const/4 v4, 0x0

    .line 3289
    .restart local v4    # "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 3291
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :try_start_28
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_28
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_28} :catch_1e
    .catchall {:try_start_28 .. :try_end_28} :catchall_4

    .line 3292
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :try_start_29
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_29 .. :try_end_29} :catch_2c
    .catchall {:try_start_29 .. :try_end_29} :catchall_8

    .line 3293
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :try_start_2a
    iget-object v6, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->this$0:Lcom/samsung/android/hostmanager/setup/SetupManager;

    iget-object v7, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->mAppsOrderSetupList:Ljava/util/ArrayList;

    invoke-static {v6, v7, v5}, Lcom/samsung/android/hostmanager/setup/SetupManager;->access$500(Lcom/samsung/android/hostmanager/setup/SetupManager;Ljava/util/ArrayList;Ljava/io/InputStream;)V
    :try_end_2a
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_2a} :catch_2d
    .catchall {:try_start_2a .. :try_end_2a} :catchall_9

    .line 3297
    if-eqz v3, :cond_17

    .line 3299
    :try_start_2b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_1c

    .line 3300
    const/4 v2, 0x0

    .line 3305
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :goto_19
    if-eqz v5, :cond_20

    .line 3307
    :try_start_2c
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_1d

    .line 3308
    const/4 v4, 0x0

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    goto/16 :goto_0

    .line 3301
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catch_1c
    move-exception v0

    .line 3302
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "SetupManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSetupDataFromFile() IOException in closing inputStream - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/io/IOException;
    :cond_17
    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_19

    .line 3309
    :catch_1d
    move-exception v0

    .line 3310
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "SetupManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSetupDataFromFile() IOException in closing inputStream - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    .line 3311
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    goto/16 :goto_0

    .line 3294
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1e
    move-exception v0

    .line 3295
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1a
    :try_start_2d
    const-string v6, "SetupManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSetupDataFromFile() FileNotFoundException - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not exists yet"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_4

    .line 3297
    if-eqz v2, :cond_18

    .line 3299
    :try_start_2e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2e} :catch_1f

    .line 3300
    const/4 v2, 0x0

    .line 3305
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_18
    :goto_1b
    if-eqz v4, :cond_1

    .line 3307
    :try_start_2f
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_2f} :catch_20

    .line 3308
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 3301
    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1f
    move-exception v0

    .line 3302
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "SetupManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSetupDataFromFile() IOException in closing inputStream - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 3309
    .end local v0    # "e":Ljava/io/IOException;
    :catch_20
    move-exception v0

    .line 3310
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "SetupManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSetupDataFromFile() IOException in closing inputStream - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3297
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_4
    move-exception v6

    :goto_1c
    if-eqz v2, :cond_19

    .line 3299
    :try_start_30
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_30} :catch_21

    .line 3300
    const/4 v2, 0x0

    .line 3305
    :cond_19
    :goto_1d
    if-eqz v4, :cond_1a

    .line 3307
    :try_start_31
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_31} :catch_22

    .line 3308
    const/4 v4, 0x0

    .line 3311
    :cond_1a
    :goto_1e
    throw v6

    .line 3301
    :catch_21
    move-exception v0

    .line 3302
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "SetupManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setSetupDataFromFile() IOException in closing inputStream - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    .line 3309
    .end local v0    # "e":Ljava/io/IOException;
    :catch_22
    move-exception v0

    .line 3310
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "SetupManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setSetupDataFromFile() IOException in closing inputStream - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    .line 3314
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "is":Ljava/io/InputStream;
    :cond_1b
    const-string v6, "settings_result.xml"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3315
    const/4 v4, 0x0

    .line 3316
    .restart local v4    # "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 3318
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :try_start_32
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_32
    .catch Ljava/io/FileNotFoundException; {:try_start_32 .. :try_end_32} :catch_25
    .catchall {:try_start_32 .. :try_end_32} :catchall_5

    .line 3319
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :try_start_33
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_33
    .catch Ljava/io/FileNotFoundException; {:try_start_33 .. :try_end_33} :catch_2a
    .catchall {:try_start_33 .. :try_end_33} :catchall_6

    .line 3320
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :try_start_34
    iget-object v6, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->this$0:Lcom/samsung/android/hostmanager/setup/SetupManager;

    invoke-static {v6, v5}, Lcom/samsung/android/hostmanager/setup/SetupManager;->access$600(Lcom/samsung/android/hostmanager/setup/SetupManager;Ljava/io/InputStream;)Lcom/samsung/android/hostmanager/aidl/SettingsSetup;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->mSettingsSetup:Lcom/samsung/android/hostmanager/aidl/SettingsSetup;
    :try_end_34
    .catch Ljava/io/FileNotFoundException; {:try_start_34 .. :try_end_34} :catch_2b
    .catchall {:try_start_34 .. :try_end_34} :catchall_7

    .line 3324
    if-eqz v3, :cond_1c

    .line 3326
    :try_start_35
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_35} :catch_23

    .line 3327
    const/4 v2, 0x0

    .line 3332
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :goto_1f
    if-eqz v5, :cond_1

    .line 3334
    :try_start_36
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_36} :catch_24

    .line 3335
    const/4 v4, 0x0

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    goto/16 :goto_0

    .line 3328
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catch_23
    move-exception v0

    .line 3329
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "SetupManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSetupDataFromFile() IOException in closing inputStream - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/io/IOException;
    :cond_1c
    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_1f

    .line 3336
    :catch_24
    move-exception v0

    .line 3337
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "SetupManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSetupDataFromFile() IOException in closing inputStream - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3321
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    :catch_25
    move-exception v0

    .line 3322
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_20
    :try_start_37
    const-string v6, "SetupManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSetupDataFromFile() FileNotFoundException - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not exists yet"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_5

    .line 3324
    if-eqz v2, :cond_1d

    .line 3326
    :try_start_38
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_38} :catch_26

    .line 3327
    const/4 v2, 0x0

    .line 3332
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_1d
    :goto_21
    if-eqz v4, :cond_1

    .line 3334
    :try_start_39
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_39} :catch_27

    .line 3335
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 3328
    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_26
    move-exception v0

    .line 3329
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "SetupManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSetupDataFromFile() IOException in closing inputStream - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21

    .line 3336
    .end local v0    # "e":Ljava/io/IOException;
    :catch_27
    move-exception v0

    .line 3337
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "SetupManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSetupDataFromFile() IOException in closing inputStream - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3324
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_5
    move-exception v6

    :goto_22
    if-eqz v2, :cond_1e

    .line 3326
    :try_start_3a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3a} :catch_28

    .line 3327
    const/4 v2, 0x0

    .line 3332
    :cond_1e
    :goto_23
    if-eqz v4, :cond_1f

    .line 3334
    :try_start_3b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3b} :catch_29

    .line 3335
    const/4 v4, 0x0

    .line 3338
    :cond_1f
    :goto_24
    throw v6

    .line 3328
    :catch_28
    move-exception v0

    .line 3329
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "SetupManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setSetupDataFromFile() IOException in closing inputStream - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    .line 3336
    .end local v0    # "e":Ljava/io/IOException;
    :catch_29
    move-exception v0

    .line 3337
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "SetupManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setSetupDataFromFile() IOException in closing inputStream - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    .line 3324
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_6
    move-exception v6

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_22

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catchall_7
    move-exception v6

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    move-object v4, v5

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    goto :goto_22

    .line 3321
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_2a
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_20

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catch_2b
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    move-object v4, v5

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    goto/16 :goto_20

    .line 3297
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_8
    move-exception v6

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_1c

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catchall_9
    move-exception v6

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    move-object v4, v5

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    goto/16 :goto_1c

    .line 3294
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_2c
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_1a

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catch_2d
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    move-object v4, v5

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    goto/16 :goto_1a

    .line 3270
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_a
    move-exception v6

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_16

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catchall_b
    move-exception v6

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    move-object v4, v5

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    goto/16 :goto_16

    .line 3267
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_2e
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_14

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catch_2f
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    move-object v4, v5

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    goto/16 :goto_14

    .line 3243
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_c
    move-exception v6

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_10

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catchall_d
    move-exception v6

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    move-object v4, v5

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    goto/16 :goto_10

    .line 3240
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_30
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_e

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catch_31
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    move-object v4, v5

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    goto/16 :goto_e

    .line 3216
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_e
    move-exception v6

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_a

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catchall_f
    move-exception v6

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    move-object v4, v5

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    goto/16 :goto_a

    .line 3213
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_32
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_8

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catch_33
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    move-object v4, v5

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    goto/16 :goto_8

    .line 3189
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_10
    move-exception v6

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_4

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catchall_11
    move-exception v6

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    move-object v4, v5

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    goto/16 :goto_4

    .line 3186
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_34
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catch_35
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    move-object v4, v5

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    goto/16 :goto_2

    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :cond_20
    move-object v4, v5

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    goto/16 :goto_0
.end method
