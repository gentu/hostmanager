.class Lcom/samsung/android/uhm/framework/ui/base/BaseActivity$2;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->initActivity()V
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
    .line 119
    iput-object p1, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity$2;->this$0:Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 121
    const-string v0, "BaseActivity"

    const-string v1, "action::postDelayed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity$2;->this$0:Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;

    invoke-static {v0}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->access$100(Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;)Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity$2;->this$0:Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;

    invoke-static {v0}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->access$100(Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;)Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->setActionBarTitleRightPadding()V

    .line 125
    :cond_0
    return-void
.end method
