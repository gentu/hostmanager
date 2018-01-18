.class public interface abstract Lcom/samsung/android/app/watchmanager/plugin/libinterface/devicepolicy/DevicePolicyManagerInterface;
.super Ljava/lang/Object;
.source "DevicePolicyManagerInterface.java"


# virtual methods
.method public abstract PASSWORD_QUALITY_SMARTUNLOCK()I
.end method

.method public abstract getRequireStorageCardEncryption(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;)Z
.end method

.method public abstract supportSdPolicies(Landroid/content/Context;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoClassDefFoundError;
        }
    .end annotation
.end method
