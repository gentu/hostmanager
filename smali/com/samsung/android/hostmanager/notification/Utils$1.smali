.class final Lcom/samsung/android/hostmanager/notification/Utils$1;
.super Ljava/util/HashMap;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/notification/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 223
    const-string v0, "call"

    const-string v1, "com.android.phone"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/hostmanager/notification/Utils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const-string v0, "alarm"

    sget-object v1, Lcom/samsung/android/hostmanager/notification/Utils;->REAL_PACKAGENAME_ALARM:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/hostmanager/notification/Utils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string v0, "missedcall"

    const-string v1, "com.android.phone"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/hostmanager/notification/Utils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string v0, "voicemail"

    const-string v1, "com.android.phone"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/hostmanager/notification/Utils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string v0, "com.sec.android.widgetapp.ap.hero.accuweather"

    const-string v1, "com.sec.android.widgetapp.ap.hero.accuweather"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/hostmanager/notification/Utils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    return-void
.end method
