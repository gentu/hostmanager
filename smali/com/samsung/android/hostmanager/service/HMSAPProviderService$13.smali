.class Lcom/samsung/android/hostmanager/service/HMSAPProviderService$13;
.super Ljava/lang/Thread;
.source "HMSAPProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->removeProviderApp(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

.field final synthetic val$hPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    .prologue
    .line 12369
    iput-object p1, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$13;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    iput-object p2, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$13;->val$hPackageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 12373
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$13;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/pm/PackageInstallerFactory;->get(Landroid/content/Context;)Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/PackageInstallerInterface;

    move-result-object v1

    .line 12374
    .local v1, "packageController":Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/PackageInstallerInterface;
    new-instance v2, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$13$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$13$1;-><init>(Lcom/samsung/android/hostmanager/service/HMSAPProviderService$13;)V

    invoke-interface {v1, v2}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/PackageInstallerInterface;->SetOnStatusReturned(Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/OnstatusReturned;)V

    .line 12389
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$13;->val$hPackageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/PackageInstallerInterface;->uninstallPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4

    .line 12401
    .end local v1    # "packageController":Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/PackageInstallerInterface;
    :goto_0
    return-void

    .line 12390
    :catch_0
    move-exception v0

    .line 12391
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 12392
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 12393
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 12394
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 12395
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 12396
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 12397
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 12398
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_4
    move-exception v0

    .line 12399
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0
.end method
