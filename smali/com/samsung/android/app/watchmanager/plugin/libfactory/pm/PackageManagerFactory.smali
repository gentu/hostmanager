.class public Lcom/samsung/android/app/watchmanager/plugin/libfactory/pm/PackageManagerFactory;
.super Ljava/lang/Object;
.source "PackageManagerFactory.java"


# static fields
.field private static mInterface:Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/PackageManagerInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/app/watchmanager/plugin/libfactory/pm/PackageManagerFactory;->mInterface:Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/PackageManagerInterface;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/PackageManagerInterface;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/samsung/android/app/watchmanager/plugin/libfactory/pm/PackageManagerFactory;->mInterface:Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/PackageManagerInterface;

    if-nez v0, :cond_0

    .line 15
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/util/FeatureUtil;->supportSem()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    new-instance v0, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageManager;

    invoke-direct {v0}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageManager;-><init>()V

    sput-object v0, Lcom/samsung/android/app/watchmanager/plugin/libfactory/pm/PackageManagerFactory;->mInterface:Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/PackageManagerInterface;

    .line 21
    :cond_0
    :goto_0
    sget-object v0, Lcom/samsung/android/app/watchmanager/plugin/libfactory/pm/PackageManagerFactory;->mInterface:Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/PackageManagerInterface;

    return-object v0

    .line 18
    :cond_1
    new-instance v0, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageManager;

    invoke-direct {v0}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageManager;-><init>()V

    sput-object v0, Lcom/samsung/android/app/watchmanager/plugin/libfactory/pm/PackageManagerFactory;->mInterface:Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/PackageManagerInterface;

    goto :goto_0
.end method
