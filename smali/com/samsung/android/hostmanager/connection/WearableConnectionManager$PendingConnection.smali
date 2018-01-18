.class Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$PendingConnection;
.super Ljava/lang/Object;
.source "WearableConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingConnection"
.end annotation


# instance fields
.field protected btAddress:Ljava/lang/String;

.field protected connType:I

.field protected isPending:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$PendingConnection;->isPending:Z

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$PendingConnection;->btAddress:Ljava/lang/String;

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$PendingConnection;->connType:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$1;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$PendingConnection;-><init>()V

    return-void
.end method
