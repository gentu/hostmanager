.class Lcom/samsung/android/uhm/framework/ui/base/BaseFragment$1;
.super Ljava/lang/Object;
.source "BaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/uhm/framework/ui/base/BaseFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/uhm/framework/ui/base/BaseFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/uhm/framework/ui/base/BaseFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/uhm/framework/ui/base/BaseFragment;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseFragment$1;->this$0:Lcom/samsung/android/uhm/framework/ui/base/BaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 46
    invoke-static {}, Lcom/samsung/android/uhm/framework/ui/base/BaseFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "action::postDelayed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseFragment$1;->this$0:Lcom/samsung/android/uhm/framework/ui/base/BaseFragment;

    iget-object v0, v0, Lcom/samsung/android/uhm/framework/ui/base/BaseFragment;->mActionBarHelper:Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseFragment$1;->this$0:Lcom/samsung/android/uhm/framework/ui/base/BaseFragment;

    iget-object v0, v0, Lcom/samsung/android/uhm/framework/ui/base/BaseFragment;->mActionBarHelper:Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;

    invoke-virtual {v0}, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->setActionBarTitleRightPadding()V

    .line 50
    :cond_0
    return-void
.end method
