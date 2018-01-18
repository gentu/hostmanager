.class public Lcom/samsung/android/hostmanager/service/HMSAPProviderService$LocalBinder;
.super Landroid/os/Binder;
.source "HMSAPProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/service/HMSAPProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    .prologue
    .line 501
    iput-object p1, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$LocalBinder;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/samsung/android/hostmanager/service/HMSAPProviderService;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$LocalBinder;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    return-object v0
.end method
