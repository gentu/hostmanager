.class Lcom/samsung/android/uhm/framework/ui/base/BaseActivity$7;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;
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
    .line 408
    iput-object p1, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity$7;->this$0:Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 414
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v2, "ungSpinner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "spinnerItem is clicked = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity$7;->this$0:Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;

    invoke-static {v1}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->access$500(Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/uhm/framework/ui/drawermenu/SpinnerMenuItem;

    invoke-virtual {v1}, Lcom/samsung/android/uhm/framework/ui/drawermenu/SpinnerMenuItem;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity$7;->this$0:Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;

    invoke-virtual {v2}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/uhm/framework/ui/R$color;->regular_text_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 417
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity$7;->this$0:Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;

    invoke-static {v1, p3}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->access$600(Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    :goto_0
    return-void

    .line 418
    :catch_0
    move-exception v0

    .line 419
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 427
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
