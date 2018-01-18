.class interface abstract Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;
.super Ljava/lang/Object;
.source "SASocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SASocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ConnectionStatusCallback"
.end annotation


# virtual methods
.method public abstract onConnectionClosed(Lcom/samsung/android/sdk/accessory/SASocket;)V
.end method

.method public abstract onConnectionFailure(Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V
.end method

.method public abstract onConnectionSuccess(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SASocket;)V
.end method
