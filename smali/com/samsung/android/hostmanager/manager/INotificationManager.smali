.class public interface abstract Lcom/samsung/android/hostmanager/manager/INotificationManager;
.super Ljava/lang/Object;
.source "INotificationManager.java"


# virtual methods
.method public abstract addToList(Ljava/util/ArrayList;Lcom/samsung/android/hostmanager/aidl/NotificationApp;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/NotificationApp;",
            ">;",
            "Lcom/samsung/android/hostmanager/aidl/NotificationApp;",
            ")V"
        }
    .end annotation
.end method

.method public abstract checkNormalNotification(Ljava/util/ArrayList;Lcom/samsung/android/hostmanager/aidl/NotificationApp;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/NotificationApp;",
            ">;",
            "Lcom/samsung/android/hostmanager/aidl/NotificationApp;",
            "Z)Z"
        }
    .end annotation
.end method

.method public abstract destroy()V
.end method

.method public abstract getAlertNotiAppList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/NotificationApp;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDefaultSet(Ljava/lang/String;)Z
.end method

.method public abstract getMoreNotiAppList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/NotificationApp;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNormalNotiAppList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/NotificationApp;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNotificationSettings()Lcom/samsung/android/hostmanager/aidl/NotificationSettings;
.end method

.method public abstract getPackageNameByAppId(ILandroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract isExistAndMarked(Ljava/lang/String;I)Lcom/samsung/android/hostmanager/aidl/NotificationApp;
.end method

.method public abstract isInitialized()Z
.end method

.method public abstract isListCreated()Z
.end method

.method public abstract markAll(Z)V
.end method

.method public abstract reset(Landroid/content/Context;)V
.end method

.method public abstract restore()V
.end method

.method public abstract setAlertNotificationsAppList(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/NotificationApp;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setAppMarked(Ljava/lang/String;Z)V
.end method

.method public abstract setMoreNotificationsAppList(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/NotificationApp;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setNormalNotificationsAppList(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/NotificationApp;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setNotificationSettings(Lcom/samsung/android/hostmanager/aidl/NotificationSettings;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract updateAppName(Landroid/content/Context;)V
.end method
