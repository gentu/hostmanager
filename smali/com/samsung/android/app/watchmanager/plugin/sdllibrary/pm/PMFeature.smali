.class public Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PMFeature;
.super Ljava/lang/Object;
.source "PMFeature.java"

# interfaces
.implements Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/PMFeatureInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public FEATURE_DUAL_LCD()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    const-string v0, "com.sec.feature.dual_lcd"

    return-object v0
.end method

.method public FEATURE_FOLDER_TYPE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    const-string v0, "com.sec.feature.folder_type"

    return-object v0
.end method
