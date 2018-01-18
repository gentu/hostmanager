.class public interface abstract Lcom/samsung/android/app/watchmanager/plugin/libinterface/activitymanager/ActivityManagerInterface;
.super Ljava/lang/Object;
.source "ActivityManagerInterface.java"


# virtual methods
.method public abstract isActivityResumed(Landroid/app/Activity;)Z
.end method

.method public abstract removeTask(Landroid/app/ActivityManager;II)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method
