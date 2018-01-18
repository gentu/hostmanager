.class public Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/sim/MultiSimManagerUnderL;
.super Ljava/lang/Object;
.source "MultiSimManagerUnderL.java"

# interfaces
.implements Lcom/samsung/android/app/watchmanager/plugin/libinterface/sim/MultiSimManagerInterface;


# static fields
.field private static sMultiSimManagerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sMultiSimTelephonyManagerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    :try_start_0
    const-string v1, "com.android.internal.telephony.MultiSimManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/sim/MultiSimManagerUnderL;->sMultiSimManagerClass:Ljava/lang/Class;

    .line 20
    const-string v1, "android.telephony.MultiSimTelephonyManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/sim/MultiSimManagerUnderL;->sMultiSimTelephonyManagerClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    return-void

    .line 21
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_0
    move-exception v0

    .line 22
    .restart local v0    # "e":Ljava/lang/ClassNotFoundException;
    const-string v1, "GM/MultiSimManager"

    const-string v2, "MultiSimManager init failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 258
    .local p1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/sim/MultiSimManagerUnderL;->sMultiSimManagerClass:Ljava/lang/Class;

    invoke-virtual {v1, p0, p1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 260
    :goto_0
    return-object v1

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static varargs getTelephonyMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 274
    .local p1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/sim/MultiSimManagerUnderL;->sMultiSimTelephonyManagerClass:Ljava/lang/Class;

    invoke-virtual {v1, p0, p1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 276
    :goto_0
    return-object v1

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static varargs invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "defaultResult"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 266
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/sim/MultiSimManagerUnderL;->sMultiSimManagerClass:Ljava/lang/Class;

    invoke-virtual {p0, v1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p1

    .line 268
    .end local p1    # "defaultResult":Ljava/lang/Object;
    :goto_0
    return-object p1

    .line 267
    .restart local p1    # "defaultResult":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    goto :goto_0

    .line 267
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static varargs invokeTelephony(Ljava/lang/reflect/Method;Ljava/lang/Object;I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "defaultResult"    # Ljava/lang/Object;
    .param p2, "slotId"    # I
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 281
    const-string v3, "getDefault"

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/sim/MultiSimManagerUnderL;->getTelephonyMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 282
    .local v2, "getDefault":Ljava/lang/reflect/Method;
    if-nez v2, :cond_1

    .line 300
    .end local p1    # "defaultResult":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object p1

    .line 286
    .restart local p1    # "defaultResult":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    .line 288
    .local v0, "defaultTelephony":Ljava/lang/Object;
    :try_start_0
    sget-object v3, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/sim/MultiSimManagerUnderL;->sMultiSimTelephonyManagerClass:Ljava/lang/Class;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 293
    if-eqz v0, :cond_0

    .line 298
    :try_start_1
    invoke-virtual {p0, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object p1

    goto :goto_0

    .line 289
    :catch_0
    move-exception v1

    .line 290
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    goto :goto_0

    .line 299
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v1

    .line 300
    .restart local v1    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_2
    goto :goto_0

    .line 299
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_2
    move-exception v1

    goto :goto_2

    .line 289
    :catch_3
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public SIMSLOT1()I
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public SIMSLOT1(Landroid/telephony/SubscriptionManager;I)I
    .locals 1
    .param p1, "sm"    # Landroid/telephony/SubscriptionManager;
    .param p2, "simId"    # I

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public SIMSLOT2()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public SIMSLOT2(Landroid/telephony/SubscriptionManager;I)I
    .locals 1
    .param p1, "sm"    # Landroid/telephony/SubscriptionManager;
    .param p2, "simId"    # I

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public TYPE_DATA()I
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "TYPE_DATA"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public TYPE_DEFAULT()I
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "TYPE_DEFAULT"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public TYPE_SMS()I
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "TYPE_SMS"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public TYPE_VOICE()I
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "TYPE_VOICE"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCallState(I)I
    .locals 5
    .param p1, "slot"    # I

    .prologue
    const/4 v2, 0x0

    .line 123
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 124
    .local v1, "result":Ljava/lang/Integer;
    const-string v3, "getCallState"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-static {v3, v4}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/sim/MultiSimManagerUnderL;->getTelephonyMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 125
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 126
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, p1, v4}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/sim/MultiSimManagerUnderL;->invokeTelephony(Ljava/lang/reflect/Method;Ljava/lang/Object;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "result":Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .line 128
    .restart local v1    # "result":Ljava/lang/Integer;
    :cond_0
    if-nez v1, :cond_1

    :goto_0
    return v2

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0
.end method

.method public getCallState(Landroid/telephony/TelephonyManager;I)I
    .locals 1
    .param p1, "tm"    # Landroid/telephony/TelephonyManager;
    .param p2, "slot"    # I

    .prologue
    .line 133
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/sim/MultiSimManagerUnderL;->getCallState(I)I

    move-result v0

    return v0
.end method

.method public getCurrentPhoneType(I)I
    .locals 5
    .param p1, "slot"    # I

    .prologue
    const/4 v2, 0x0

    .line 78
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 79
    .local v1, "result":Ljava/lang/Integer;
    const-string v3, "getCurrentPhoneType"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-static {v3, v4}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/sim/MultiSimManagerUnderL;->getTelephonyMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 80
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 81
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, p1, v4}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/sim/MultiSimManagerUnderL;->invokeTelephony(Ljava/lang/reflect/Method;Ljava/lang/Object;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "result":Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .line 83
    .restart local v1    # "result":Ljava/lang/Integer;
    :cond_0
    if-nez v1, :cond_1

    :goto_0
    return v2

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0
.end method

.method public getCurrentPhoneType(Landroid/telephony/TelephonyManager;I)I
    .locals 1
    .param p1, "tm"    # Landroid/telephony/TelephonyManager;
    .param p2, "slot"    # I

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public getDataState(Landroid/telephony/TelephonyManager;I)I
    .locals 5
    .param p1, "tm"    # Landroid/telephony/TelephonyManager;
    .param p2, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 174
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 175
    .local v1, "result":Ljava/lang/Integer;
    const-string v3, "getCallState"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-static {v3, v4}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/sim/MultiSimManagerUnderL;->getTelephonyMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 176
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 177
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, p2, v4}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/sim/MultiSimManagerUnderL;->invokeTelephony(Ljava/lang/reflect/Method;Ljava/lang/Object;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "result":Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .line 179
    .restart local v1    # "result":Ljava/lang/Integer;
    :cond_0
    if-nez v1, :cond_1

    :goto_0
    return v2

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0
.end method

.method public getDefaultSubscriptionId(I)I
    .locals 5
    .param p1, "type"    # I

    .prologue
    const/4 v4, 0x0

    .line 184
    const-string v1, "getDefaultSubId"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/sim/MultiSimManagerUnderL;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 185
    .local v0, "method":Ljava/lang/reflect/Method;
    if-nez v0, :cond_0

    .line 186
    const/4 v1, -0x1

    .line 188
    :goto_0
    return v1

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/sim/MultiSimManagerUnderL;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getInsertedSimNum(Landroid/telephony/SubscriptionManager;)I
    .locals 5
    .param p1, "sm"    # Landroid/telephony/SubscriptionManager;

    .prologue
    const/4 v2, 0x0

    .line 213
    const/4 v1, 0x0

    .line 214
    .local v1, "result":Ljava/lang/Integer;
    const-string v3, "getInsertedSimNum"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-static {v3, v4}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/sim/MultiSimManagerUnderL;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 215
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 216
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/sim/MultiSimManagerUnderL;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "result":Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .line 218
    .restart local v1    # "result":Ljava/lang/Integer;
    :cond_0
    if-nez v1, :cond_1

    :goto_0
    return v2

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0
.end method

.method public getLine1Number(I)Ljava/lang/String;
    .locals 5
    .param p1, "slot"    # I

    .prologue
    const/4 v4, 0x0

    .line 93
    const/4 v1, 0x0

    .line 94
    .local v1, "result":Ljava/lang/String;
    const-string v2, "getLine1Number"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-static {v2, v3}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/sim/MultiSimManagerUnderL;->getTelephonyMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 95
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 96
    const/4 v2, 0x0

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, p1, v3}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/sim/MultiSimManagerUnderL;->invokeTelephony(Ljava/lang/reflect/Method;Ljava/lang/Object;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "result":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 98
    .restart local v1    # "result":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public getLine1Number(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;
    .locals 1
    .param p1, "tm"    # Landroid/telephony/TelephonyManager;
    .param p2, "slot"    # I

    .prologue
    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSimOperator(I)Ljava/lang/String;
    .locals 5
    .param p1, "slot"    # I

    .prologue
    const/4 v4, 0x0

    .line 148
    const-string v1, ""

    .line 149
    .local v1, "result":Ljava/lang/String;
    const-string v2, "getLine1Number"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-static {v2, v3}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/sim/MultiSimManagerUnderL;->getTelephonyMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 150
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 151
    const-string v2, ""

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, p1, v3}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/sim/MultiSimManagerUnderL;->invokeTelephony(Ljava/lang/reflect/Method;Ljava/lang/Object;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "result":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 153
    .restart local v1    # "result":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public getSimOperator(Landroid/telephony/SubscriptionManager;I)Ljava/lang/String;
    .locals 5
    .param p1, "sm"    # Landroid/telephony/SubscriptionManager;
    .param p2, "slot"    # I

    .prologue
    const/4 v4, 0x0

    .line 159
    const-string v1, ""

    .line 160
    .local v1, "result":Ljava/lang/String;
    const-string v2, "getLine1Number"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-static {v2, v3}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/sim/MultiSimManagerUnderL;->getTelephonyMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 161
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 162
    const-string v2, ""

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, p2, v3}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/sim/MultiSimManagerUnderL;->invokeTelephony(Ljava/lang/reflect/Method;Ljava/lang/Object;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "result":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 164
    .restart local v1    # "result":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public getSimSlotCount(Landroid/telephony/TelephonyManager;)I
    .locals 5
    .param p1, "tm"    # Landroid/telephony/TelephonyManager;

    .prologue
    const/4 v2, 0x0

    .line 203
    const/4 v1, 0x0

    .line 204
    .local v1, "result":Ljava/lang/Integer;
    const-string v3, "getSimSlotCount"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-static {v3, v4}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/sim/MultiSimManagerUnderL;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 205
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 206
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/sim/MultiSimManagerUnderL;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "result":Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .line 208
    .restart local v1    # "result":Ljava/lang/Integer;
    :cond_0
    if-nez v1, :cond_1

    :goto_0
    return v2

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0
.end method

.method public getSimState(Landroid/telephony/TelephonyManager;I)I
    .locals 5
    .param p1, "tm"    # Landroid/telephony/TelephonyManager;
    .param p2, "slot"    # I

    .prologue
    const/4 v2, 0x0

    .line 138
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 139
    .local v1, "result":Ljava/lang/Integer;
    const-string v3, "getCallState"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-static {v3, v4}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/sim/MultiSimManagerUnderL;->getTelephonyMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 140
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 141
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, p2, v4}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/sim/MultiSimManagerUnderL;->invokeTelephony(Ljava/lang/reflect/Method;Ljava/lang/Object;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "result":Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .line 143
    .restart local v1    # "result":Ljava/lang/Integer;
    :cond_0
    if-nez v1, :cond_1

    :goto_0
    return v2

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0
.end method

.method public getSlotId(I)I
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 169
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getSlotId"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSubscriberId(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;
    .locals 5
    .param p1, "tm"    # Landroid/telephony/TelephonyManager;
    .param p2, "slotId"    # I

    .prologue
    const/4 v4, 0x0

    .line 233
    const/4 v1, 0x0

    .line 234
    .local v1, "result":Ljava/lang/String;
    const-string v2, "getSubscriberId"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-static {v2, v3}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/sim/MultiSimManagerUnderL;->getTelephonyMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 235
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 236
    const/4 v2, 0x0

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, p2, v3}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/sim/MultiSimManagerUnderL;->invokeTelephony(Ljava/lang/reflect/Method;Ljava/lang/Object;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "result":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 238
    .restart local v1    # "result":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public getSubscriptionId(Landroid/telephony/SubscriptionManager;I)[I
    .locals 1
    .param p1, "sm"    # Landroid/telephony/SubscriptionManager;
    .param p2, "slotId"    # I

    .prologue
    .line 253
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public getSubscriptionManager(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "slotId"    # I
    .param p3, "defaultVal"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 243
    move-object v1, p3

    .line 244
    .local v1, "result":Ljava/lang/String;
    const-string v2, "getTelephonyProperty"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-static {v2, v3}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/sim/MultiSimManagerUnderL;->getTelephonyMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 245
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 246
    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, p3, p2, v2}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/sim/MultiSimManagerUnderL;->invokeTelephony(Ljava/lang/reflect/Method;Ljava/lang/Object;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "result":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 248
    .restart local v1    # "result":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public hasIccCard(Landroid/telephony/TelephonyManager;I)Z
    .locals 5
    .param p1, "tm"    # Landroid/telephony/TelephonyManager;
    .param p2, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 223
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 224
    .local v1, "result":Ljava/lang/Boolean;
    const-string v3, "hasIccCard"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-static {v3, v4}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/sim/MultiSimManagerUnderL;->getTelephonyMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 225
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 226
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, p2, v4}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/sim/MultiSimManagerUnderL;->invokeTelephony(Ljava/lang/reflect/Method;Ljava/lang/Object;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "result":Ljava/lang/Boolean;
    check-cast v1, Ljava/lang/Boolean;

    .line 228
    .restart local v1    # "result":Ljava/lang/Boolean;
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public isMultiSimSlot(Landroid/telephony/TelephonyManager;)Z
    .locals 5
    .param p1, "tm"    # Landroid/telephony/TelephonyManager;

    .prologue
    const/4 v2, 0x0

    .line 193
    const/4 v1, 0x0

    .line 194
    .local v1, "result":Ljava/lang/Boolean;
    const-string v3, "isMultiSimSlot"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-static {v3, v4}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/sim/MultiSimManagerUnderL;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 195
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 196
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/sim/MultiSimManagerUnderL;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "result":Ljava/lang/Boolean;
    check-cast v1, Ljava/lang/Boolean;

    .line 198
    .restart local v1    # "result":Ljava/lang/Boolean;
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public isNetworkRoaming(I)Z
    .locals 5
    .param p1, "slot"    # I

    .prologue
    const/4 v2, 0x0

    .line 108
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 109
    .local v1, "result":Ljava/lang/Boolean;
    const-string v3, "isNetworkRoaming"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-static {v3, v4}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/sim/MultiSimManagerUnderL;->getTelephonyMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 110
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 111
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, p1, v4}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/sim/MultiSimManagerUnderL;->invokeTelephony(Ljava/lang/reflect/Method;Ljava/lang/Object;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "result":Ljava/lang/Boolean;
    check-cast v1, Ljava/lang/Boolean;

    .line 113
    .restart local v1    # "result":Ljava/lang/Boolean;
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public isNetworkRoaming(Landroid/telephony/TelephonyManager;I)Z
    .locals 1
    .param p1, "tm"    # Landroid/telephony/TelephonyManager;
    .param p2, "slot"    # I

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method
