.class public Lcom/samsung/android/app/watchmanager/plugin/libfactory/sim/MultiSimManagerFactory;
.super Ljava/lang/Object;
.source "MultiSimManagerFactory.java"


# static fields
.field public static final SDK_L:I = 0x15

.field private static final TAG:Ljava/lang/String; = "GM/MultiSimManagerFactory"

.field private static mInterface:Lcom/samsung/android/app/watchmanager/plugin/libinterface/sim/MultiSimManagerInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/app/watchmanager/plugin/libfactory/sim/MultiSimManagerFactory;->mInterface:Lcom/samsung/android/app/watchmanager/plugin/libinterface/sim/MultiSimManagerInterface;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/sim/MultiSimManagerInterface;
    .locals 4

    .prologue
    .line 17
    sget-object v2, Lcom/samsung/android/app/watchmanager/plugin/libfactory/sim/MultiSimManagerFactory;->mInterface:Lcom/samsung/android/app/watchmanager/plugin/libinterface/sim/MultiSimManagerInterface;

    if-nez v2, :cond_0

    .line 18
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/util/FeatureUtil;->supportSem()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 19
    new-instance v2, Lcom/samsung/android/app/watchmanager/plugin/selibrary/sim/MultiSimManager;

    invoke-direct {v2}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/sim/MultiSimManager;-><init>()V

    sput-object v2, Lcom/samsung/android/app/watchmanager/plugin/libfactory/sim/MultiSimManagerFactory;->mInterface:Lcom/samsung/android/app/watchmanager/plugin/libinterface/sim/MultiSimManagerInterface;

    .line 37
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    sget-object v2, Lcom/samsung/android/app/watchmanager/plugin/libfactory/sim/MultiSimManagerFactory;->mInterface:Lcom/samsung/android/app/watchmanager/plugin/libinterface/sim/MultiSimManagerInterface;

    return-object v2

    .line 21
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/sim/MultiSimManagerFactory;->isOverLollipopDevice()Z

    move-result v2

    if-nez v2, :cond_2

    .line 23
    :try_start_0
    const-string v2, "com.android.internal.telephony.MultiSimManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 24
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_2

    .line 25
    new-instance v2, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/sim/MultiSimManagerUnderL;

    invoke-direct {v2}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/sim/MultiSimManagerUnderL;-><init>()V

    sput-object v2, Lcom/samsung/android/app/watchmanager/plugin/libfactory/sim/MultiSimManagerFactory;->mInterface:Lcom/samsung/android/app/watchmanager/plugin/libinterface/sim/MultiSimManagerInterface;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :cond_2
    :goto_1
    sget-object v2, Lcom/samsung/android/app/watchmanager/plugin/libfactory/sim/MultiSimManagerFactory;->mInterface:Lcom/samsung/android/app/watchmanager/plugin/libinterface/sim/MultiSimManagerInterface;

    if-nez v2, :cond_0

    .line 33
    new-instance v2, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/sim/MultiSimManager;

    invoke-direct {v2}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/sim/MultiSimManager;-><init>()V

    sput-object v2, Lcom/samsung/android/app/watchmanager/plugin/libfactory/sim/MultiSimManagerFactory;->mInterface:Lcom/samsung/android/app/watchmanager/plugin/libinterface/sim/MultiSimManagerInterface;

    goto :goto_0

    .line 27
    :catch_0
    move-exception v1

    .line 28
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v2, "GM/MultiSimManagerFactory"

    const-string v3, "com.android.internal.telephony.MultiSimManager not found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static isOverLollipopDevice()Z
    .locals 4

    .prologue
    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, "isOverLollipopDevice":Z
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 43
    const/4 v0, 0x1

    .line 45
    :cond_0
    const-string v1, "GM/MultiSimManagerFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isOverLollipopDevice: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return v0
.end method
