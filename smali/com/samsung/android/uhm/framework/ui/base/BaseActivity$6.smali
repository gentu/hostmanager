.class Lcom/samsung/android/uhm/framework/ui/base/BaseActivity$6;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->setDeviceId(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;

.field final synthetic val$deviceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity$6;->this$0:Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;

    iput-object p2, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity$6;->val$deviceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 295
    invoke-static {}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setDeviceId with delay"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity$6;->this$0:Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;

    invoke-static {v0}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->access$300(Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;)Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity$6;->val$deviceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity$6;->this$0:Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;->updateDeviceLastLaunchRegistryData(Ljava/lang/String;Landroid/content/Context;)I

    .line 298
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity$6;->this$0:Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->access$400(Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;Z)V

    .line 299
    return-void
.end method
