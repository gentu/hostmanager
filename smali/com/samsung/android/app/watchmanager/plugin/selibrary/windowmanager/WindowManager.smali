.class public Lcom/samsung/android/app/watchmanager/plugin/selibrary/windowmanager/WindowManager;
.super Ljava/lang/Object;
.source "WindowManager.java"

# interfaces
.implements Lcom/samsung/android/app/watchmanager/plugin/libinterface/windowmanager/IWindowManagerInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismissKeyguard()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "dismissKeyguard"

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/util/ExceptionUtil;->throwException(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public dismissKeyguard(Landroid/app/KeyguardManager;)V
    .locals 2
    .param p1, "km"    # Landroid/app/KeyguardManager;

    .prologue
    .line 23
    const-string v0, "WindowManager"

    const-string v1, "libse dismissKeyguard"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    const-string v0, "semDismissKeyguard"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/ReflectUtil;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    return-void
.end method

.method public enableStatusBarOpenByNotification(Landroid/view/Window;)V
    .locals 0
    .param p1, "_window"    # Landroid/view/Window;

    .prologue
    .line 42
    return-void
.end method

.method public isCoverOpen()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public isSystemKeyEventRequested(Landroid/app/Activity;I)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "keyCode"    # I

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public requestSystemKeyEvent(Landroid/app/Activity;IZ)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "keyCode"    # I
    .param p3, "request"    # Z

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method
