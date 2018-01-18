.class public Lcom/samsung/android/app/watchmanager/plugin/selibrary/telephony/PhoneNumberUtils;
.super Ljava/lang/Object;
.source "PhoneNumberUtils.java"

# interfaces
.implements Lcom/samsung/android/app/watchmanager/plugin/libinterface/telephony/PhoneNumberUtilsInterface;


# static fields
.field static final MIN_MATCH:I = 0x7

.field public static final TAG_CSCFEATURE_RIL_CALLERIDMATCHINGDIGIT:Ljava/lang/String; = "CscFeature_RIL_CallerIdMatchingDigit"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMinMatch()I
    .locals 4

    .prologue
    .line 13
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 14
    .local v0, "cscFeature":Lcom/samsung/android/feature/SemCscFeature;
    const-string v2, "CscFeature_RIL_CallerIdMatchingDigit"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 15
    const/4 v1, 0x7

    .line 19
    .local v1, "ret":I
    :goto_0
    return v1

    .line 17
    .end local v1    # "ret":I
    :cond_0
    const-string v2, "CscFeature_RIL_CallerIdMatchingDigit"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getInt(Ljava/lang/String;)I

    move-result v1

    .restart local v1    # "ret":I
    goto :goto_0
.end method
