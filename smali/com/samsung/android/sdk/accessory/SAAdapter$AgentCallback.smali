.class interface abstract Lcom/samsung/android/sdk/accessory/SAAdapter$AgentCallback;
.super Ljava/lang/Object;
.source "SAAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SAAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "AgentCallback"
.end annotation


# virtual methods
.method public abstract onAgentRegistered()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/SAException;
        }
    .end annotation
.end method

.method public abstract onFrameworkConnected()V
.end method

.method public abstract onFrameworkDisconnected()V
.end method
