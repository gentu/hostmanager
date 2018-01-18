.class Lcom/samsung/android/uhm/framework/ui/base/SplitView$1;
.super Ljava/lang/Object;
.source "SplitView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/uhm/framework/ui/base/SplitView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mStartDividerRight:I

.field private mStartX:F

.field final synthetic this$0:Lcom/samsung/android/uhm/framework/ui/base/SplitView;


# direct methods
.method constructor <init>(Lcom/samsung/android/uhm/framework/ui/base/SplitView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/uhm/framework/ui/base/SplitView;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/samsung/android/uhm/framework/ui/base/SplitView$1;->this$0:Lcom/samsung/android/uhm/framework/ui/base/SplitView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 116
    invoke-static {}, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "onTouch()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 158
    :cond_0
    :goto_0
    return v8

    .line 120
    :pswitch_0
    invoke-static {}, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "onTouch() :: MotionEvent.ACTION_DOWN"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {p1, v8}, Landroid/view/View;->setSelected(Z)V

    .line 122
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v5

    iput v5, p0, Lcom/samsung/android/uhm/framework/ui/base/SplitView$1;->mStartDividerRight:I

    .line 123
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    iput v5, p0, Lcom/samsung/android/uhm/framework/ui/base/SplitView$1;->mStartX:F

    goto :goto_0

    .line 127
    :pswitch_1
    invoke-static {}, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "onTouch() :: MotionEvent.ACTION_UP"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {p1, v7}, Landroid/view/View;->setSelected(Z)V

    .line 129
    iget-object v5, p0, Lcom/samsung/android/uhm/framework/ui/base/SplitView$1;->this$0:Lcom/samsung/android/uhm/framework/ui/base/SplitView;

    invoke-static {v5}, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->access$100(Lcom/samsung/android/uhm/framework/ui/base/SplitView;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "SECOND_FRAG_WEIGHT"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 130
    .local v4, "secondFragmentWeight":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 131
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "mSecondWeight"

    iget-object v6, p0, Lcom/samsung/android/uhm/framework/ui/base/SplitView$1;->this$0:Lcom/samsung/android/uhm/framework/ui/base/SplitView;

    invoke-static {v6}, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->access$200(Lcom/samsung/android/uhm/framework/ui/base/SplitView;)F

    move-result v6

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 132
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 136
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "secondFragmentWeight":Landroid/content/SharedPreferences;
    :pswitch_2
    invoke-static {}, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "onTouch() :: MotionEvent.ACTION_MOVE"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 138
    invoke-static {}, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "onTouch() :: v.isSelected()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    iget v6, p0, Lcom/samsung/android/uhm/framework/ui/base/SplitView$1;->mStartX:F

    sub-float v0, v5, v6

    .line 141
    .local v0, "diff":F
    iget v5, p0, Lcom/samsung/android/uhm/framework/ui/base/SplitView$1;->mStartDividerRight:I

    int-to-float v5, v5

    add-float v2, v5, v0

    .line 143
    .local v2, "newSecondViewLeft":F
    const/high16 v5, 0x3f800000    # 1.0f

    iget-object v6, p0, Lcom/samsung/android/uhm/framework/ui/base/SplitView$1;->this$0:Lcom/samsung/android/uhm/framework/ui/base/SplitView;

    invoke-virtual {v6}, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v2, v6

    sub-float/2addr v5, v6

    const v6, 0x3eae147b    # 0.34f

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 145
    .local v3, "newWeight":F
    const v5, 0x3f59999a    # 0.85f

    cmpl-float v5, v3, v5

    if-lez v5, :cond_1

    .line 146
    const v3, 0x3f59999a    # 0.85f

    .line 147
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/uhm/framework/ui/base/SplitView$1;->this$0:Lcom/samsung/android/uhm/framework/ui/base/SplitView;

    invoke-static {v5}, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->access$200(Lcom/samsung/android/uhm/framework/ui/base/SplitView;)F

    move-result v5

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3a83126f    # 0.001f

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_0

    .line 150
    iget-object v5, p0, Lcom/samsung/android/uhm/framework/ui/base/SplitView$1;->this$0:Lcom/samsung/android/uhm/framework/ui/base/SplitView;

    invoke-static {v5, v3}, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->access$202(Lcom/samsung/android/uhm/framework/ui/base/SplitView;F)F

    .line 153
    invoke-static {}, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onTouch() :: v.isSelected() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/uhm/framework/ui/base/SplitView$1;->this$0:Lcom/samsung/android/uhm/framework/ui/base/SplitView;

    invoke-static {v7}, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->access$200(Lcom/samsung/android/uhm/framework/ui/base/SplitView;)F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v5, p0, Lcom/samsung/android/uhm/framework/ui/base/SplitView$1;->this$0:Lcom/samsung/android/uhm/framework/ui/base/SplitView;

    invoke-virtual {v5}, Lcom/samsung/android/uhm/framework/ui/base/SplitView;->requestLayout()V

    goto/16 :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
