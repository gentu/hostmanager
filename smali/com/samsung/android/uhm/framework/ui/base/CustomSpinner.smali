.class public Lcom/samsung/android/uhm/framework/ui/base/CustomSpinner;
.super Landroid/widget/Spinner;
.source "CustomSpinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/uhm/framework/ui/base/CustomSpinner$OnSpinnerEventsListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mListener:Lcom/samsung/android/uhm/framework/ui/base/CustomSpinner$OnSpinnerEventsListener;

.field private opened:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/samsung/android/uhm/framework/ui/base/CustomSpinner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/uhm/framework/ui/base/CustomSpinner;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/uhm/framework/ui/base/CustomSpinner;->opened:Z

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;I)V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/uhm/framework/ui/base/CustomSpinner;->opened:Z

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/uhm/framework/ui/base/CustomSpinner;->opened:Z

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/uhm/framework/ui/base/CustomSpinner;->opened:Z

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "mode"    # I

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/uhm/framework/ui/base/CustomSpinner;->opened:Z

    .line 15
    return-void
.end method

.method private hasBeenOpened()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/samsung/android/uhm/framework/ui/base/CustomSpinner;->opened:Z

    return v0
.end method

.method private performClosedEvent()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/uhm/framework/ui/base/CustomSpinner;->opened:Z

    .line 58
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/CustomSpinner;->mListener:Lcom/samsung/android/uhm/framework/ui/base/CustomSpinner$OnSpinnerEventsListener;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/CustomSpinner;->mListener:Lcom/samsung/android/uhm/framework/ui/base/CustomSpinner$OnSpinnerEventsListener;

    invoke-interface {v0}, Lcom/samsung/android/uhm/framework/ui/base/CustomSpinner$OnSpinnerEventsListener;->onSpinnerClosed()V

    .line 61
    :cond_0
    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 69
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/base/CustomSpinner;->TAG:Ljava/lang/String;

    const-string v1, "onWindowFocusChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-super {p0, p1}, Landroid/widget/Spinner;->onWindowFocusChanged(Z)V

    .line 72
    invoke-direct {p0}, Lcom/samsung/android/uhm/framework/ui/base/CustomSpinner;->hasBeenOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 73
    sget-object v0, Lcom/samsung/android/uhm/framework/ui/base/CustomSpinner;->TAG:Ljava/lang/String;

    const-string v1, "closing popup"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-direct {p0}, Lcom/samsung/android/uhm/framework/ui/base/CustomSpinner;->performClosedEvent()V

    .line 76
    :cond_0
    return-void
.end method

.method public performClick()Z
    .locals 2

    .prologue
    .line 40
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/uhm/framework/ui/base/CustomSpinner;->opened:Z

    .line 41
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/CustomSpinner;->mListener:Lcom/samsung/android/uhm/framework/ui/base/CustomSpinner$OnSpinnerEventsListener;

    if-eqz v1, :cond_1

    .line 42
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/CustomSpinner;->mListener:Lcom/samsung/android/uhm/framework/ui/base/CustomSpinner$OnSpinnerEventsListener;

    invoke-interface {v1}, Lcom/samsung/android/uhm/framework/ui/base/CustomSpinner$OnSpinnerEventsListener;->onSpinnerOpened()Z

    move-result v0

    .line 43
    .local v0, "delegation":Z
    if-eqz v0, :cond_0

    .line 44
    invoke-super {p0}, Landroid/widget/Spinner;->performClick()Z

    move-result v1

    .line 49
    .end local v0    # "delegation":Z
    :goto_0
    return v1

    .line 46
    .restart local v0    # "delegation":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 49
    .end local v0    # "delegation":Z
    :cond_1
    invoke-super {p0}, Landroid/widget/Spinner;->performClick()Z

    move-result v1

    goto :goto_0
.end method

.method setSpinnerEventsListener(Lcom/samsung/android/uhm/framework/ui/base/CustomSpinner$OnSpinnerEventsListener;)V
    .locals 0
    .param p1, "onSpinnerEventsListener"    # Lcom/samsung/android/uhm/framework/ui/base/CustomSpinner$OnSpinnerEventsListener;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/samsung/android/uhm/framework/ui/base/CustomSpinner;->mListener:Lcom/samsung/android/uhm/framework/ui/base/CustomSpinner$OnSpinnerEventsListener;

    .line 54
    return-void
.end method
