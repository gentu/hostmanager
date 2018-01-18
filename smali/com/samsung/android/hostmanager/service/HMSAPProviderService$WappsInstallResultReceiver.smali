.class public interface abstract Lcom/samsung/android/hostmanager/service/HMSAPProviderService$WappsInstallResultReceiver;
.super Ljava/lang/Object;
.source "HMSAPProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/service/HMSAPProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WappsInstallResultReceiver"
.end annotation


# virtual methods
.method public abstract onWappsInstallFailed(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onWappsInstallResultReceived(ZLcom/samsung/android/hostmanager/br/WatchAppsInfo;)V
.end method
