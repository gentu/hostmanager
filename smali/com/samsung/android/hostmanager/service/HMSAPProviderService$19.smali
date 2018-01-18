.class Lcom/samsung/android/hostmanager/service/HMSAPProviderService$19;
.super Ljava/lang/Object;
.source "HMSAPProviderService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->invalidateSHealthSupportCache(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

.field final synthetic val$deviceid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    .prologue
    .line 17669
    iput-object p1, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$19;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    iput-object p2, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$19;->val$deviceid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 17674
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$19;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$19;->val$deviceid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->preCheckSHealthSupport(Ljava/lang/String;)V

    .line 17676
    return-void
.end method
