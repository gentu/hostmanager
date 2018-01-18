.class public Lcom/samsung/android/app/watchmanager/plugin/libfactory/appsoperation/AppsOpManagerFactory;
.super Ljava/lang/Object;
.source "AppsOpManagerFactory.java"


# static fields
.field private static mInterface:Lcom/samsung/android/app/watchmanager/plugin/libinterface/appsoperation/AppsOpInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/app/watchmanager/plugin/libfactory/appsoperation/AppsOpManagerFactory;->mInterface:Lcom/samsung/android/app/watchmanager/plugin/libinterface/appsoperation/AppsOpInterface;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/appsoperation/AppsOpInterface;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/samsung/android/app/watchmanager/plugin/libfactory/appsoperation/AppsOpManagerFactory;->mInterface:Lcom/samsung/android/app/watchmanager/plugin/libinterface/appsoperation/AppsOpInterface;

    if-nez v0, :cond_0

    .line 14
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/util/FeatureUtil;->supportSem()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    new-instance v0, Lcom/samsung/android/app/watchmanager/plugin/selibrary/appsoperation/AppsOpManager;

    invoke-direct {v0}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/appsoperation/AppsOpManager;-><init>()V

    sput-object v0, Lcom/samsung/android/app/watchmanager/plugin/libfactory/appsoperation/AppsOpManagerFactory;->mInterface:Lcom/samsung/android/app/watchmanager/plugin/libinterface/appsoperation/AppsOpInterface;

    .line 20
    :cond_0
    :goto_0
    sget-object v0, Lcom/samsung/android/app/watchmanager/plugin/libfactory/appsoperation/AppsOpManagerFactory;->mInterface:Lcom/samsung/android/app/watchmanager/plugin/libinterface/appsoperation/AppsOpInterface;

    return-object v0

    .line 17
    :cond_1
    new-instance v0, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/appsoperation/AppsOpManager;

    invoke-direct {v0}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/appsoperation/AppsOpManager;-><init>()V

    sput-object v0, Lcom/samsung/android/app/watchmanager/plugin/libfactory/appsoperation/AppsOpManagerFactory;->mInterface:Lcom/samsung/android/app/watchmanager/plugin/libinterface/appsoperation/AppsOpInterface;

    goto :goto_0
.end method
