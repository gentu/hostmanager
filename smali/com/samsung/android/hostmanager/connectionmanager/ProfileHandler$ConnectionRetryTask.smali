.class public abstract Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler$ConnectionRetryTask;
.super Ljava/lang/Object;
.source "ProfileHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "ConnectionRetryTask"
.end annotation


# static fields
.field private static final DEFAULT_RETRY_COUNT:I = 0x5

.field public static final MODE_NONE:I = 0x2

.field public static final MODE_RETRY:I = 0x1

.field public static final MODE_UNKNOWN:I


# instance fields
.field private mDevice:Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

.field private mMax:I

.field private mMode:I

.field private mRetryCount:I

.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;I)V
    .locals 2
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;
    .param p2, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    .param p3, "max"    # I

    .prologue
    const/4 v1, 0x0

    .line 147
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler$ConnectionRetryTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler$ConnectionRetryTask;->mRetryCount:I

    .line 141
    iput v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler$ConnectionRetryTask;->mMode:I

    .line 143
    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler$ConnectionRetryTask;->mMax:I

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler$ConnectionRetryTask;->mDevice:Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .line 149
    iput-object p2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler$ConnectionRetryTask;->mDevice:Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .line 150
    iput p3, p0, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler$ConnectionRetryTask;->mMax:I

    .line 151
    iput v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler$ConnectionRetryTask;->mRetryCount:I

    .line 152
    return-void
.end method

.method private increase()V
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler$ConnectionRetryTask;->mRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler$ConnectionRetryTask;->mRetryCount:I

    .line 168
    return-void
.end method

.method private isMaxRetry()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 181
    iget v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler$ConnectionRetryTask;->mMode:I

    if-eq v2, v1, :cond_1

    .line 187
    :cond_0
    :goto_0
    return v0

    .line 184
    :cond_1
    iget v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler$ConnectionRetryTask;->mRetryCount:I

    iget v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler$ConnectionRetryTask;->mMax:I

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 185
    goto :goto_0
.end method

.method private shouldRetry()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 171
    iget v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler$ConnectionRetryTask;->mMode:I

    if-eq v2, v1, :cond_1

    .line 177
    :cond_0
    :goto_0
    return v0

    .line 174
    :cond_1
    iget v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler$ConnectionRetryTask;->mRetryCount:I

    iget v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler$ConnectionRetryTask;->mMax:I

    if-ge v2, v3, :cond_0

    move v0, v1

    .line 177
    goto :goto_0
.end method


# virtual methods
.method public abstract endOfMaxRetryTask(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V
.end method

.method public getRetryCount()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler$ConnectionRetryTask;->mRetryCount:I

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler$ConnectionRetryTask;->mRetryCount:I

    .line 156
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler$ConnectionRetryTask;->shouldRetry()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler$ConnectionRetryTask;->mDevice:Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    invoke-virtual {p0, v0}, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler$ConnectionRetryTask;->task(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V

    .line 198
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler$ConnectionRetryTask;->isMaxRetry()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler$ConnectionRetryTask;->mDevice:Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    invoke-virtual {p0, v0}, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler$ConnectionRetryTask;->endOfMaxRetryTask(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V

    .line 203
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler$ConnectionRetryTask;->mMode:I

    .line 204
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler$ConnectionRetryTask;->mRetryCount:I

    .line 208
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler$ConnectionRetryTask;->increase()V

    .line 209
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 163
    iput p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler$ConnectionRetryTask;->mMode:I

    .line 164
    return-void
.end method

.method public abstract task(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V
.end method
