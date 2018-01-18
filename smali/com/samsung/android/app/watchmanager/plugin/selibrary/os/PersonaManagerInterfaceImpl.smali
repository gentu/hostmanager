.class public Lcom/samsung/android/app/watchmanager/plugin/selibrary/os/PersonaManagerInterfaceImpl;
.super Ljava/lang/Object;
.source "PersonaManagerInterfaceImpl.java"

# interfaces
.implements Lcom/samsung/android/app/watchmanager/plugin/libinterface/os/PersonaManagerInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPersonaName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "user"    # I

    .prologue
    .line 17
    const/4 v1, 0x0

    .line 18
    .local v1, "retObj":Ljava/lang/Object;
    const-string v2, "com.samsung.android.knox.SemPersonaManager"

    invoke-static {v2}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/ReflectUtil;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 19
    .local v0, "personaManager":Ljava/lang/Class;
    if-eqz v0, :cond_0

    .line 20
    const-string v2, "getPersonaName"

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

    .line 22
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
