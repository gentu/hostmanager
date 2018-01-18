.class public Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/userhandle/UserHandle;
.super Ljava/lang/Object;
.source "UserHandle.java"

# interfaces
.implements Lcom/samsung/android/app/watchmanager/plugin/libinterface/userhandle/UserHandleInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public current()Landroid/os/UserHandle;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    return-object v0
.end method

.method public getIdentifier(Landroid/os/UserHandle;)I
    .locals 2
    .param p1, "curHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 26
    const-string v0, "UserHandle"

    const-string v1, "libsdl getIdentifier"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    const-string v0, "getIdentifier"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/ReflectUtil;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public myId()I
    .locals 1

    .prologue
    .line 11
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    return v0
.end method

.method public owner()Landroid/os/UserHandle;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    return-object v0
.end method
