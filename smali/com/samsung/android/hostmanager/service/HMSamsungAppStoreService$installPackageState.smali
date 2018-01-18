.class Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;
.super Ljava/lang/Object;
.source "HMSamsungAppStoreService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "installPackageState"
.end annotation


# instance fields
.field mFilePath:Ljava/lang/String;

.field mInstallCallback:Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;

.field mInstalledResult:I

.field mInstallingState:I

.field mPackageName:Ljava/lang/String;

.field mTransferID:I

.field final synthetic this$0:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;Ljava/lang/String;IILjava/lang/String;Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;)V
    .locals 2
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "state"    # I
    .param p4, "result"    # I
    .param p5, "filePath"    # Ljava/lang/String;
    .param p6, "observer"    # Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 93
    iput-object p1, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;->this$0:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object v1, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;->mPackageName:Ljava/lang/String;

    .line 85
    iput v0, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;->mInstallingState:I

    .line 86
    iput v0, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;->mInstalledResult:I

    .line 87
    iput-object v1, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;->mFilePath:Ljava/lang/String;

    .line 90
    iput-object v1, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;->mInstallCallback:Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;

    .line 94
    iput-object p2, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;->mPackageName:Ljava/lang/String;

    .line 95
    iput p3, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;->mInstallingState:I

    .line 96
    iput p4, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;->mInstalledResult:I

    .line 97
    iput-object p5, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;->mFilePath:Ljava/lang/String;

    .line 98
    iput v0, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;->mTransferID:I

    .line 99
    iput-object p6, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;->mInstallCallback:Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;

    .line 100
    return-void
.end method


# virtual methods
.method public getFilepath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getInstallCallback()Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;->mInstallCallback:Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;

    return-object v0
.end method

.method public getInstalledState()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;->mInstalledResult:I

    return v0
.end method

.method public getInstallingState()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;->mInstallingState:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getTransferID()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;->mTransferID:I

    return v0
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "consumerFilePath"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;->mFilePath:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setInstalledResult(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 105
    iput p1, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;->mInstalledResult:I

    .line 106
    return-void
.end method

.method public setInstallingState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 102
    iput p1, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;->mInstallingState:I

    .line 103
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;->mPackageName:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setTransferID(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 109
    iput p1, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;->mTransferID:I

    .line 110
    return-void
.end method
