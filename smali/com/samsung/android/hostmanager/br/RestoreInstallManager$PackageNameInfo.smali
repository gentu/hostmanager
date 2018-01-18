.class Lcom/samsung/android/hostmanager/br/RestoreInstallManager$PackageNameInfo;
.super Ljava/lang/Object;
.source "RestoreInstallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/br/RestoreInstallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PackageNameInfo"
.end annotation


# instance fields
.field private mBPkgName:Ljava/lang/String;

.field private mHPkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "hPackageName"    # Ljava/lang/String;
    .param p2, "bPackageName"    # Ljava/lang/String;

    .prologue
    .line 1059
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1060
    iput-object p1, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$PackageNameInfo;->mHPkgName:Ljava/lang/String;

    .line 1061
    iput-object p2, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$PackageNameInfo;->mBPkgName:Ljava/lang/String;

    .line 1062
    return-void
.end method


# virtual methods
.method public getBPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$PackageNameInfo;->mBPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getHPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$PackageNameInfo;->mHPkgName:Ljava/lang/String;

    return-object v0
.end method
