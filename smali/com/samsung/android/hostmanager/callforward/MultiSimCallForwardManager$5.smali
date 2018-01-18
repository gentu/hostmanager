.class Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$5;
.super Ljava/lang/Object;
.source "MultiSimCallForwardManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->showToast(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$resId:I


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;Landroid/content/Context;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;

    .prologue
    .line 507
    iput-object p1, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$5;->this$0:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;

    iput-object p2, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$5;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$5;->val$resId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 510
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$5;->val$context:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$5;->val$resId:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 511
    return-void
.end method
