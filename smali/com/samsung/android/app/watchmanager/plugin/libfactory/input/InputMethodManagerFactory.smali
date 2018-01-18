.class public Lcom/samsung/android/app/watchmanager/plugin/libfactory/input/InputMethodManagerFactory;
.super Ljava/lang/Object;
.source "InputMethodManagerFactory.java"


# static fields
.field private static mInterface:Lcom/samsung/android/app/watchmanager/plugin/libinterface/input/InputMethodManagerInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/app/watchmanager/plugin/libfactory/input/InputMethodManagerFactory;->mInterface:Lcom/samsung/android/app/watchmanager/plugin/libinterface/input/InputMethodManagerInterface;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/input/InputMethodManagerInterface;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/samsung/android/app/watchmanager/plugin/libfactory/input/InputMethodManagerFactory;->mInterface:Lcom/samsung/android/app/watchmanager/plugin/libinterface/input/InputMethodManagerInterface;

    if-nez v0, :cond_0

    .line 14
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/util/FeatureUtil;->supportSem()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    new-instance v0, Lcom/samsung/android/app/watchmanager/plugin/selibrary/input/InputMethodManagerImpl;

    invoke-direct {v0}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/input/InputMethodManagerImpl;-><init>()V

    sput-object v0, Lcom/samsung/android/app/watchmanager/plugin/libfactory/input/InputMethodManagerFactory;->mInterface:Lcom/samsung/android/app/watchmanager/plugin/libinterface/input/InputMethodManagerInterface;

    .line 20
    :cond_0
    :goto_0
    sget-object v0, Lcom/samsung/android/app/watchmanager/plugin/libfactory/input/InputMethodManagerFactory;->mInterface:Lcom/samsung/android/app/watchmanager/plugin/libinterface/input/InputMethodManagerInterface;

    return-object v0

    .line 17
    :cond_1
    new-instance v0, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/input/InputMethodManagerImpl;

    invoke-direct {v0}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/input/InputMethodManagerImpl;-><init>()V

    sput-object v0, Lcom/samsung/android/app/watchmanager/plugin/libfactory/input/InputMethodManagerFactory;->mInterface:Lcom/samsung/android/app/watchmanager/plugin/libinterface/input/InputMethodManagerInterface;

    goto :goto_0
.end method
