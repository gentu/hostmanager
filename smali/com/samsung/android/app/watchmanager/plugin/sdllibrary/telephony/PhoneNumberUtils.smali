.class public Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/telephony/PhoneNumberUtils;
.super Ljava/lang/Object;
.source "PhoneNumberUtils.java"

# interfaces
.implements Lcom/samsung/android/app/watchmanager/plugin/libinterface/telephony/PhoneNumberUtilsInterface;


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
    .locals 1

    .prologue
    .line 8
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getMinMatch()I

    move-result v0

    return v0
.end method
