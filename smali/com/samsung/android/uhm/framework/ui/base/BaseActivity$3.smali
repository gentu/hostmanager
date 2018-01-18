.class Lcom/samsung/android/uhm/framework/ui/base/BaseActivity$3;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->addDefaultActionbarButton()V
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
    .line 131
    iput-object p1, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity$3;->this$0:Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 134
    invoke-static {}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "entered by Plug button"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity$3;->this$0:Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;

    invoke-virtual {v0}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->getDeviceStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity$3;->this$0:Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->startNewDeviceActivity(Z)V

    .line 145
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity$3;->this$0:Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->startNewDeviceActivity(Z)V

    goto :goto_0
.end method
