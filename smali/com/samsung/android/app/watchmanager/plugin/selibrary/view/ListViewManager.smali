.class public Lcom/samsung/android/app/watchmanager/plugin/selibrary/view/ListViewManager;
.super Ljava/lang/Object;
.source "ListViewManager.java"

# interfaces
.implements Lcom/samsung/android/app/watchmanager/plugin/libinterface/view/ListViewInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public twSetCustomMultiChoiceMode(Landroid/widget/ListView;Z)V
    .locals 0
    .param p1, "list"    # Landroid/widget/ListView;
    .param p2, "value"    # Z

    .prologue
    .line 8
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->semSetCustomMultiChoiceModeEnabled(Z)V

    .line 9
    return-void
.end method
