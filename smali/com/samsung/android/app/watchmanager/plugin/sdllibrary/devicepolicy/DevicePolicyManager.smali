.class public Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/devicepolicy/DevicePolicyManager;
.super Ljava/lang/Object;
.source "DevicePolicyManager.java"

# interfaces
.implements Lcom/samsung/android/app/watchmanager/plugin/libinterface/devicepolicy/DevicePolicyManagerInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public PASSWORD_QUALITY_SMARTUNLOCK()I
    .locals 1

    .prologue
    .line 11
    const/high16 v0, 0x90000

    return v0
.end method

.method public getRequireStorageCardEncryption(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "DPM"    # Landroid/app/admin/DevicePolicyManager;
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 16
    invoke-virtual {p1, p2}, Landroid/app/admin/DevicePolicyManager;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public supportSdPolicies(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoClassDefFoundError;
        }
    .end annotation

    .prologue
    .line 21
    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    invoke-direct {v0, p1}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 23
    .local v0, "dem":Landroid/dirEncryption/DirEncryptionManager;
    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionManager;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v1

    .line 24
    .local v1, "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 26
    .local v2, "supportSdPolicies":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    .line 27
    const/4 v3, 0x2

    iget v4, v1, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-ne v3, v4, :cond_0

    .line 28
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 31
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3
.end method
