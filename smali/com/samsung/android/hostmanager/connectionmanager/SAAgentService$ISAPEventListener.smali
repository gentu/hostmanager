.class public interface abstract Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ISAPEventListener;
.super Ljava/lang/Object;
.source "SAAgentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ISAPEventListener"
.end annotation


# virtual methods
.method public abstract onConnected(Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$AgentErrorType;Ljava/lang/String;)V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onError(Ljava/lang/String;I)V
.end method

.method public abstract onReceivedData([BLcom/samsung/android/hostmanager/connectionmanager/SAAgentService$AgentErrorType;)V
.end method

.method public abstract onServiceConnectionLost(Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ConnectionLostReason;)V
.end method
