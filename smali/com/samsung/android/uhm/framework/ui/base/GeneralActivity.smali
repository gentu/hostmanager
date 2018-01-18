.class public Lcom/samsung/android/uhm/framework/ui/base/GeneralActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "GeneralActivity.java"

# interfaces
.implements Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper$ActionBarListener;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field protected isSaveInstanceState:Z

.field protected mActionBarButtonSelectorId:I

.field private mActionBarHelper:Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/samsung/android/uhm/framework/ui/base/GeneralActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/uhm/framework/ui/base/GeneralActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 18
    iput-boolean v0, p0, Lcom/samsung/android/uhm/framework/ui/base/GeneralActivity;->isSaveInstanceState:Z

    .line 19
    iput v0, p0, Lcom/samsung/android/uhm/framework/ui/base/GeneralActivity;->mActionBarButtonSelectorId:I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/uhm/framework/ui/base/GeneralActivity;)Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/uhm/framework/ui/base/GeneralActivity;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/GeneralActivity;->mActionBarHelper:Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;

    return-object v0
.end method

.method private pxFromDp(F)F
    .locals 1
    .param p1, "dp"    # F

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/samsung/android/uhm/framework/ui/base/GeneralActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    return v0
.end method


# virtual methods
.method brandGlowEffect()V
    .locals 8

    .prologue
    .line 109
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-gt v4, v5, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/samsung/android/uhm/framework/ui/base/GeneralActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "overscroll_glow"

    const-string v6, "drawable"

    const-string v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 112
    .local v3, "glowDrawableId":I
    invoke-virtual {p0}, Lcom/samsung/android/uhm/framework/ui/base/GeneralActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 113
    .local v1, "androidGlow":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/samsung/android/uhm/framework/ui/base/GeneralActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/samsung/android/uhm/framework/ui/R$color;->boundry_effect_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 115
    invoke-virtual {p0}, Lcom/samsung/android/uhm/framework/ui/base/GeneralActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "overscroll_edge"

    const-string v6, "drawable"

    const-string v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 116
    .local v2, "edgeDrawableId":I
    invoke-virtual {p0}, Lcom/samsung/android/uhm/framework/ui/base/GeneralActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 117
    .local v0, "androidEdge":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/samsung/android/uhm/framework/ui/base/GeneralActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/samsung/android/uhm/framework/ui/R$color;->boundry_effect_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 119
    .end local v0    # "androidEdge":Landroid/graphics/drawable/Drawable;
    .end local v1    # "androidGlow":Landroid/graphics/drawable/Drawable;
    .end local v2    # "edgeDrawableId":I
    .end local v3    # "glowDrawableId":I
    :cond_0
    return-void
.end method

.method public closeScreen()V
    .locals 0

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/samsung/android/uhm/framework/ui/base/GeneralActivity;->finish()V

    .line 89
    return-void
.end method

.method protected customizeActionBar()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public getActionBarHelper()Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/GeneralActivity;->mActionBarHelper:Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 77
    sget-object v1, Lcom/samsung/android/uhm/framework/ui/base/GeneralActivity;->TAG:Ljava/lang/String;

    const-string v2, "onBackPressed starts"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :try_start_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    sget-object v1, Lcom/samsung/android/uhm/framework/ui/base/GeneralActivity;->TAG:Ljava/lang/String;

    const-string v2, "onBackPressed ends"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    sget-object v1, Lcom/samsung/android/uhm/framework/ui/base/GeneralActivity;->TAG:Ljava/lang/String;

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-virtual {p0}, Lcom/samsung/android/uhm/framework/ui/base/GeneralActivity;->brandGlowEffect()V

    .line 26
    sget v1, Lcom/samsung/android/uhm/framework/ui/R$layout;->general_layout:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/uhm/framework/ui/base/GeneralActivity;->setContentView(I)V

    .line 27
    new-instance v1, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;

    invoke-direct {v1, p0}, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/GeneralActivity;->mActionBarHelper:Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;

    .line 29
    iget v1, p0, Lcom/samsung/android/uhm/framework/ui/base/GeneralActivity;->mActionBarButtonSelectorId:I

    if-eqz v1, :cond_0

    .line 30
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/GeneralActivity;->mActionBarHelper:Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;

    iget v2, p0, Lcom/samsung/android/uhm/framework/ui/base/GeneralActivity;->mActionBarButtonSelectorId:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->setActionBarButtonSelectorId(I)V

    .line 33
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/GeneralActivity;->mActionBarHelper:Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;

    invoke-virtual {v1}, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->createActionBar()V

    .line 34
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/GeneralActivity;->mActionBarHelper:Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;

    sget v2, Lcom/samsung/android/uhm/framework/ui/R$drawable;->manager_ic_ab_back:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->setActionBarUpButton(I)V

    .line 35
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/GeneralActivity;->mActionBarHelper:Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->setActionBarListener(Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper$ActionBarListener;Z)V

    .line 37
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/GeneralActivity;->mActionBarHelper:Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;

    invoke-virtual {v1}, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->getActionBarAnimator()Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarAnimator;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 38
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/GeneralActivity;->mActionBarHelper:Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;

    invoke-virtual {v1}, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->getActionBarAnimator()Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/samsung/android/uhm/framework/ui/base/GeneralActivity;->pxFromDp(F)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarAnimator;->updateViewToMove(I)V

    .line 41
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/uhm/framework/ui/base/GeneralActivity;->customizeActionBar()V

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 44
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/samsung/android/uhm/framework/ui/base/GeneralActivity$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/uhm/framework/ui/base/GeneralActivity$1;-><init>(Lcom/samsung/android/uhm/framework/ui/base/GeneralActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 51
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/uhm/framework/ui/base/GeneralActivity;->isSaveInstanceState:Z

    .line 106
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/uhm/framework/ui/base/GeneralActivity;->isSaveInstanceState:Z

    .line 100
    return-void
.end method

.method public showFragment(Lcom/samsung/android/uhm/framework/ui/base/BaseFragment;)V
    .locals 2
    .param p1, "fragmentClass"    # Lcom/samsung/android/uhm/framework/ui/base/BaseFragment;

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/samsung/android/uhm/framework/ui/base/GeneralActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 55
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    sget v1, Lcom/samsung/android/uhm/framework/ui/R$id;->general_layout:I

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 57
    iget-boolean v1, p0, Lcom/samsung/android/uhm/framework/ui/base/GeneralActivity;->isSaveInstanceState:Z

    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 63
    :goto_0
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 64
    return-void

    .line 60
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method
