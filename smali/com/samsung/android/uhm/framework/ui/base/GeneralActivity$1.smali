.class Lcom/samsung/android/uhm/framework/ui/base/GeneralActivity$1;
.super Ljava/lang/Object;
.source "GeneralActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/uhm/framework/ui/base/GeneralActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/uhm/framework/ui/base/GeneralActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/uhm/framework/ui/base/GeneralActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/uhm/framework/ui/base/GeneralActivity;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/samsung/android/uhm/framework/ui/base/GeneralActivity$1;->this$0:Lcom/samsung/android/uhm/framework/ui/base/GeneralActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 46
    const-string v0, "GeneralActivity"

    const-string v1, "action::postDelayed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/GeneralActivity$1;->this$0:Lcom/samsung/android/uhm/framework/ui/base/GeneralActivity;

    invoke-static {v0}, Lcom/samsung/android/uhm/framework/ui/base/GeneralActivity;->access$000(Lcom/samsung/android/uhm/framework/ui/base/GeneralActivity;)Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/GeneralActivity$1;->this$0:Lcom/samsung/android/uhm/framework/ui/base/GeneralActivity;

    invoke-static {v0}, Lcom/samsung/android/uhm/framework/ui/base/GeneralActivity;->access$000(Lcom/samsung/android/uhm/framework/ui/base/GeneralActivity;)Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->setActionBarTitleRightPadding()V

    .line 50
    :cond_0
    return-void
.end method
