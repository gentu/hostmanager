.class public Lcom/samsung/android/hostmanager/callforward/APIChecker;
.super Ljava/lang/Object;
.source "APIChecker.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/samsung/android/hostmanager/callforward/APIChecker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hostmanager/callforward/APIChecker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTelephonyService2()Ljava/lang/String;
    .locals 5

    .prologue
    .line 15
    const/4 v1, 0x0

    .line 16
    .local v1, "value":Ljava/lang/String;
    const-string v2, "android.content.Context"

    invoke-static {v2}, Lcom/samsung/android/hostmanager/utils/HMMethodReflector;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 17
    .local v0, "sTM2Class":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 18
    const/4 v2, 0x0

    const-string v3, "TELEPHONY_SERVICE_2"

    .line 19
    invoke-static {v0, v2, v3}, Lcom/samsung/android/hostmanager/utils/HMMethodReflector;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "value":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 21
    .restart local v1    # "value":Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/samsung/android/hostmanager/callforward/APIChecker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    return-object v1
.end method

.method public static isMultiSimSlot()Ljava/lang/Boolean;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 26
    sget-object v4, Lcom/samsung/android/hostmanager/callforward/APIChecker;->TAG:Ljava/lang/String;

    const-string v5, "isMultiSimSlot starts"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    const/4 v0, 0x0

    .line 28
    .local v0, "res":Z
    const-string v4, "com.android.internal.telephony.MultiSimManager"

    invoke-static {v4}, Lcom/samsung/android/hostmanager/utils/HMMethodReflector;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 29
    .local v3, "sMultiSimManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v3, :cond_0

    .line 30
    const-string v4, "isMultiSimSlot"

    new-array v5, v6, [Ljava/lang/Class;

    invoke-static {v3, v4, v5}, Lcom/samsung/android/hostmanager/utils/HMMethodReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 31
    .local v1, "sIsMultiSimSlot":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v1, v5}, Lcom/samsung/android/hostmanager/utils/HMMethodReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 32
    .local v2, "sMultiSimDevice":Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 34
    .end local v1    # "sIsMultiSimSlot":Ljava/lang/reflect/Method;
    .end local v2    # "sMultiSimDevice":Ljava/lang/Boolean;
    :cond_0
    sget-object v4, Lcom/samsung/android/hostmanager/callforward/APIChecker;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "result ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4
.end method
