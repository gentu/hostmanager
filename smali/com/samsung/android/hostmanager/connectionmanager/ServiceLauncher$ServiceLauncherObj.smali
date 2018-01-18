.class Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher$ServiceLauncherObj;
.super Ljava/lang/Object;
.source "ServiceLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceLauncherObj"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher$ServiceLauncherObj;->context:Landroid/content/Context;

    .line 116
    iput-object p2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher$ServiceLauncherObj;->intent:Landroid/content/Intent;

    .line 117
    return-void
.end method


# virtual methods
.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher$ServiceLauncherObj;->context:Landroid/content/Context;

    return-object v0
.end method

.method getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceLauncher$ServiceLauncherObj;->intent:Landroid/content/Intent;

    return-object v0
.end method
