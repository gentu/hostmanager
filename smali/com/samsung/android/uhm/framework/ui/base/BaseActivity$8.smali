.class Lcom/samsung/android/uhm/framework/ui/base/BaseActivity$8;
.super Landroid/database/ContentObserver;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 918
    iput-object p1, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity$8;->this$0:Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 921
    invoke-static {}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dbObserver :: onChange, selfChange : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity$8;->this$0:Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;

    invoke-static {v0}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->access$700(Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;)V

    .line 923
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity$8;->this$0:Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;

    invoke-static {v0}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->access$800(Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;)V

    .line 924
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 926
    return-void
.end method
