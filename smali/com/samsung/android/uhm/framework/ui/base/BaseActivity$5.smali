.class Lcom/samsung/android/uhm/framework/ui/base/BaseActivity$5;
.super Ljava/lang/Thread;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity$5;->this$0:Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 224
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity$5;->this$0:Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;

    invoke-static {v0}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->access$200(Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;)V

    .line 225
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity$5;->this$0:Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;

    invoke-static {v0}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->access$300(Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;)Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity$5;->this$0:Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;

    invoke-virtual {v1}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity$5;->this$0:Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;

    invoke-virtual {v2}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->getNormalAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity$5;->this$0:Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;->updateAppRegistryImageData(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)I

    .line 226
    return-void
.end method
