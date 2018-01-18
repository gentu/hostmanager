.class final Lcom/samsung/android/hostmanager/callforward/PrimaryUSSDResponceParserUtils$1;
.super Ljava/util/HashMap;
.source "PrimaryUSSDResponceParserUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/callforward/PrimaryUSSDResponceParserUtils;
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
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 30
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 32
    const-string v0, "SingTel"

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "YOU HAVE SELECTED THIS AS YOUR PREFERRED SIM CARD TO RECEIVE SMS/MMS/CALLS."

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/hostmanager/callforward/PrimaryUSSDResponceParserUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v0, "StarHub"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "SET AS PHONE:1"

    aput-object v2, v1, v3

    const-string v2, "SET AS PHONE: 1."

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/hostmanager/callforward/PrimaryUSSDResponceParserUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v0, "M1"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "SET AS PHONE:1"

    aput-object v2, v1, v3

    const-string v2, "SET AS PHONE:1."

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/hostmanager/callforward/PrimaryUSSDResponceParserUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v0, "Maxis"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "Handset activated successfully."

    aput-object v2, v1, v3

    const-string v2, "Handset is already active."

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/hostmanager/callforward/PrimaryUSSDResponceParserUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-void
.end method
