.class Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper$1;
.super Ljava/lang/Object;
.source "AutoDisableHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->start(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper$1;->this$0:Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper$1;->this$0:Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->access$000(Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;)V

    .line 67
    return-void
.end method
