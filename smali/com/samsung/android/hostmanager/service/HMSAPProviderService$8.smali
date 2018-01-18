.class Lcom/samsung/android/hostmanager/service/HMSAPProviderService$8;
.super Landroid/os/CountDownTimer;
.source "HMSAPProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->HandleClockSetIdleWidgetRequest(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;JJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/service/HMSAPProviderService;
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 6654
    iput-object p1, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$8;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 6662
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$8;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$2202(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;Z)Z

    .line 6663
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 6658
    return-void
.end method
