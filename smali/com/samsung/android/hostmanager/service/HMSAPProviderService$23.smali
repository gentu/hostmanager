.class Lcom/samsung/android/hostmanager/service/HMSAPProviderService$23;
.super Ljava/lang/Object;
.source "HMSAPProviderService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/service/HMSAPProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    .prologue
    .line 18175
    iput-object p1, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$23;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 18179
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "user::mExpandableServiceConnection:: onServiceConnected()"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18180
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$23;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-static {p2}, Lcom/msc/sa/aidl/ISAExpandableService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/msc/sa/aidl/ISAExpandableService;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->mISaExpandableService:Lcom/msc/sa/aidl/ISAExpandableService;

    .line 18181
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$23;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    new-instance v1, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$SAExpandableCallback;

    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$23;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-direct {v1, v2}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$SAExpandableCallback;-><init>(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;)V

    iput-object v1, v0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->mISAExpandableCallback:Lcom/msc/sa/aidl/ISAExpandableCallback;

    .line 18182
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$23;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    new-instance v1, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$SACallbackUserData;

    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$23;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$SACallbackUserData;-><init>(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;Lcom/samsung/android/hostmanager/service/HMSAPProviderService$1;)V

    iput-object v1, v0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->mSACallBackUserData:Lcom/msc/sa/aidl/ISACallback;

    .line 18183
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    .line 18187
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "user::mExpandableServiceConnection:: onServiceDisconnected()"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18188
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$23;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    iput-object v2, v0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->mISaExpandableService:Lcom/msc/sa/aidl/ISAExpandableService;

    .line 18189
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$23;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    iput-object v2, v0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->mISAExpandableCallback:Lcom/msc/sa/aidl/ISAExpandableCallback;

    .line 18190
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$23;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    iput-object v2, v0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->mSACallBackUserData:Lcom/msc/sa/aidl/ISACallback;

    .line 18191
    return-void
.end method
