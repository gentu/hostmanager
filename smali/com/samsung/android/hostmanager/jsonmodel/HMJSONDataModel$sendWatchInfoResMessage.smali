.class public final Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendWatchInfoResMessage;
.super Lcom/samsung/android/hostmanager/jsonmodel/ResponseMessage;
.source "HMJSONDataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "sendWatchInfoResMessage"
.end annotation


# static fields
.field public static final ANDROID_VER:Ljava/lang/String; = "android_version"

.field public static final BT_MAC_ADDRESS:Ljava/lang/String; = "bt_mac_address"

.field public static final DEFAULT_CLOCK_PKGNAME:Ljava/lang/String; = "default_clock_pkgname"

.field public static final DEFAULT_FONT_FAMILYNAME:Ljava/lang/String; = "default_font_familyname"

.field public static final DEFAULT_IME_CLASSNAME:Ljava/lang/String; = "default_ime_classname"

.field public static final DEFAULT_PD_CLASSNAME:Ljava/lang/String; = "default_pd_classname"

.field public static final IS_INITIALED_WATCH:Ljava/lang/String; = "is_initialed_watch"

.field public static final MODEL_NAME:Ljava/lang/String; = "model_name"

.field public static final MODEL_NUM:Ljava/lang/String; = "model_number"

.field public static final PEER_ID:Ljava/lang/String; = "peer_id"

.field public static final SALES_CODE:Ljava/lang/String; = "sales_code"

.field public static final SERIAL:Ljava/lang/String; = "serial"

.field public static final SOFTWARE_VER:Ljava/lang/String; = "software_version"


# instance fields
.field public isInitialedWatch:Z

.field public mAndroidVer:Ljava/lang/String;

.field public mBtMacAddress:Ljava/lang/String;

.field public mDefaultClockPkgName:Ljava/lang/String;

.field public mDefaultFontFamilyName:Ljava/lang/String;

.field public mDefaultIMEClassName:Ljava/lang/String;

.field public mDefaultPDClassName:Ljava/lang/String;

.field public mModelName:Ljava/lang/String;

.field public mModelNum:Ljava/lang/String;

.field public mPeerId:Ljava/lang/String;

.field public mSalescode:Ljava/lang/String;

.field public mSerial:Ljava/lang/String;

.field public mSoftwareVer:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 661
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/jsonmodel/ResponseMessage;-><init>()V

    .line 658
    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendWatchInfoResMessage;->mDefaultFontFamilyName:Ljava/lang/String;

    .line 659
    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendWatchInfoResMessage;->mDefaultIMEClassName:Ljava/lang/String;

    .line 662
    sget-object v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->MGR_WATCH_INFO_RES:Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendWatchInfoResMessage;->msgId:Ljava/lang/String;

    .line 663
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "modelNum"    # Ljava/lang/String;
    .param p2, "androidVer"    # Ljava/lang/String;
    .param p3, "softwareVer"    # Ljava/lang/String;
    .param p4, "btMacAddress"    # Ljava/lang/String;
    .param p5, "modelName"    # Ljava/lang/String;
    .param p6, "salesCode"    # Ljava/lang/String;
    .param p7, "isFirst"    # Z
    .param p8, "defaultPDClassName"    # Ljava/lang/String;
    .param p9, "defaultClockPkgName"    # Ljava/lang/String;
    .param p10, "serial"    # Ljava/lang/String;
    .param p11, "peerId"    # Ljava/lang/String;
    .param p12, "defaultFontFamilyName"    # Ljava/lang/String;
    .param p13, "defaultIMEClassName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 667
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/jsonmodel/ResponseMessage;-><init>()V

    .line 658
    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendWatchInfoResMessage;->mDefaultFontFamilyName:Ljava/lang/String;

    .line 659
    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendWatchInfoResMessage;->mDefaultIMEClassName:Ljava/lang/String;

    .line 668
    sget-object v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->MGR_WATCH_INFO_RES:Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendWatchInfoResMessage;->msgId:Ljava/lang/String;

    .line 669
    iput-object p1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendWatchInfoResMessage;->mModelNum:Ljava/lang/String;

    .line 670
    iput-object p2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendWatchInfoResMessage;->mAndroidVer:Ljava/lang/String;

    .line 671
    iput-object p3, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendWatchInfoResMessage;->mSoftwareVer:Ljava/lang/String;

    .line 672
    iput-object p4, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendWatchInfoResMessage;->mBtMacAddress:Ljava/lang/String;

    .line 673
    iput-object p5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendWatchInfoResMessage;->mModelName:Ljava/lang/String;

    .line 674
    iput-object p6, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendWatchInfoResMessage;->mSalescode:Ljava/lang/String;

    .line 675
    iput-boolean p7, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendWatchInfoResMessage;->isInitialedWatch:Z

    .line 676
    iput-object p8, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendWatchInfoResMessage;->mDefaultPDClassName:Ljava/lang/String;

    .line 677
    iput-object p9, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendWatchInfoResMessage;->mDefaultClockPkgName:Ljava/lang/String;

    .line 678
    iput-object p10, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendWatchInfoResMessage;->mSerial:Ljava/lang/String;

    .line 679
    iput-object p11, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendWatchInfoResMessage;->mPeerId:Ljava/lang/String;

    .line 680
    iput-object p12, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendWatchInfoResMessage;->mDefaultFontFamilyName:Ljava/lang/String;

    .line 681
    iput-object p13, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendWatchInfoResMessage;->mDefaultIMEClassName:Ljava/lang/String;

    .line 682
    return-void
