.class Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper$2;
.super Ljava/lang/Object;
.source "AutoDisableHelper.java"

# interfaces
.implements Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;
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
    .line 106
    iput-object p1, p0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper$2;->this$0:Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetCallForwardError(Ljava/lang/String;)V
    .locals 3
    .param p1, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReadCallForwardListener :: onGetCallForwardError starts, deviceID ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReadCallForwardListener :: onGetCallForwardError ends"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void
.end method

.method public onGetCallForwardSuccess(Ljava/lang/String;Ljava/lang/String;[I)V
    .locals 4
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "phone"    # Ljava/lang/String;
    .param p3, "states"    # [I

    .prologue
    .line 127
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReadCallForwardListener :: onGetCallForwardSuccess starts, deviceID ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->printPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper$2$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper$2$1;-><init>(Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper$2;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 137
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReadCallForwardListener :: onGetCallForwardSuccess ends"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void
.end method

.method public onProgress(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "activate"    # Z

    .prologue
    .line 149
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReadCallForwardListener :: onProgress starts, deviceID ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], activate ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReadCallForwardListener :: onProgress ends"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void
.end method

.method public onSetCallForwardError(Ljava/lang/String;ZI)V
    .locals 3
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "activate"    # Z
    .param p3, "reason"    # I

    .prologue
    .line 120
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReadCallForwardListener :: onSetCallForwardError starts, activate ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], deviceID ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], reason ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReadCallForwardListener :: onSetCallForwardError ends"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void
.end method

.method public onSetCallForwardSuccess(Ljava/lang/String;Ljava/lang/String;Z[I)V
    .locals 3
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "phone"    # Ljava/lang/String;
    .param p3, "activate"    # Z
    .param p4, "states"    # [I

    .prologue
    .line 111
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReadCallForwardListener :: onSetCallForwardSuccess starts"

    invoke-static {v0, v1, p2}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->printPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReadCallForwardListener :: onSetCallForwardSuccess starts, activate ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], deviceID ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], states ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper$2;->this$0:Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;

    .line 114
    invoke-static {v2, p4}, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->access$200(Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;[I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReadCallForwardListener :: onSetCallForwardSuccess ends"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void
.end method
