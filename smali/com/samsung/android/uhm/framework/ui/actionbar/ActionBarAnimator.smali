.class public Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarAnimator;
.super Ljava/lang/Object;
.source "ActionBarAnimator.java"


# instance fields
.field private final MOVE_MAX:I

.field private final MOVE_MIN:I

.field private final MOVE_RANGE:I

.field private TAG:Ljava/lang/String;

.field private mBackButton:Landroid/view/View;

.field private mButtonsContainer:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mMoveLp:Landroid/widget/LinearLayout$LayoutParams;

.field private mSwitchContainer:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hideView"    # Landroid/view/View;
    .param p3, "hideSwitchView"    # Landroid/view/View;
    .param p4, "moveView"    # Landroid/view/View;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-class v0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarAnimator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarAnimator;->TAG:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarAnimator;->mContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarAnimator;->mButtonsContainer:Landroid/view/View;

    .line 31
    iput-object p3, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarAnimator;->mSwitchContainer:Landroid/view/View;

    .line 32
    iput-object p4, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarAnimator;->mBackButton:Landroid/view/View;

    .line 34
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/uhm/framework/ui/R$dimen;->action_bar_back_button_move_animation_range:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarAnimator;->MOVE_RANGE:I

    .line 36
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/uhm/framework/ui/R$dimen;->action_bar_back_button_margin_left:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarAnimator;->MOVE_MAX:I

    .line 38
    iget v0, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarAnimator;->MOVE_MAX:I

    iget v1, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarAnimator;->MOVE_RANGE:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarAnimator;->MOVE_MIN:I

    .line 40
    if-eqz p4, :cond_0

    .line 41
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarAnimator;->mBackButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v0, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarAnimator;->mMoveLp:Landroid/widget/LinearLayout$LayoutParams;

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarAnimator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MOVE_RANGE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarAnimator;->MOVE_RANGE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " MOVE_MAX : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarAnimator;->MOVE_MAX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " MOVE_MIN : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarAnimator;->MOVE_MIN:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-void
.end method

.method private changeViewVisibility(Landroid/view/View;F)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 63
    if-eqz p1, :cond_0

    .line 64
    sub-float v0, v1, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 65
    cmpl-float v0, p2, v1

    if-nez v0, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 67
    :cond_0
    return-void

    .line 65
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public animateActionBar(F)V
    .locals 5
    .param p1, "value"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 55
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarAnimator;->mButtonsContainer:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarAnimator;->changeViewVisibility(Landroid/view/View;F)V

    .line 56
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarAnimator;->mSwitchContainer:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarAnimator;->changeViewVisibility(Landroid/view/View;F)V

    .line 57
    iget v0, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarAnimator;->MOVE_MIN:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarAnimator;->MOVE_RANGE:I

    int-to-float v1, v1

    sub-float v2, v4, p1

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarAnimator;->updateViewToMove(I)V

    .line 59
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarAnimator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateViewToMove = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarAnimator;->MOVE_MIN:I

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarAnimator;->MOVE_RANGE:I

    int-to-float v3, v3

    sub-float/2addr v4, p1

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void
.end method

.method public updateViewToMove(I)V
    .locals 1
    .param p1, "leftMargin"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarAnimator;->mBackButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarAnimator;->mMoveLp:Landroid/widget/LinearLayout$LayoutParams;

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 72
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarAnimator;->mBackButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 74
    :cond_0
    return-void
.end method
