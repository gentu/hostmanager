.class public interface abstract Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;
.super Ljava/lang/Object;
.source "SamAccessoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AccessoryEventListener"
.end annotation


# virtual methods
.method public abstract onAccessoryConnected(Lcom/samsung/android/sdk/accessorymanager/SamDevice;)V
.end method

.method public abstract onAccessoryDisconnected(Lcom/samsung/android/sdk/accessorymanager/SamDevice;I)V
.end method

.method public abstract onAccountLoggedIn(Lcom/samsung/android/sdk/accessorymanager/SamDevice;)V
.end method

.method public abstract onAccountLoggedOut(Lcom/samsung/android/sdk/accessorymanager/SamDevice;)V
.end method

.method public abstract onError(Lcom/samsung/android/sdk/accessorymanager/SamDevice;I)V
.end method