.end method


# virtual methods
.method public fromJSON(Ljava/lang/Object;)V
    .locals 4
    .param p1, "json"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 759
    new-instance v1, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "json":Ljava/lang/Object;
    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 762
    .local v1, "jsonObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "msgId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendWatchInfoResMessage;->msgId:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 768
    :goto_0
    :try_start_1
    const-string v2, "model_number"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendWatchInfoResMessage;->mModelNum:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 774
    :goto_1
    :try_start_2
    const-string v2, "android_version"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendWatchInfoResMessage;->mAndroidVer:Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 780
    :goto_2
    :try_start_3
    const-string v2, "software_version"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendWatchInfoResMessage;->mSoftwareVer:Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 786
    :goto_3
    :try_start_4
    const-string v2, "bt_mac_address"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendWatchInfoResMessage;->mBtMacAddress:Ljava/lang/String;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    .line 792
    :goto_4
    :try_start_5
    const-string v2, "model_name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendWatchInfoResMessage;->mModelName:Ljava/lang/String;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    .line 798
    :goto_5
    :try_start_6
    const-string v2, "sales_code"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendWatchInfoResMessage;->mSalescode:Ljava/lang/String;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    .line 804
    :goto_6
    :try_start_7
    const-string v2, "is_initialed_watch"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendWatchInfoResMessage;->isInitialedWatch:Z
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_7

    .line 810
    :goto_7
    :try_start_8
    const-string v2, "default_pd_classname"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendWatchInfoResMessage;->mDefaultPDClassName:Ljava/lang/String;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_8

    .line 816
    :goto_8
    :try_start_9
    const-string v2, "default_clock_pkgname"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendWatchInfoResMessage;->mDefaultClockPkgName:Ljava/lang/String;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_9

    .line 822
    :goto_9
    :try_start_a
    const-string v2, "serial"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendWatchInfoResMessage;->mSerial:Ljava/lang/String;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_a

    .line 828
    :goto_a
    :try_start_b
    const-string v2, "peer_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendWatchInfoResMessage;->mPeerId:Ljava/lang/String;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_b

    .line 834
    :goto_b
    :try_start_c
    const-string v2, "default_font_familyname"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendWatchInfoResMessage;->mDefaultFontFamilyName:Ljava/lang/String;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_c

    .line 840
    :goto_c
    :try_start_d
    const-string v2, "default_ime_classname"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendWatchInfoResMessage;->mDefaultIMEClassName:Ljava/lang/String;
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_d

    .line 844
    :goto_d
    return-void

    .line 763
    :catch_0
    move-exception v0

    .line 764
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel;->TAG:Ljava/lang/String;

    const-string v3, "mgr_watch_info_res doens\'t have msgId field"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 769
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 770
    .restart local v0    # "e":Lorg/json/JSONException;
    sget-object v2, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel;->TAG:Ljava/lang/String;

    const-string v3, "mgr_watch_info_res doens\'t have model_number field"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 775
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v0

    .line 776
    .restart local v0    # "e":Lorg/json/JSONException;
    sget-object v2, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel;->TAG:Ljava/lang/String;

    const-string v3, "mgr_watch_info_res doens\'t have android_version field"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 781
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_3
    move-exception v0

    .line 782
    .restart local v0    # "e":Lorg/json/JSONException;
    sget-object v2, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel;->TAG:Ljava/lang/String;

    const-string v3, "mgr_watch_info_res doens\'t have software_version field"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 787
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_4
    move-exception v0

    .line 788
    .restart local v0    # "e":Lorg/json/JSONException;
    sget-object v2, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel;->TAG:Ljava/lang/String;

    const-string v3, "mgr_watch_info_res doens\'t have bt_mac_address field"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 793
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_5
    move-exception v0

    .line 794
    .restart local v0    # "e":Lorg/json/JSONException;
    sget-object v2, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel;->TAG:Ljava/lang/String;

    const-string v3, "mgr_watch_info_res doens\'t have model_name field"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 799
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_6
    move-exception v0

    .line 800
    .restart local v0    # "e":Lorg/json/JSONException;
    sget-object v2, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel;->TAG:Ljava/lang/String;

    const-string v3, "mgr_watch_info_res doens\'t have sales_code field"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 805
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_7
    move-exception v0

    .line 806
    .restart local v0    # "e":Lorg/json/JSONException;
    sget-object v2, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel;->TAG:Ljava/lang/String;

    const-string v3, "mgr_watch_info_res doens\'t have is_initialed_watch field"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 811
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_8
    move-exception v0

    .line 812
    .restart local v0    # "e":Lorg/json/JSONException;
    sget-object v2, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel;->TAG:Ljava/lang/String;

    const-string v3, "mgr_watch_info_res doens\'t have default_pd_classname field"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 817
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_9
    move-exception v0

    .line 818
    .restart local v0    # "e":Lorg/json/JSONException;
    sget-object v2, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel;->TAG:Ljava/lang/String;

    const-string v3, "mgr_watch_info_res doens\'t have default_clock_pkgname field"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 823
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_a
    move-exception v0

    .line 824
    .restart local v0    # "e":Lorg/json/JSONException;
    sget-object v2, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel;->TAG:Ljava/lang/String;

    const-string v3, "mgr_watch_info_res doens\'t have serial field"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 829
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_b
    move-exception v0

    .line 830
    .restart local v0    # "e":Lorg/json/JSONException;
    sget-object v2, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel;->TAG:Ljava/lang/String;

    const-string v3, "mgr_watch_info_res doens\'t have peer_id field"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 835
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_c
    move-exception v0

    .line 836
    .restart local v0    # "e":Lorg/json/JSONException;
    sget-object v2, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel;->TAG:Ljava/lang/String;

    const-string v3, "mgr_watch_info_res doens\'t have default_font_familyname field"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 841
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_d
    move-exception v0

    .line 842
    .restart local v0    # "e":Lorg/json/JSONException;
    sget-object v2, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel;->TAG:Ljava/lang/String;

    const-string v3, "mgr_watch_info_res doens\'t have default_ime_classname field"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method public getAndroidVer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendWatchInfoResMessage;->mAndroidVer:Ljava/lang/String;

    return-object v0
