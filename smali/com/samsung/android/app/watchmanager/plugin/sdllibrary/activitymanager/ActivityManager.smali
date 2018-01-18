.class public Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/activitymanager/ActivityManager;
.super Ljava/lang/Object;
.source "ActivityManager.java"

# interfaces
.implements Lcom/samsung/android/app/watchmanager/plugin/libinterface/activitymanager/ActivityManagerInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isActivityResumed(Landroid/app/Activity;)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 21
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeTask(Landroid/app/ActivityManager;II)Z
    .locals 2
    .param p1, "am"    # Landroid/app/ActivityManager;
    .param p2, "taskId"    # I
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 10
    const/4 v1, 0x0

    .line 12
    .local v1, "result":Z
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/app/ActivityManager;->removeTask(II)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 16
    :goto_0
    return v1

    .line 13
    :catch_0
    move-exception v0

    .line 14
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_0
.end method
