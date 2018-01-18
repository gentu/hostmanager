.class public Lcom/samsung/android/app/watchmanager/plugin/selibrary/systemproperty/AndroidSystemProperties;
.super Ljava/lang/Object;
.source "AndroidSystemProperties.java"

# interfaces
.implements Lcom/samsung/android/app/watchmanager/plugin/libinterface/systemproperty/AndroidSystemInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "property"    # Ljava/lang/String;

    .prologue
    .line 12
    const/4 v1, 0x0

    .line 13
    .local v1, "retObj":Ljava/lang/Object;
    const-string v2, "android.os.SemSystemProperties"

    invoke-static {v2}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/ReflectUtil;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 14
    .local v0, "SemSystemProperties":Ljava/lang/Class;
    if-eqz v0, :cond_0

    .line 15
    const-string v2, "get"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/ReflectUtil;->callMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 17
    .end local v1    # "retObj":Ljava/lang/Object;
    :cond_0
    if-nez v1, :cond_1

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_1
    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 22
    const/4 v1, 0x0

    .line 23
    .local v1, "retObj":Ljava/lang/Object;
    const-string v2, "android.os.SemSystemProperties"

    invoke-static {v2}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/ReflectUtil;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 24
    .local v0, "SemSystemProperties":Ljava/lang/Class;
    if-eqz v0, :cond_0

    .line 25
    const-string v2, "get"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/ReflectUtil;->callMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 27
    .end local v1    # "retObj":Ljava/lang/Object;
    :cond_0
    if-nez v1, :cond_1

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_1
    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 6
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 32
    const/4 v1, 0x0

    .line 33
    .local v1, "retObj":Ljava/lang/Object;
    const-string v2, "android.os.SemSystemProperties"

    invoke-static {v2}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/ReflectUtil;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 34
    .local v0, "SemSystemProperties":Ljava/lang/Class;
    if-eqz v0, :cond_0

    .line 35
    const-string v2, "getInt"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/ReflectUtil;->callMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 37
    .end local v1    # "retObj":Ljava/lang/Object;
    :cond_0
    if-nez v1, :cond_1

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_1
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0
.end method

.method public isVoiceCapable(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 43
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    return v1
.end method
