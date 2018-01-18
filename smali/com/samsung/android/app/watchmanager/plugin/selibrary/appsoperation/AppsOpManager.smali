.class public Lcom/samsung/android/app/watchmanager/plugin/selibrary/appsoperation/AppsOpManager;
.super Ljava/lang/Object;
.source "AppsOpManager.java"

# interfaces
.implements Lcom/samsung/android/app/watchmanager/plugin/libinterface/appsoperation/AppsOpInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OP_WRITE_SMS()I
    .locals 1

    .prologue
    .line 11
    const-string v0, "OP_WRITE_SMS"

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/util/ExceptionUtil;->throwException(Ljava/lang/String;)V

    .line 12
    const/4 v0, 0x1

    return v0
.end method

.method public checkOp(Landroid/app/AppOpsManager;IILjava/lang/String;)I
    .locals 1
    .param p1, "manager"    # Landroid/app/AppOpsManager;
    .param p2, "op"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 17
    const-string v0, "checkOp"

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/util/ExceptionUtil;->throwException(Ljava/lang/String;)V

    .line 19
    const/4 v0, 0x1

    return v0
.end method

.method public setMode(Landroid/app/AppOpsManager;IILjava/lang/String;I)V
    .locals 1
    .param p1, "manager"    # Landroid/app/AppOpsManager;
    .param p2, "op"    # I
    .param p3, "v1"    # I
    .param p4, "v2"    # Ljava/lang/String;
    .param p5, "v3"    # I

    .prologue
    .line 24
    const-string v0, "setMode"

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/util/ExceptionUtil;->throwException(Ljava/lang/String;)V

    .line 25
    return-void
.end method
