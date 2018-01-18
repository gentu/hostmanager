.class Lcom/samsung/android/hostmanager/HMApplication$1;
.super Landroid/content/BroadcastReceiver;
.source "HMApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/HMApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/HMApplication;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/HMApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/HMApplication;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/samsung/android/hostmanager/HMApplication$1;->this$0:Lcom/samsung/android/hostmanager/HMApplication;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 120
    const-string v0, "HMApplication"

    const-string v1, "mScreenReceiver :: onReceive"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.accessory.saproviders.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 122
    return-void
.end method
