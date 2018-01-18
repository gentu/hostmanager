.class public Lcom/samsung/android/app/watchmanager/plugin/selibrary/input/InputMethodManagerImpl;
.super Ljava/lang/Object;
.source "InputMethodManagerImpl.java"

# interfaces
.implements Lcom/samsung/android/app/watchmanager/plugin/libinterface/input/InputMethodManagerInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public forceHideSoftInput(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0
    .param p1, "input"    # Landroid/view/inputmethod/InputMethodManager;

    .prologue
    .line 10
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->semForceHideSoftInput()Z

    .line 11
    return-void
.end method
