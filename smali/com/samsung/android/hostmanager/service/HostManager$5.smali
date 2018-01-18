.class Lcom/samsung/android/hostmanager/service/HostManager$5;
.super Landroid/database/ContentObserver;
.source "HostManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/service/HostManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/service/HostManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/service/HostManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/service/HostManager;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 641
    iput-object p1, p0, Lcom/samsung/android/hostmanager/service/HostManager$5;->this$0:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 8
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 644
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TShareLoginContentObserver :: onChange = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_2

    .line 648
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$000()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "tshare_login_state"

    invoke-static {v5, v6, v3}, Lcom/samsung/android/uhm/framework/ui/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 653
    .local v1, "loginstate":I
    :goto_0
    invoke-static {}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getInstance()Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;

    move-result-object v5

    const-string v6, "Gear"

    invoke-virtual {v5, v6}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getConnectedDeviceIdByType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 654
    .local v0, "deviceID":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "gear_number_pref"

    const-string v7, "tshare_login_state"

    invoke-static {v5, v0, v6, v7}, Lcom/samsung/android/hostmanager/utils/PrefUtils;->getPreferenceWithFilename(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 656
    .local v2, "preLogin":Ljava/lang/String;
    const-string v5, "TRUE"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    .line 657
    .local v3, "preLoginstate":I
    :cond_0
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TShareLogin : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", preLoginstate : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    if-eq v3, v1, :cond_1

    .line 660
    if-nez v1, :cond_3

    .line 661
    iget-object v4, p0, Lcom/samsung/android/hostmanager/service/HostManager$5;->this$0:Lcom/samsung/android/hostmanager/service/HostManager;

    iget-object v4, v4, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    const-string v5, "false"

    invoke-virtual {v4, v5, v0}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendJsonMultiSimValueReqMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    iget-object v4, p0, Lcom/samsung/android/hostmanager/service/HostManager$5;->this$0:Lcom/samsung/android/hostmanager/service/HostManager;

    iget-object v4, v4, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    const-string v5, "false"

    invoke-virtual {v4, v5, v0}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendJsonAutoCFDValueReqMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 668
    return-void

    .line 650
    .end local v0    # "deviceID":Ljava/lang/String;
    .end local v1    # "loginstate":I
    .end local v2    # "preLogin":Ljava/lang/String;
    .end local v3    # "preLoginstate":I
    :cond_2
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$000()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "tshare_login_state"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .restart local v1    # "loginstate":I
    goto :goto_0

    .line 663
    .restart local v0    # "deviceID":Ljava/lang/String;
    .restart local v2    # "preLogin":Ljava/lang/String;
    .restart local v3    # "preLoginstate":I
    :cond_3
    if-ne v1, v4, :cond_1

    .line 664
    iget-object v4, p0, Lcom/samsung/android/hostmanager/service/HostManager$5;->this$0:Lcom/samsung/android/hostmanager/service/HostManager;

    iget-object v4, v4, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    const-string v5, "true"

    invoke-virtual {v4, v5, v0}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendJsonMultiSimValueReqMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
