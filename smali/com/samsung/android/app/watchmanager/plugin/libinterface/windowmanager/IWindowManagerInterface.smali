.class public interface abstract Lcom/samsung/android/app/watchmanager/plugin/libinterface/windowmanager/IWindowManagerInterface;
.super Ljava/lang/Object;
.source "IWindowManagerInterface.java"


# virtual methods
.method public abstract dismissKeyguard()V
.end method

.method public abstract dismissKeyguard(Landroid/app/KeyguardManager;)V
.end method

.method public abstract enableStatusBarOpenByNotification(Landroid/view/Window;)V
.end method

.method public abstract isCoverOpen()Z
.end method

.method public abstract isSystemKeyEventRequested(Landroid/app/Activity;I)Z
.end method

.method public abstract requestSystemKeyEvent(Landroid/app/Activity;IZ)Z
.end method
