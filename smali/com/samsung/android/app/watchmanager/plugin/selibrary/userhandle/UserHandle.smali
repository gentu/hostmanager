.class public Lcom/samsung/android/app/watchmanager/plugin/selibrary/userhandle/UserHandle;
.super Ljava/lang/Object;
.source "UserHandle.java"

# interfaces
.implements Lcom/samsung/android/app/watchmanager/plugin/libinterface/userhandle/UserHandleInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public current()Landroid/os/UserHandle;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Landroid/os/UserHandle;->SEM_CURRENT:Landroid/os/UserHandle;

    return-object v0
.end method

.method public getIdentifier(Landroid/os/UserHandle;)I
    .locals 3
    .param p1, "curHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 31
    const-string v1, "semGetIdentifier"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/ReflectUtil;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 32
    .local v0, "retObj":Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    .end local v0    # "retObj":Ljava/lang/Object;
    :goto_0
    return v1

    .restart local v0    # "retObj":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "retObj":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public myId()I
    .locals 1

    .prologue
    .line 13
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v0

    return v0
.end method

.method public owner()Landroid/os/UserHandle;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Landroid/os/UserHandle;->SEM_OWNER:Landroid/os/UserHandle;

    return-object v0
.end method
