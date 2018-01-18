.class public Lcom/samsung/android/app/watchmanager/plugin/selibrary/settings/LockPattern;
.super Ljava/lang/Object;
.source "LockPattern.java"

# interfaces
.implements Lcom/samsung/android/app/watchmanager/plugin/libinterface/settings/LockPatternInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeyguardStoredPasswordQuality(Landroid/content/Context;I)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .prologue
    .line 12
    new-instance v1, Lcom/samsung/android/widget/SemLockPatternUtils;

    invoke-direct {v1, p1}, Lcom/samsung/android/widget/SemLockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 13
    .local v1, "mLockPatternUtils":Lcom/samsung/android/widget/SemLockPatternUtils;
    const/4 v0, 0x0

    .line 15
    .local v0, "PasswordQuality":I
    if-eqz v1, :cond_0

    .line 16
    invoke-virtual {v1, p2}, Lcom/samsung/android/widget/SemLockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    .line 18
    :cond_0
    return v0
.end method

.method public isLockScreenDisabled(Landroid/content/Context;I)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .prologue
    .line 23
    new-instance v0, Lcom/samsung/android/widget/SemLockPatternUtils;

    invoke-direct {v0, p1}, Lcom/samsung/android/widget/SemLockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 24
    .local v0, "mSemLockPatternUtils":Lcom/samsung/android/widget/SemLockPatternUtils;
    invoke-virtual {v0, p2}, Lcom/samsung/android/widget/SemLockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v1

    return v1
.end method
