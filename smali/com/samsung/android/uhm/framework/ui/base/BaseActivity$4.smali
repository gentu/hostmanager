.class Lcom/samsung/android/uhm/framework/ui/base/BaseActivity$4;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->startUpdateModuleActivity(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity$4;->this$0:Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity$4;->this$0:Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;

    invoke-virtual {v0}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->finish()V

    .line 180
    return-void
.end method
