.class public Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/appsoperation/AppsOpManager;
.super Ljava/lang/Object;
.source "AppsOpManager.java"

# interfaces
.implements Lcom/samsung/android/app/watchmanager/plugin/libinterface/appsoperation/AppsOpInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OP_WRITE_SMS()I
    .locals 1

    .prologue
    .line 9
    const/16 v0, 0xf

    return v0
.end method

.method public checkOp(Landroid/app/AppOpsManager;IILjava/lang/String;)I
    .locals 1
    .param p1, "manager"    # Landroid/app/AppOpsManager;
    .param p2, "op"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-virtual {p1, p2, p3, p4}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setMode(Landroid/app/AppOpsManager;IILjava/lang/String;I)V
    .locals 0
    .param p1, "manager"    # Landroid/app/AppOpsManager;
    .param p2, "op"    # I
    .param p3, "v1"    # I
    .param p4, "v2"    # Ljava/lang/String;
    .param p5, "v3"    # I

    .prologue
    .line 19
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 20
    return-void
.end method
