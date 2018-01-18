.class public Lcom/samsung/android/app/watchmanager/plugin/libfactory/telephony/PhoneNumberUtilsFactory;
.super Ljava/lang/Object;
.source "PhoneNumberUtilsFactory.java"


# static fields
.field private static sInterface:Lcom/samsung/android/app/watchmanager/plugin/libinterface/telephony/PhoneNumberUtilsInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/app/watchmanager/plugin/libfactory/telephony/PhoneNumberUtilsFactory;->sInterface:Lcom/samsung/android/app/watchmanager/plugin/libinterface/telephony/PhoneNumberUtilsInterface;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/telephony/PhoneNumberUtilsInterface;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/samsung/android/app/watchmanager/plugin/libfactory/telephony/PhoneNumberUtilsFactory;->sInterface:Lcom/samsung/android/app/watchmanager/plugin/libinterface/telephony/PhoneNumberUtilsInterface;

    if-nez v0, :cond_0

    .line 12
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/util/FeatureUtil;->supportSem()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    new-instance v0, Lcom/samsung/android/app/watchmanager/plugin/selibrary/telephony/PhoneNumberUtils;

    invoke-direct {v0}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/telephony/PhoneNumberUtils;-><init>()V

    sput-object v0, Lcom/samsung/android/app/watchmanager/plugin/libfactory/telephony/PhoneNumberUtilsFactory;->sInterface:Lcom/samsung/android/app/watchmanager/plugin/libinterface/telephony/PhoneNumberUtilsInterface;

    .line 18
    :cond_0
    :goto_0
    sget-object v0, Lcom/samsung/android/app/watchmanager/plugin/libfactory/telephony/PhoneNumberUtilsFactory;->sInterface:Lcom/samsung/android/app/watchmanager/plugin/libinterface/telephony/PhoneNumberUtilsInterface;

    return-object v0

    .line 15
    :cond_1
    new-instance v0, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/telephony/PhoneNumberUtils;

    invoke-direct {v0}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/telephony/PhoneNumberUtils;-><init>()V

    sput-object v0, Lcom/samsung/android/app/watchmanager/plugin/libfactory/telephony/PhoneNumberUtilsFactory;->sInterface:Lcom/samsung/android/app/watchmanager/plugin/libinterface/telephony/PhoneNumberUtilsInterface;

    goto :goto_0
.end method
