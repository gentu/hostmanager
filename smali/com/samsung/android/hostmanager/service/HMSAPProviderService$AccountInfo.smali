.class public Lcom/samsung/android/hostmanager/service/HMSAPProviderService$AccountInfo;
.super Ljava/lang/Object;
.source "HMSAPProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/service/HMSAPProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountInfo"
.end annotation


# instance fields
.field public accessToken:Ljava/lang/String;

.field public cc:Ljava/lang/String;

.field public loginId:Ljava/lang/String;

.field public loginType:Ljava/lang/String;

.field public mcc:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
