.class public Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButtonView;
.super Landroid/widget/Button;
.source "ActionBarButtonView.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mButtonIndex:I

.field private mContext:Landroid/content/Context;

.field private mLeftDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 19
    const-string v0, "ActionBarButtonView"

    iput-object v0, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButtonView;->TAG:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButtonView;->mContext:Landroid/content/Context;

    .line 28
    invoke-virtual {p0, v1}, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButtonView;->setMinimumWidth(I)V

    .line 29
    invoke-virtual {p0, v1}, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButtonView;->setMinWidth(I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const-string v0, "ActionBarButtonView"

    iput-object v0, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButtonView;->TAG:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButtonView;->mContext:Landroid/content/Context;

    .line 35
    invoke-virtual {p0, v1}, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButtonView;->setMinimumWidth(I)V

    .line 36
    invoke-virtual {p0, v1}, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButtonView;->setMinWidth(I)V

    .line 37
    return-void
.end method


# virtual methods
.method public getActionButtonIndex()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButtonView;->mButtonIndex:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 79
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButtonView;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 80
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 97
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 83
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButtonView;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 84
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 85
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 86
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 87
    invoke-virtual {p0}, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButtonView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButtonView;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    .line 88
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v0, v1, v2

    .line 90
    .local v0, "left":I
    int-to-float v1, v0

    .line 91
    invoke-virtual {p0}, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButtonView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButtonView;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v4

    .line 90
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 93
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButtonView;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 94
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 101
    invoke-super {p0, p1, p2}, Landroid/widget/Button;->onMeasure(II)V

    .line 103
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButtonView;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 111
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButtonView;->getMeasuredHeight()I

    move-result v0

    .line 108
    .local v0, "height":I
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButtonView;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 109
    invoke-virtual {p0}, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButtonView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButtonView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 108
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 110
    invoke-virtual {p0}, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButtonView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButtonView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public setActionButtonIndex(I)V
    .locals 0
    .param p1, "buttonIndex"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButtonView;->mButtonIndex:I

    .line 47
    return-void
.end method

.method public setActionIcon(I)V
    .locals 4
    .param p1, "actionIcon"    # I

    .prologue
    const/4 v3, 0x0

    .line 66
    if-gtz p1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 69
    .local v0, "leftDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 71
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 70
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 72
    iput-object v0, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButtonView;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setContentDescriptionStringid(I)V
    .locals 4
    .param p1, "stringId"    # I

    .prologue
    .line 114
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButtonView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "contentDescriptionStr":Ljava/lang/String;
    const-string v1, "ActionBarButtonView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setContentDescriptionStringid contentDescriptionStr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p0, v0}, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButtonView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 117
    return-void
.end method
