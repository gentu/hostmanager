.class Lcom/samsung/android/sdk/accessory/SAAgent$1$1;
.super Ljava/lang/Object;
.source "SAAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/accessory/SAAgent$1;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sdk/accessory/SAAgent$1;

.field private final synthetic val$ex:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/accessory/SAAgent$1;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgent$1$1;->this$1:Lcom/samsung/android/sdk/accessory/SAAgent$1;

    iput-object p2, p0, Lcom/samsung/android/sdk/accessory/SAAgent$1$1;->val$ex:Ljava/lang/Throwable;

    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 509
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgent$1$1;->val$ex:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method