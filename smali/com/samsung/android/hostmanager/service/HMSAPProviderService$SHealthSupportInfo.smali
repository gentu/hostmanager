.class Lcom/samsung/android/hostmanager/service/HMSAPProviderService$SHealthSupportInfo;
.super Ljava/lang/Object;
.source "HMSAPProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/service/HMSAPProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SHealthSupportInfo"
.end annotation


# instance fields
.field supportPackageType:I

.field final synthetic this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

.field versionCode:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/service/HMSAPProviderService;
    .param p2, "supportPackageType"    # I
    .param p3, "versionCode"    # I

    .prologue
    .line 17383
    iput-object p1, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$SHealthSupportInfo;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    .line 17384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17385
    iput p2, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$SHealthSupportInfo;->supportPackageType:I

    .line 17386
    iput p3, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$SHealthSupportInfo;->versionCode:I

    .line 17387
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 17392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " supportPackageType :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$SHealthSupportInfo;->supportPackageType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " versionCode :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$SHealthSupportInfo;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
