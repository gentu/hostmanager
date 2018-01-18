.class public Lcom/samsung/android/app/watchmanager/plugin/libfactory/userhandle/UserHandleFactory;
.super Ljava/lang/Object;
.source "UserHandleFactory.java"


# static fields
.field private static mInterface:Lcom/samsung/android/app/watchmanager/plugin/libinterface/userhandle/UserHandleInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/app/watchmanager/plugin/libfactory/userhandle/UserHandleFactory;->mInterface:Lcom/samsung/android/app/watchmanager/plugin/libinterface/userhandle/UserHandleInterface;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/userhandle/UserHandleInterface;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/samsung/android/app/watchmanager/plugin/libfactory/userhandle/UserHandleFactory;->mInterface:Lcom/samsung/android/app/watchmanager/plugin/libinterface/userhandle/UserHandleInterface;

    if-nez v0, :cond_0

    .line 13
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/util/FeatureUtil;->supportSem()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    new-instance v0, Lcom/samsung/android/app/watchmanager/plugin/selibrary/userhandle/UserHandle;

    invoke-direct {v0}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/userhandle/UserHandle;-><init>()V

    sput-object v0, Lcom/samsung/android/app/watchmanager/plugin/libfactory/userhandle/UserHandleFactory;->mInterface:Lcom/samsung/android/app/watchmanager/plugin/libinterface/userhandle/UserHandleInterface;

    .line 19
    :cond_0
    :goto_0
    sget-object v0, Lcom/samsung/android/app/watchmanager/plugin/libfactory/userhandle/UserHandleFactory;->mInterface:Lcom/samsung/android/app/watchmanager/plugin/libinterface/userhandle/UserHandleInterface;

    return-object v0

    .line 16
    :cond_1
    new-instance v0, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/userhandle/UserHandle;

    invoke-direct {v0}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/userhandle/UserHandle;-><init>()V

    sput-object v0, Lcom/samsung/android/app/watchmanager/plugin/libfactory/userhandle/UserHandleFactory;->mInterface:Lcom/samsung/android/app/watchmanager/plugin/libinterface/userhandle/UserHandleInterface;

    goto :goto_0
.end method