.end method

.method public getBtMacAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendWatchInfoResMessage;->mBtMacAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultClockPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendWatchInfoResMessage;->mDefaultClockPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultFontFamilyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendWatchInfoResMessage;->mDefaultFontFamilyName:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultIMEClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 733
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendWatchInfoResMessage;->mDefaultIMEClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultPDClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendWatchInfoResMessage;->mDefaultPDClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getIsInitialedWatch()Z
    .locals 1

    .prologue
    .line 709
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendWatchInfoResMessage;->isInitialedWatch:Z

    return v0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendWatchInfoResMessage;->mModelName:Ljava/lang/String;

    return-object v0
.end method

.method public getModelNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendWatchInfoResMessage;->mModelNum:Ljava/lang/String;

    return-object v0
.end method

.method public getPeerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendWatchInfoResMessage;->mPeerId:Ljava/lang/String;

    return-object v0
.end method

.method public getSalesCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendWatchInfoResMessage;->mSalescode:Ljava/lang/String;

    return-object v0
.end method

.method public getSerial()Ljava/lang/String;
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendWatchInfoResMessage;->mSerial:Ljava/lang/String;

    return-object v0
.end method

.method public getSoftwareVer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendWatchInfoResMessage;->mSoftwareVer:Ljava/lang/String;

    return-object v0
.end method

.method public toJSON()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 738
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 740
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "msgId"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendWatchInfoResMessage;->msgId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 741
    const-string v1, "model_number"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendWatchInfoResMessage;->mModelNum:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 742
    const-string v1, "android_version"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendWatchInfoResMessage;->mAndroidVer:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 743
    const-string v1, "software_version"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendWatchInfoResMessage;->mSoftwareVer:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 744
    const-string v1, "bt_mac_address"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendWatchInfoResMessage;->mBtMacAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 745
    const-string v1, "model_name"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendWatchInfoResMessage;->mModelName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 746
    const-string v1, "sales_code"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendWatchInfoResMessage;->mSalescode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 747
    const-string v1, "is_initialed_watch"

    iget-boolean v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendWatchInfoResMessage;->isInitialedWatch:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 748
    const-string v1, "default_pd_classname"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendWatchInfoResMessage;->mDefaultPDClassName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 749
    const-string v1, "default_clock_pkgname"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendWatchInfoResMessage;->mDefaultClockPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 750
    const-string v1, "serial"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendWatchInfoResMessage;->mSerial:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 751
    const-string v1, "peer_id"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendWatchInfoResMessage;->mPeerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 752
    const-string v1, "default_font_familyname"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendWatchInfoResMessage;->mDefaultFontFamilyName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 753
    const-string v1, "default_ime_classname"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendWatchInfoResMessage;->mDefaultIMEClassName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 754
    return-object v0
.end method
