.class public Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$LocalBinder;
.super Landroid/os/Binder;
.source "SAAgentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$LocalBinder;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$LocalBinder;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;

    return-object v0
.end method
