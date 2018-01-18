.class public Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/ScanSettingsBuilderFactory;
.super Ljava/lang/Object;
.source "ScanSettingsBuilderFactory.java"


# static fields
.field private static mInterface:Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/ScanSettingsBuilderInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/ScanSettingsBuilderFactory;->mInterface:Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/ScanSettingsBuilderInterface;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/ScanSettingsBuilderInterface;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/ScanSettingsBuilderFactory;->mInterface:Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/ScanSettingsBuilderInterface;

    if-nez v0, :cond_0

    .line 16
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/util/FeatureUtil;->supportSem()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17
    new-instance v0, Lcom/samsung/android/app/watchmanager/plugin/selibrary/bluetooth/ScanSettingsBuilderManager;

    invoke-direct {v0}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/bluetooth/ScanSettingsBuilderManager;-><init>()V

    sput-object v0, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/ScanSettingsBuilderFactory;->mInterface:Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/ScanSettingsBuilderInterface;

    .line 22
    :cond_0
    :goto_0
    sget-object v0, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/ScanSettingsBuilderFactory;->mInterface:Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/ScanSettingsBuilderInterface;

    return-object v0

    .line 19
    :cond_1
    new-instance v0, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/bluetooth/ScanSettingsBuilderManager;

    invoke-direct {v0}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/bluetooth/ScanSettingsBuilderManager;-><init>()V

    sput-object v0, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/ScanSettingsBuilderFactory;->mInterface:Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/ScanSettingsBuilderInterface;

    goto :goto_0
.end method
