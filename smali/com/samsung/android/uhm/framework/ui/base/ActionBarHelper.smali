.class public Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;
.super Ljava/lang/Object;
.source "ActionBarHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper$ActionBarListener;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final ACTIONBAR_BUTTON_MARGIN:I

.field private final ACTIONBAR_BUTTON_WIDTH:I

.field private final ACTIONBAR_DIVIDER_HEIGHT:I

.field private final ACTIONBAR_DIVIDER_WIDTH:I

.field private mActionBar:Landroid/app/ActionBar;

.field private mActionBarAnimator:Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarAnimator;

.field private mActionBarButtonContainer:Landroid/widget/LinearLayout;

.field private mActionBarButtonSelectorId:I

.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarListener:Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper$ActionBarListener;

.field private mActionBarSwitchContainer:Landroid/widget/LinearLayout;

.field private mButtonLayout:Landroid/widget/RelativeLayout;

.field private mContext:Landroid/content/Context;

.field private mDisableDefaultButton:Z

.field private mDividerSet:Z

.field private mIsDrawMenuOpen:Z

.field private mIsDrwaMenuEnabled:Z

.field mOnClickListener:Landroid/view/View$OnClickListener;

.field private mSpinner:Lcom/samsung/android/uhm/framework/ui/base/CustomSpinner;

.field private mSpinnerAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSpinnerItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTitleText:Landroid/widget/TextView;

.field private mTopLogo:Landroid/widget/ImageView;

.field private mUpButton:Landroid/widget/ImageView;

.field private mUpButtonLayout:Landroid/widget/LinearLayout;

.field private originalTitleText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v2, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mActionBar:Landroid/app/ActionBar;

    .line 45
    iput-boolean v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mIsDrawMenuOpen:Z

    .line 46
    iput-boolean v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mIsDrwaMenuEnabled:Z

    .line 53
    iput-boolean v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mDisableDefaultButton:Z

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mDividerSet:Z

    .line 61
    sget v0, Lcom/samsung/android/uhm/framework/ui/R$drawable;->action_bar_button_background_selector_transparent:I

    iput v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mActionBarButtonSelectorId:I

    .line 83
    new-instance v0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper$1;-><init>(Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;)V

    iput-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 64
    iput-object p1, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mContext:Landroid/content/Context;

    .line 66
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/uhm/framework/ui/R$dimen;->actionbar_divider_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->ACTIONBAR_DIVIDER_WIDTH:I

    .line 67
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/uhm/framework/ui/R$dimen;->actionbar_divider_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->ACTIONBAR_DIVIDER_HEIGHT:I

    .line 68
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/uhm/framework/ui/R$dimen;->actionbar_button_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->ACTIONBAR_BUTTON_MARGIN:I

    .line 69
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/uhm/framework/ui/R$dimen;->actionbar_button_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->ACTIONBAR_BUTTON_WIDTH:I

    .line 71
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/samsung/android/uhm/framework/ui/R$layout;->custom_actionbar:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mActionBarLayout:Landroid/view/View;

    .line 72
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mActionBarLayout:Landroid/view/View;

    sget v1, Lcom/samsung/android/uhm/framework/ui/R$id;->ly_action_bar_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mButtonLayout:Landroid/widget/RelativeLayout;

    .line 73
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mActionBarLayout:Landroid/view/View;

    sget v1, Lcom/samsung/android/uhm/framework/ui/R$id;->ly_action_btn_holder:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mActionBarButtonContainer:Landroid/widget/LinearLayout;

    .line 74
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mActionBarLayout:Landroid/view/View;

    sget v1, Lcom/samsung/android/uhm/framework/ui/R$id;->ly_action_switch_holder:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mActionBarSwitchContainer:Landroid/widget/LinearLayout;

    .line 75
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mActionBarLayout:Landroid/view/View;

    sget v1, Lcom/samsung/android/uhm/framework/ui/R$id;->action_up_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mUpButton:Landroid/widget/ImageView;

    .line 76
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mActionBarLayout:Landroid/view/View;

    sget v1, Lcom/samsung/android/uhm/framework/ui/R$id;->layout_drawer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mUpButtonLayout:Landroid/widget/LinearLayout;

    .line 77
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mActionBarLayout:Landroid/view/View;

    sget v1, Lcom/samsung/android/uhm/framework/ui/R$id;->tvActionTitle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mTitleText:Landroid/widget/TextView;

    .line 78
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mActionBarLayout:Landroid/view/View;

    sget v1, Lcom/samsung/android/uhm/framework/ui/R$id;->main_logo_top:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mTopLogo:Landroid/widget/ImageView;

    .line 79
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mActionBarLayout:Landroid/view/View;

    sget v1, Lcom/samsung/android/uhm/framework/ui/R$id;->pluginListSpinner:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/uhm/framework/ui/base/CustomSpinner;

    iput-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mSpinner:Lcom/samsung/android/uhm/framework/ui/base/CustomSpinner;

    .line 80
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mActionBar:Landroid/app/ActionBar;

    .line 81
    return-void
