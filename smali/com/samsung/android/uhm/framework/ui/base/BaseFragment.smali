.class public abstract Lcom/samsung/android/uhm/framework/ui/base/BaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseFragment.java"


# static fields
.field public static final ARG_SECTION_NUMBER:Ljava/lang/String; = "section_number"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private isSecondDepth:Z

.field protected mActionBarHelper:Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;

.field private mExtra:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/samsung/android/uhm/framework/ui/base/BaseFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/uhm/framework/ui/base/BaseFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseFragment;->isSecondDepth:Z

    .line 23
    iput-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseFragment;->mActionBarHelper:Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;

    .line 24
    iput-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseFragment;->mExtra:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/base/BaseFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected customizeActionBar()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public getExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseFragment;->mExtra:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondDepth()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseFragment;->isSecondDepth:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/base/BaseFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 63
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseFragment;->mActionBarHelper:Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseFragment;->mActionBarHelper:Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;

    invoke-virtual {v0}, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->removeAllActionBarButtons()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseFragment;->mActionBarHelper:Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;

    .line 68
    :cond_0
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/base/BaseFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 73
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 74
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/base/BaseFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 80
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/base/BaseFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDetach"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 120
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 121
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/base/BaseFragment;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 28
    iget-boolean v1, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseFragment;->isSecondDepth:Z

    if-eqz v1, :cond_1

    .line 29
    invoke-virtual {p0}, Lcom/samsung/android/uhm/framework/ui/base/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/uhm/framework/ui/base/GeneralActivity;

    invoke-virtual {v1}, Lcom/samsung/android/uhm/framework/ui/base/GeneralActivity;->getActionBarHelper()Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseFragment;->mActionBarHelper:Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;

    .line 34
    :goto_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 35
    sget-object v1, Lcom/samsung/android/uhm/framework/ui/base/BaseFragment;->TAG:Ljava/lang/String;

    const-string v2, "onStart"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseFragment;->mActionBarHelper:Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;

    invoke-virtual {v1}, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->removeAllActionBarButtons()V

    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/uhm/framework/ui/base/BaseFragment;->customizeActionBar()V

    .line 39
    iget-boolean v1, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseFragment;->isSecondDepth:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseFragment;->mActionBarHelper:Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;

    invoke-virtual {v1}, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->getDisableDefaultButton()Z

    move-result v1

    if-nez v1, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/samsung/android/uhm/framework/ui/base/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;

    invoke-virtual {v1}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->addDefaultActionbarButton()V

    .line 43
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 44
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/samsung/android/uhm/framework/ui/base/BaseFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/uhm/framework/ui/base/BaseFragment$1;-><init>(Lcom/samsung/android/uhm/framework/ui/base/BaseFragment;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 51
    return-void

    .line 31
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/uhm/framework/ui/base/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;

    invoke-virtual {v1}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->getActionBarHelper()Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseFragment;->mActionBarHelper:Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;

    goto :goto_0
.end method

.method protected setButtonNextFocusDownId(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 92
    iget-object v2, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseFragment;->mActionBarHelper:Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;

    invoke-virtual {v2}, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->getActionBarButtonContainer()Landroid/widget/LinearLayout;

    move-result-object v1

    .line 93
    .local v1, "view":Landroid/widget/LinearLayout;
    if-eqz v1, :cond_0

    .line 94
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 95
    .local v0, "b":Landroid/widget/Button;
    sget-object v2, Lcom/samsung/android/uhm/framework/ui/base/BaseFragment;->TAG:Ljava/lang/String;

    const-string v3, "Setting next focus down ID"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setNextFocusDownId(I)V

    .line 100
    .end local v0    # "b":Landroid/widget/Button;
    :cond_0
    return-void
.end method

.method public setExtra(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseFragment;->mExtra:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setSecondDepth(Z)V
    .locals 1
    .param p1, "isSecond"    # Z

    .prologue
    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseFragment;->isSecondDepth:Z

    .line 126
    return-void
.end method

.method protected setTalkbackToActionBarBtn(Ljava/lang/String;)V
    .locals 4
    .param p1, "talkback"    # Ljava/lang/String;

    .prologue
    .line 103
    iget-object v2, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseFragment;->mActionBarHelper:Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;

    invoke-virtual {v2}, Lcom/samsung/android/uhm/framework/ui/base/ActionBarHelper;->getActionBarButtonContainer()Landroid/widget/LinearLayout;

    move-result-object v1

    .line 104
    .local v1, "view":Landroid/widget/LinearLayout;
    if-eqz v1, :cond_0

    .line 105
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 106
    .local v0, "b":Landroid/widget/Button;
    sget-object v2, Lcom/samsung/android/uhm/framework/ui/base/BaseFragment;->TAG:Ljava/lang/String;

    const-string v3, "Setting next focus down ID"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 111
    .end local v0    # "b":Landroid/widget/Button;
    :cond_0
    return-void
.end method
