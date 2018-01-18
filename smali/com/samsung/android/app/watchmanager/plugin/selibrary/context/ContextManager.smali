.class public Lcom/samsung/android/app/watchmanager/plugin/selibrary/context/ContextManager;
.super Ljava/lang/Object;
.source "ContextManager.java"

# interfaces
.implements Lcom/samsung/android/app/watchmanager/plugin/libinterface/context/ContextInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public MOTION_RECOGNITION_SERVICE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    const-string v0, "motion_recognition"

    return-object v0
.end method