.end method

.method private addDivider()V
    .locals 4

    .prologue
    .line 190
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->ACTIONBAR_DIVIDER_WIDTH:I

    iget v3, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->ACTIONBAR_DIVIDER_HEIGHT:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 191
    .local v1, "param":Landroid/widget/LinearLayout$LayoutParams;
    iget v2, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->ACTIONBAR_BUTTON_MARGIN:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 192
    iget v2, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->ACTIONBAR_BUTTON_MARGIN:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 193
    new-instance v0, Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 194
    .local v0, "dividerView":Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    sget v2, Lcom/samsung/android/uhm/framework/ui/R$drawable;->manager_divider_ab:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 196
    iget-object v2, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mActionBarButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 197
    return-void
.end method

.method private getButtonByIndex(I)Landroid/widget/Button;
    .locals 6
    .param p1, "button_index"    # I

    .prologue
    .line 366
    const/4 v3, 0x0

    .line 367
    .local v3, "result":Landroid/widget/Button;
    const/4 v1, -0x1

    .line 368
    .local v1, "buttonIndex":I
    iget-object v5, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mActionBarButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 369
    .local v0, "actionBarButtonContainerChildCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 370
    iget-object v5, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mActionBarButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 371
    .local v4, "view":Landroid/view/View;
    instance-of v5, v4, Landroid/widget/Button;

    if-eqz v5, :cond_1

    .line 372
    add-int/lit8 v1, v1, 0x1

    .line 373
    if-ne v1, p1, :cond_1

    move-object v3, v4

    .line 374
    check-cast v3, Landroid/widget/Button;

    .line 379
    .end local v4    # "view":Landroid/view/View;
    :cond_0
    return-object v3

    .line 369
    .restart local v4    # "view":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private setActionBarTitleForDrawer(Z)V
    .locals 2
    .param p1, "isOpen"    # Z

    .prologue
    .line 503
    if-eqz p1, :cond_0

    .line 505
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->originalTitleText:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    :goto_0
    sget v1, Lcom/samsung/android/uhm/framework/ui/R$string;->actionbar_name_not_translated:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->setActionBarTitle(I)V

    .line 513
    :goto_1
    return-void

    .line 506
    :catch_0
    move-exception v0

    .line 507
    .local v0, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_0

    .line 511
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->originalTitleText:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->setActionBarTitle(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setActionBarTitleTalkBack(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 471
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mTitleText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/uhm/framework/ui/R$string;->navigate_up:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 472
    return-void
.end method


# virtual methods
.method public varargs addActionButton([Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButton;)V
    .locals 12
    .param p1, "actionButton"    # [Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButton;

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x1

    .line 204
    iget-object v6, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mActionBarButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    div-int/lit8 v3, v6, 0x2

    .line 215
    .local v3, "nextButtonIndex":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    array-length v6, p1

    if-ge v1, v6, :cond_5

    .line 216
    iget-object v6, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 217
    .local v2, "inflater":Landroid/view/LayoutInflater;
    sget v6, Lcom/samsung/android/uhm/framework/ui/R$layout;->action_bar_button:I

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButtonView;

    .line 218
    .local v0, "actionButtonView":Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButtonView;
    const/16 v6, 0x11

    invoke-virtual {v0, v6}, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButtonView;->setGravity(I)V

    .line 219
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButtonView;->setFocusable(Z)V

    .line 221
    aget-object v6, p1, v1

    iget v6, v6, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButton;->mBtnBackground:I

    if-lez v6, :cond_4

    .line 222
    aget-object v6, p1, v1

    iget v6, v6, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButton;->mBtnBackground:I

    invoke-virtual {v0, v6}, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButtonView;->setBackgroundResource(I)V

    .line 227
    :goto_1
    add-int v6, v3, v1

    invoke-virtual {v0, v6}, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButtonView;->setActionButtonIndex(I)V

    .line 229
    iget-object v6, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mActionBarButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 231
    aget-object v6, p1, v1

    iget v6, v6, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButton;->iconResId:I

    if-lez v6, :cond_0

    .line 232
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->ACTIONBAR_BUTTON_WIDTH:I

    invoke-direct {v5, v6, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 235
    .local v5, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v5}, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButtonView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    aget-object v6, p1, v1

    iget v6, v6, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButton;->iconResId:I

    invoke-virtual {v0, v6}, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButtonView;->setActionIcon(I)V

    .line 239
    .end local v5    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    aget-object v6, p1, v1

    iget-object v6, v6, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButton;->listener:Landroid/view/View$OnClickListener;

    if-eqz v6, :cond_1

    .line 240
    aget-object v6, p1, v1

    iget-object v6, v6, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButton;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    :cond_1
    aget-object v6, p1, v1

    iget v6, v6, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButton;->textResId:I

    if-lez v6, :cond_2

    .line 250
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v4, v6, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 254
    .local v4, "param":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v4}, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButtonView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    aget-object v6, p1, v1

    iget v6, v6, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButton;->textResId:I

    invoke-virtual {v0, v6}, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButtonView;->setText(I)V

    .line 256
    iget-object v6, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/samsung/android/uhm/framework/ui/R$color;->regular_text_color:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButtonView;->setTextColor(I)V

    .line 258
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, -0x1000000

    invoke-virtual {v0, v6, v7, v8, v9}, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButtonView;->setShadowLayer(FFFI)V

    .line 259
    iget v6, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->ACTIONBAR_BUTTON_MARGIN:I

    iget v7, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->ACTIONBAR_BUTTON_MARGIN:I

    invoke-virtual {v0, v6, v11, v7, v11}, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButtonView;->setPadding(IIII)V

    .line 263
    .end local v4    # "param":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    iget-boolean v6, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mDividerSet:Z

    if-eqz v6, :cond_3

    .line 264
    array-length v6, p1

    add-int/lit8 v6, v6, -0x1

    if-eq v1, v6, :cond_3

    .line 265
    invoke-direct {p0}, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->addDivider()V

    .line 215
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 224
    :cond_4
    iget v6, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mActionBarButtonSelectorId:I

    invoke-virtual {v0, v6}, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButtonView;->setBackgroundResource(I)V

    goto :goto_1

    .line 269
    .end local v0    # "actionButtonView":Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButtonView;
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :cond_5
    return-void
.end method

.method public addButtonView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mActionBarButtonContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 166
    return-void
.end method

.method public addSwitchView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mActionBarSwitchContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 170
    return-void
.end method

.method public createActionBar()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 115
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mButtonLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    new-instance v0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarAnimator;

    iget-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mActionBarButtonContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mActionBarSwitchContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mUpButton:Landroid/widget/ImageView;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarAnimator;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mActionBarAnimator:Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarAnimator;

    .line 117
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mActionBarButtonContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 119
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 121
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 122
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 123
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 124
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mActionBar:Landroid/app/ActionBar;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->restoreDefaultCustomView()V

    .line 129
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mButtonLayout:Landroid/widget/RelativeLayout;

    iget v1, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mActionBarButtonSelectorId:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 130
    return-void
.end method

.method public disableActionBarButton(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 331
    invoke-direct {p0, p1}, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->getButtonByIndex(I)Landroid/widget/Button;

    move-result-object v0

    .line 332
    .local v0, "button":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 333
    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 334
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 336
    :cond_0
    return-void
.end method

.method public disableActionBarButtonNoAlpha(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 346
    invoke-direct {p0, p1}, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->getButtonByIndex(I)Landroid/widget/Button;

    move-result-object v0

    .line 347
    .local v0, "button":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 348
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 350
    :cond_0
    return-void
.end method

.method public disableActionBarUpButton()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 294
    invoke-virtual {p0}, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->hideActionBarUpButton()V

    .line 295
    invoke-virtual {p0, v0}, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->setUpButtonClickable(Z)V

    .line 296
    invoke-virtual {p0, v0}, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->setActionBarTitleLeftMargin(I)V

    .line 297
    return-void
.end method

.method public enableActionBarButton(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 358
    invoke-direct {p0, p1}, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->getButtonByIndex(I)Landroid/widget/Button;

    move-result-object v0

    .line 359
    .local v0, "button":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 360
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 361
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 363
    :cond_0
    return-void
.end method

.method public getActionBarAnimator()Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarAnimator;
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mActionBarAnimator:Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarAnimator;

    return-object v0
.end method

.method public getActionBarButtonContainer()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mActionBarButtonContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getActionBarHeight()I
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getHeight()I

    move-result v0

    return v0
.end method

.method public getActionBarTopLogo()Landroid/view/View;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mTopLogo:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getActionBarWidth()I
    .locals 4

    .prologue
    .line 426
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mButtonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v0

    .line 428
    .local v0, "actionBarWidth":I
    sget-object v1, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getActionBarWidth() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    return v0
.end method

.method public getButtonLayout()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mButtonLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getDisableDefaultButton()Z
    .locals 1

    .prologue
    .line 553
    iget-boolean v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mDisableDefaultButton:Z

    return v0
.end method

.method public getTitleClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getTitleText()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mTitleText:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTotalActionBarButtonCount()I
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mActionBarButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public hideActionBar()V
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 485
    return-void
.end method

.method public hideActionBarUpButton()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 281
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mUpButtonLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mUpButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mUpButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mUpButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 287
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mIsDrwaMenuEnabled:Z

    .line 288
    return-void
.end method

.method public isActionBarFocused()Z
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mButtonLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mButtonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isFocused()Z

    move-result v0

    .line 536
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeActionBarButtons()V
    .locals 3

    .prologue
    .line 315
    iget-object v2, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mActionBarSwitchContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 316
    iget-object v2, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mActionBarButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 318
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 319
    iget-object v2, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mActionBarButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 318
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 321
    :cond_0
    return-void
.end method

.method public removeAllActionBarButtons()V
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mActionBarButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 308
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mActionBarSwitchContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 309
    return-void
.end method

.method public restoreDefaultCustomView()V
    .locals 3

    .prologue
    .line 173
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    .line 178
    .local v0, "actionLayout":Landroid/app/ActionBar$LayoutParams;
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->setActionCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 179
    return-void
.end method

.method public setActionBarBackground(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 565
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 566
    return-void
.end method

.method public setActionBarButtonSelectorId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 557
    iput p1, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mActionBarButtonSelectorId:I

    .line 558
    return-void
.end method

.method public setActionBarButtonVisiblity(ZI)V
    .locals 5
    .param p1, "visibility"    # Z
    .param p2, "index"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 393
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mActionBarButtonContainer:Landroid/widget/LinearLayout;

    mul-int/lit8 v2, p2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 394
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 408
    :goto_0
    return-void

    .line 397
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 398
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 400
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mActionBarButtonContainer:Landroid/widget/LinearLayout;

    mul-int/lit8 v2, p2, 0x2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 401
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 403
    :cond_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 405
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mActionBarButtonContainer:Landroid/widget/LinearLayout;

    mul-int/lit8 v2, p2, 0x2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 406
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setActionBarGravity(I)V
    .locals 1
    .param p1, "mGravity"    # I

    .prologue
    .line 580
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mButtonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 581
    return-void
.end method

.method public setActionBarListener(Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper$ActionBarListener;Z)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper$ActionBarListener;
    .param p2, "isDrwaMenuEnabled"    # Z

    .prologue
    .line 492
    iput-object p1, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mActionBarListener:Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper$ActionBarListener;

    .line 493
    iput-boolean p2, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mIsDrwaMenuEnabled:Z

    .line 494
    return-void
.end method

.method public setActionBarTitle(I)V
    .locals 3
    .param p1, "textId"    # I

    .prologue
    .line 455
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->TAG:Ljava/lang/String;

    const-string v1, "setActionBarTitle()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 458
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mTitleText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/uhm/framework/ui/R$color;->regular_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 459
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->setActionBarTitleTalkBack(Ljava/lang/String;)V

    .line 460
    return-void
.end method

.method public setActionBarTitle(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 463
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->TAG:Ljava/lang/String;

    const-string v1, "setActionBarTitle()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mTitleText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/uhm/framework/ui/R$color;->regular_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 467
    invoke-direct {p0, p1}, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->setActionBarTitleTalkBack(Ljava/lang/String;)V

    .line 468
    return-void
.end method

.method public setActionBarTitleIcon(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 435
    return-void
.end method

.method public setActionBarTitleLeftMargin(I)V
    .locals 1
    .param p1, "margin"    # I

    .prologue
    .line 541
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 542
    return-void
.end method

.method public setActionBarTitleRightPadding()V
    .locals 4

    .prologue
    .line 475
    sget-object v1, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->TAG:Ljava/lang/String;

    const-string v2, "setActionBarTitleRightPadding()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getX()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mActionBarButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mActionBarSwitchContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    add-int/lit8 v0, v1, -0x10

    .line 478
    .local v0, "value":I
    if-lez v0, :cond_0

    .line 479
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 481
    :cond_0
    return-void
.end method

.method public setActionBarTitleVisibility(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 450
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setActionBarTitleVisibility()::value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 452
    return-void
.end method

.method public setActionBarTitleWidth(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    const/4 v3, -0x1

    .line 411
    sget-object v1, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->TAG:Ljava/lang/String;

    const-string v2, "setActionBarTitleWidth()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mActionBarLayout:Landroid/view/View;

    sget v2, Lcom/samsung/android/uhm/framework/ui/R$id;->ly_action_bar_button:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mButtonLayout:Landroid/widget/RelativeLayout;

    .line 414
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    add-int/lit8 v1, p1, 0x10

    invoke-direct {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 417
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    if-ne p1, v3, :cond_0

    .line 418
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, -0x2

    invoke-direct {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 422
    .restart local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mButtonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 423
    return-void
.end method

.method public setActionBarTopLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 438
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mTopLogo:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 439
    return-void
.end method

.method public setActionBarTopLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 442
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mTopLogo:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 443
    return-void
.end method

.method public setActionBarUpButton(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 272
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mUpButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mUpButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 274
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mIsDrwaMenuEnabled:Z

    .line 275
    return-void
.end method

.method public setActionCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "param"    # Landroid/app/ActionBar$LayoutParams;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1, p2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 183
    return-void
.end method

.method public setDisabelDefaultButton(Z)V
    .locals 0
    .param p1, "bDisable"    # Z

    .prologue
    .line 549
    iput-boolean p1, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mDisableDefaultButton:Z

    .line 550
    return-void
.end method

.method public setDividerEnable(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mDividerSet:Z

    .line 201
    return-void
.end method

.method public setDrawMenuStateOpen(Z)V
    .locals 0
    .param p1, "isOpen"    # Z

    .prologue
    .line 497
    iput-boolean p1, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mIsDrawMenuOpen:Z

    .line 499
    invoke-direct {p0, p1}, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->setActionBarTitleForDrawer(Z)V

    .line 500
    return-void
.end method

.method public setFocusOntheRootView()V
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mButtonLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mButtonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestFocus()Z

    .line 523
    :cond_0
    return-void
.end method

.method public setOriginTitleClick()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mActionBarListener:Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper$ActionBarListener;

    invoke-interface {v0}, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper$ActionBarListener;->closeScreen()V

    .line 104
    return-void
.end method

.method public setSpinner(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/uhm/framework/ui/drawermenu/SpinnerMenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, "mSpinnerMenuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/uhm/framework/ui/drawermenu/SpinnerMenuItem;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mSpinnerItemList:Ljava/util/ArrayList;

    .line 141
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/uhm/framework/ui/drawermenu/SpinnerMenuItem;

    .line 142
    .local v0, "spinnerItem":Lcom/samsung/android/uhm/framework/ui/drawermenu/SpinnerMenuItem;
    iget-object v2, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mSpinnerItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/samsung/android/uhm/framework/ui/drawermenu/SpinnerMenuItem;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 145
    .end local v0    # "spinnerItem":Lcom/samsung/android/uhm/framework/ui/drawermenu/SpinnerMenuItem;
    :cond_0
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mContext:Landroid/content/Context;

    sget v3, Lcom/samsung/android/uhm/framework/ui/R$layout;->spinner_item:I

    iget-object v4, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mSpinnerItemList:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mSpinnerAdapter:Landroid/widget/ArrayAdapter;

    .line 148
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mSpinnerAdapter:Landroid/widget/ArrayAdapter;

    sget v2, Lcom/samsung/android/uhm/framework/ui/R$layout;->spinner_custom_item:I

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 150
    sget-object v1, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSpinner()::mSpinner = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mSpinner:Lcom/samsung/android/uhm/framework/ui/base/CustomSpinner;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mSpinner:Lcom/samsung/android/uhm/framework/ui/base/CustomSpinner;

    if-nez v1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mActionBarLayout:Landroid/view/View;

    sget v2, Lcom/samsung/android/uhm/framework/ui/R$id;->pluginListSpinner:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/uhm/framework/ui/base/CustomSpinner;

    iput-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mSpinner:Lcom/samsung/android/uhm/framework/ui/base/CustomSpinner;

    .line 156
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mSpinner:Lcom/samsung/android/uhm/framework/ui/base/CustomSpinner;

    sget v2, Lcom/samsung/android/uhm/framework/ui/R$drawable;->manager_menu_popup_panel:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/uhm/framework/ui/base/CustomSpinner;->setPopupBackgroundResource(I)V

    .line 157
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mSpinner:Lcom/samsung/android/uhm/framework/ui/base/CustomSpinner;

    iget-object v2, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mSpinnerAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Lcom/samsung/android/uhm/framework/ui/base/CustomSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 158
    return-void
.end method

.method public setSpinnerListener(Lcom/samsung/android/uhm/framework/ui/base/CustomSpinner$OnSpinnerEventsListener;)V
    .locals 1
    .param p1, "l"    # Lcom/samsung/android/uhm/framework/ui/base/CustomSpinner$OnSpinnerEventsListener;

    .prologue
    .line 584
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mSpinner:Lcom/samsung/android/uhm/framework/ui/base/CustomSpinner;

    invoke-virtual {v0, p1}, Lcom/samsung/android/uhm/framework/ui/base/CustomSpinner;->setSpinnerEventsListener(Lcom/samsung/android/uhm/framework/ui/base/CustomSpinner$OnSpinnerEventsListener;)V

    .line 585
    return-void
.end method

.method public setSpinnerSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 1
    .param p1, "spinnerSelectedListener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mSpinner:Lcom/samsung/android/uhm/framework/ui/base/CustomSpinner;

    invoke-virtual {v0, p1}, Lcom/samsung/android/uhm/framework/ui/base/CustomSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 162
    return-void
.end method

.method public setSpinnerVisibility(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 133
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSpinnerVisibility()::value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mSpinner:Lcom/samsung/android/uhm/framework/ui/base/CustomSpinner;

    invoke-virtual {v0, p1}, Lcom/samsung/android/uhm/framework/ui/base/CustomSpinner;->setVisibility(I)V

    .line 135
    return-void
.end method

.method public setTitleClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mButtonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    return-void
.end method

.method public setUpButtonClickable(Z)V
    .locals 1
    .param p1, "clickable"    # Z

    .prologue
    .line 526
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mButtonLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mButtonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 528
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mButtonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    .line 530
    :cond_0
    return-void
.end method

.method public showActionBar()V
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 489
    return-void
.end method
