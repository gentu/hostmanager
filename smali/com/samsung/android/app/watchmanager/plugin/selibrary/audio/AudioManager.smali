.class public Lcom/samsung/android/app/watchmanager/plugin/selibrary/audio/AudioManager;
.super Ljava/lang/Object;
.source "AudioManager.java"

# interfaces
.implements Lcom/samsung/android/app/watchmanager/plugin/libinterface/audio/AudioManagerInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEarProtectLimitIndex(Landroid/media/AudioManager;)I
    .locals 1
    .param p1, "am"    # Landroid/media/AudioManager;

    .prologue
    .line 10
    invoke-static {}, Landroid/media/AudioManager;->semGetEarProtectLimit()I

    move-result v0

    return v0
.end method
