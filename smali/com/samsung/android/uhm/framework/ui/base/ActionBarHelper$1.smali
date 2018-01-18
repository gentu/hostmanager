.class Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper$1;
.super Ljava/lang/Object;
.source "ActionBarHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper$1;->this$0:Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper$1;->this$0:Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;

    invoke-virtual {v0}, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->setOriginTitleClick()V

    .line 87
    return-void
.end method
