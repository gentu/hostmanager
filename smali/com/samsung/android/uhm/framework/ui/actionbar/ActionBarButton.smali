.class public Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButton;
.super Ljava/lang/Object;
.source "ActionBarButton.java"


# instance fields
.field public hasDivider:Z

.field public hoverTextResId:I

.field public iconResId:I

.field public listener:Landroid/view/View$OnClickListener;

.field public mBtnBackground:I

.field public textResId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButton;->hasDivider:Z

    .line 22
    iput v1, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButton;->iconResId:I

    .line 23
    iput v1, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButton;->textResId:I

    .line 24
    iput v1, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButton;->hoverTextResId:I

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButton;->listener:Landroid/view/View$OnClickListener;

    .line 26
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "iconResId"    # I
    .param p2, "textResId"    # I
    .param p3, "hoverTextResId"    # I

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButton;->hasDivider:Z

    .line 70
    iput p1, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButton;->iconResId:I

    .line 71
    iput p2, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButton;->textResId:I

    .line 72
    iput p3, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButton;->hoverTextResId:I

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButton;->listener:Landroid/view/View$OnClickListener;

    .line 74
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "iconResId"    # I
    .param p2, "textResId"    # I
    .param p3, "hoverTextResId"    # I
    .param p4, "backgroundId"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButton;-><init>(III)V

    .line 79
    iput p4, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButton;->mBtnBackground:I

    .line 80
    return-void
.end method

.method public constructor <init>(IIILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "iconResId"    # I
    .param p2, "textResId"    # I
    .param p3, "hoverTextResId"    # I
    .param p4, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButton;->hasDivider:Z

    .line 43
    iput p1, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButton;->iconResId:I

    .line 44
    iput p2, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButton;->textResId:I

    .line 45
    iput p3, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButton;->hoverTextResId:I

    .line 46
    iput-object p4, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButton;->listener:Landroid/view/View$OnClickListener;

    .line 47
    return-void
.end method

.method public constructor <init>(IIILandroid/view/View$OnClickListener;I)V
    .locals 0
    .param p1, "iconResId"    # I
    .param p2, "textResId"    # I
    .param p3, "hoverTextResId"    # I
    .param p4, "listener"    # Landroid/view/View$OnClickListener;
    .param p5, "backgroundId"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButton;-><init>(IIILandroid/view/View$OnClickListener;)V

    .line 52
    iput p5, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButton;->mBtnBackground:I

    .line 53
    return-void
.end method

.method public constructor <init>(IILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "iconResId"    # I
    .param p2, "textResId"    # I
    .param p3, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButton;->hasDivider:Z

    .line 57
    iput p1, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButton;->iconResId:I

    .line 58
    iput p2, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButton;->textResId:I

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButton;->hoverTextResId:I

    .line 60
    iput-object p3, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButton;->listener:Landroid/view/View$OnClickListener;

    .line 61
    return-void
.end method

.method public constructor <init>(IILandroid/view/View$OnClickListener;I)V
    .locals 0
    .param p1, "iconResId"    # I
    .param p2, "textResId"    # I
    .param p3, "listener"    # Landroid/view/View$OnClickListener;
    .param p4, "backgroundId"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButton;-><init>(IILandroid/view/View$OnClickListener;)V

    .line 66
    iput p4, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButton;->mBtnBackground:I

    .line 67
    return-void
.end method

.method public constructor <init>(ILandroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "iconResId"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButton;->hasDivider:Z

    .line 29
    iput p1, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButton;->iconResId:I

    .line 30
    iput v1, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButton;->textResId:I

    .line 31
    iput v1, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButton;->hoverTextResId:I

    .line 32
    iput-object p2, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButton;->listener:Landroid/view/View$OnClickListener;

    .line 33
    return-void
.end method

.method public constructor <init>(ILandroid/view/View$OnClickListener;I)V
    .locals 0
    .param p1, "iconResId"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;
    .param p3, "backgroundId"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButton;-><init>(ILandroid/view/View$OnClickListener;)V

    .line 38
    iput p3, p0, Lcom/samsung/android/uhm/framework/ui/actionbar/ActionBarButton;->mBtnBackground:I

    .line 39
    return-void
.end method
