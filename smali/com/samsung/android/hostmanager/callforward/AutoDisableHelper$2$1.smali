.class Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper$2$1;
.super Ljava/lang/Object;
.source "AutoDisableHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper$2;->onGetCallForwardSuccess(Ljava/lang/String;Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper$2;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper$2$1;->this$1:Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper$2$1;->this$1:Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper$2;

    iget-object v0, v0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper$2;->this$0:Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->access$300(Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;)V

    .line 134
    return-void
.end method
