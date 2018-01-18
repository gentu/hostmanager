.class Lcom/samsung/android/hostmanager/pm/GearPackageManager$2$1;
.super Ljava/lang/Object;
.source "GearPackageManager.java"

# interfaces
.implements Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/OnstatusReturned;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/pm/GearPackageManager$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/hostmanager/pm/GearPackageManager$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/pm/GearPackageManager$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/hostmanager/pm/GearPackageManager$2;

    .prologue
    .line 4686
    iput-object p1, p0, Lcom/samsung/android/hostmanager/pm/GearPackageManager$2$1;->this$1:Lcom/samsung/android/hostmanager/pm/GearPackageManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "returnCode"    # I

    .prologue
    .line 4690
    return-void
.end method

.method public packageUninstalled(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I

    .prologue
    .line 4694
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 4695
    invoke-static {}, Lcom/samsung/android/hostmanager/pm/GearPackageManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "provider apk uninstalled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4699
    :goto_0
    return-void

    .line 4697
    :cond_0
    invoke-static {}, Lcom/samsung/android/hostmanager/pm/GearPackageManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "provider apk uninstalled failed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
