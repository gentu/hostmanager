.class public Lcom/samsung/android/uhm/framework/ui/base/SplitView;
.super Landroid/widget/LinearLayout;
.source "SplitView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDivider:Landroid/view/View;

.field private final mDividerTouchListener:Landroid/view/View$OnTouchListener;

.field private mFirstView:Landroid/view/View;

.field private mFirstViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private final mMinSecondWeight:F

.field private mSecondView:Landroid/view/View;

.field private mSecondViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mSecondWeight:F

.field private final mSnapSize:I

.field private final mSnapWeight:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/samsung/android/uhm/framework/ui/base/SplitView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 18
    const v0, 0x3eae147b    # 0.34f

    iput v0, p0, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->mMinSecondWeight:F

    .line 19
    const v0, 0x3f6b851f    # 0.92f

    iput v0, p0, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->mSnapWeight:F

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->mContext:Landroid/content/Context;

    .line 109
    new-instance v0, Lcom/samsung/android/uhm/framework/ui/base/SplitView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/uhm/framework/ui/base/SplitView$1;-><init>(Lcom/samsung/android/uhm/framework/ui/base/SplitView;)V

    iput-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->mDividerTouchListener:Landroid/view/View$OnTouchListener;

    .line 36
    iput-object p1, p0, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->mContext:Landroid/content/Context;

    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/uhm/framework/ui/R$dimen;->split_view_snap_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->mSnapSize:I

    .line 38
    invoke-direct {p0, p1}, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->getSecondFragmentWeight(Landroid/content/Context;)V

    .line 39
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SplitView(Context context) ::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->mSecondWeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const v0, 0x3eae147b    # 0.34f

    iput v0, p0, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->mMinSecondWeight:F

    .line 19
    const v0, 0x3f6b851f    # 0.92f

    iput v0, p0, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->mSnapWeight:F

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->mContext:Landroid/content/Context;

    .line 109
    new-instance v0, Lcom/samsung/android/uhm/framework/ui/base/SplitView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/uhm/framework/ui/base/SplitView$1;-><init>(Lcom/samsung/android/uhm/framework/ui/base/SplitView;)V

    iput-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->mDividerTouchListener:Landroid/view/View$OnTouchListener;

    .line 44
    iput-object p1, p0, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->mContext:Landroid/content/Context;

    .line 45
    invoke-virtual {p0}, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/uhm/framework/ui/R$dimen;->split_view_snap_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->mSnapSize:I

    .line 46
    invoke-direct {p0, p1}, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->getSecondFragmentWeight(Landroid/content/Context;)V

    .line 47
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SplitView(Context context, AttributeSet attrs) ::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->mSecondWeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    const v0, 0x3eae147b    # 0.34f

    iput v0, p0, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->mMinSecondWeight:F

    .line 19
    const v0, 0x3f6b851f    # 0.92f

    iput v0, p0, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->mSnapWeight:F

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->mContext:Landroid/content/Context;

    .line 109
    new-instance v0, Lcom/samsung/android/uhm/framework/ui/base/SplitView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/uhm/framework/ui/base/SplitView$1;-><init>(Lcom/samsung/android/uhm/framework/ui/base/SplitView;)V

    iput-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->mDividerTouchListener:Landroid/view/View$OnTouchListener;

    .line 52
    iput-object p1, p0, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->mContext:Landroid/content/Context;

    .line 53
    invoke-virtual {p0}, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/uhm/framework/ui/R$dimen;->split_view_snap_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->mSnapSize:I

    .line 54
    invoke-direct {p0, p1}, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->getSecondFragmentWeight(Landroid/content/Context;)V

    .line 56
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SplitView(Context context, AttributeSet attrs, int defStyle) ::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->mSecondWeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/uhm/framework/ui/base/SplitView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/uhm/framework/ui/base/SplitView;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/uhm/framework/ui/base/SplitView;)F
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/uhm/framework/ui/base/SplitView;

    .prologue
    .line 15
    iget v0, p0, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->mSecondWeight:F

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/android/uhm/framework/ui/base/SplitView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/uhm/framework/ui/base/SplitView;
    .param p1, "x1"    # F

    .prologue
    .line 15
    iput p1, p0, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->mSecondWeight:F

    return p1
.end method

.method private getSecondFragmentWeight(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    iget-object v2, p0, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->mContext:Landroid/content/Context;

    const-string v3, "SECOND_FRAG_WEIGHT"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 61
    .local v1, "secondFragmentWeight":Landroid/content/SharedPreferences;
    const-string v2, "mSecondWeight"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    const-string v2, "mSecondWeight"

    const v3, 0x3f19999a    # 0.6f

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    iput v2, p0, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->mSecondWeight:F

    .line 63
    sget-object v2, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sSecond Weight from shared preferences :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->mSecondWeight:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :goto_0
    return-void

    .line 65
    :cond_0
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 66
    .local v0, "out":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/uhm/framework/ui/R$dimen;->fragment2_weight:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 67
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->mSecondWeight:F

    .line 68
    sget-object v2, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Second Weight from layout file :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->mSecondWeight:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 105
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->TAG:Ljava/lang/String;

    const-string v1, "onConfigurationChanged() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->getSecondFragmentWeight(Landroid/content/Context;)V

    .line 107
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged() ::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->mSecondWeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 73
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 74
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->TAG:Ljava/lang/String;

    const-string v1, "onFinishInflate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->mDivider:Landroid/view/View;

    .line 77
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->mDivider:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->mDividerTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->mFirstView:Landroid/view/View;

    .line 80
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->mSecondView:Landroid/view/View;

    .line 82
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->mFirstView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->mFirstViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 83
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->mSecondView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->mSecondViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 84
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 88
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMeasure() :: mSecondWeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->mSecondWeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget v0, p0, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->mSecondWeight:F

    const v1, 0x3f6b851f    # 0.92f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->mFirstViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->mSecondWeight:F

    sub-float v1, v3, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 92
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->mSecondViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->mSecondWeight:F

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 99
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 100
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->mFirstViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 95
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->mFirstViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->mSnapSize:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 96
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->mSecondViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0
.end method
