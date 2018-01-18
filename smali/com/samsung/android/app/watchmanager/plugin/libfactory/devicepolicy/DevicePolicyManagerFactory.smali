.class public Lcom/samsung/android/app/watchmanager/plugin/libfactory/devicepolicy/DevicePolicyManagerFactory;
.super Ljava/lang/Object;
.source "DevicePolicyManagerFactory.java"


# static fields
.field private static mInterface:Lcom/samsung/android/app/watchmanager/plugin/libinterface/devicepolicy/DevicePolicyManagerInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/app/watchmanager/plugin/libfactory/devicepolicy/DevicePolicyManagerFactory;->mInterface:Lcom/samsung/android/app/watchmanager/plugin/libinterface/devicepolicy/DevicePolicyManagerInterface;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/devicepolicy/DevicePolicyManagerInterface;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/samsung/android/app/watchmanager/plugin/libfactory/devicepolicy/DevicePolicyManagerFactory;->mInterface:Lcom/samsung/android/app/watchmanager/plugin/libinterface/devicepolicy/DevicePolicyManagerInterface;

    if-nez v0, :cond_0

    .line 13
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/util/FeatureUtil;->supportSem()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    new-instance v0, Lcom/samsung/android/app/watchmanager/plugin/selibrary/devicepolicy/DevicePolicyManager;

    invoke-direct {v0}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/devicepolicy/DevicePolicyManager;-><init>()V

    sput-object v0, Lcom/samsung/android/app/watchmanager/plugin/libfactory/devicepolicy/DevicePolicyManagerFactory;->mInterface:Lcom/samsung/android/app/watchmanager/plugin/libinterface/devicepolicy/DevicePolicyManagerInterface;

    .line 19
    :cond_0
    :goto_0
    sget-object v0, Lcom/samsung/android/app/watchmanager/plugin/libfactory/devicepolicy/DevicePolicyManagerFactory;->mInterface:Lcom/samsung/android/app/watchmanager/plugin/libinterface/devicepolicy/DevicePolicyManagerInterface;

    return-object v0

    .line 16
    :cond_1
    new-instance v0, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/devicepolicy/DevicePolicyManager;

    invoke-direct {v0}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/devicepolicy/DevicePolicyManager;-><init>()V

    sput-object v0, Lcom/samsung/android/app/watchmanager/plugin/libfactory/devicepolicy/DevicePolicyManagerFactory;->mInterface:Lcom/samsung/android/app/watchmanager/plugin/libinterface/devicepolicy/DevicePolicyManagerInterface;

    goto :goto_0
.end method
