.class Lcom/samsung/android/hostmanager/service/HMSAPProviderService$13$1;
.super Ljava/lang/Object;
.source "HMSAPProviderService.java"

# interfaces
.implements Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/OnstatusReturned;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/service/HMSAPProviderService$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/hostmanager/service/HMSAPProviderService$13;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/service/HMSAPProviderService$13;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/hostmanager/service/HMSAPProviderService$13;

    .prologue
    .line 12374
    iput-object p1, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$13$1;->this$1:Lcom/samsung/android/hostmanager/service/HMSAPProviderService$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "returnCode"    # I

    .prologue
    .line 12378
    return-void
.end method

.method public packageUninstalled(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I

    .prologue
    .line 12382
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 12383
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "provider apk uninstalled."

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12387
    :goto_0
    return-void

    .line 12385
    :cond_0
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "provider apk uninstalled failed."

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
