.class public Lcom/samsung/android/hostmanager/callforward/PrimaryUSSDResponceParserUtils;
.super Ljava/lang/Object;
.source "PrimaryUSSDResponceParserUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HM_PrimaryUSSDResponceParserUtils"

.field private static final USSD_RESPONCE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/samsung/android/hostmanager/callforward/PrimaryUSSDResponceParserUtils$1;

    invoke-direct {v0}, Lcom/samsung/android/hostmanager/callforward/PrimaryUSSDResponceParserUtils$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hostmanager/callforward/PrimaryUSSDResponceParserUtils;->USSD_RESPONCE_MAP:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static displayUSSDInfo(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "carrier"    # Ljava/lang/String;

    .prologue
    .line 73
    const-string v1, "HM_PrimaryUSSDResponceParserUtils"

    const-string v2, "displayUSSDInfo starts"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/4 v0, 0x0

    .line 79
    .local v0, "displayText":Ljava/lang/CharSequence;
    invoke-static {p0, p1, p2}, Lcom/samsung/android/hostmanager/callforward/PrimaryUSSDResponceParserUtils;->resultCallForwardingResponse(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 81
    const-string v1, "HM_PrimaryUSSDResponceParserUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayUSSDInfo ends ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-object v0
.end method

.method public static isExistKey(Ljava/lang/String;)Z
    .locals 1
    .param p0, "carrier"    # Ljava/lang/String;

    .prologue
    .line 52
    sget-object v0, Lcom/samsung/android/hostmanager/callforward/PrimaryUSSDResponceParserUtils;->USSD_RESPONCE_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static parseUSSD(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "receiveUssd"    # Ljava/lang/String;
    .param p2, "carrier"    # Ljava/lang/String;

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "text":Ljava/lang/CharSequence;
    const-string v1, "HM_PrimaryUSSDResponceParserUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MMI code information - receivedUssd : ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], carrier ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    if-eqz p1, :cond_0

    .line 61
    invoke-static {p1, p0, p2}, Lcom/samsung/android/hostmanager/callforward/PrimaryUSSDResponceParserUtils;->displayUSSDInfo(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 69
    :goto_0
    return-object v1

    .line 65
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 67
    :cond_1
    const-string v1, "HM_PrimaryUSSDResponceParserUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MMI result message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 69
    goto :goto_0
.end method

.method private static resultCallForwardingResponse(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "carrier"    # Ljava/lang/String;

    .prologue
    .line 87
    const-string v3, "HM_PrimaryUSSDResponceParserUtils"

    const-string v4, "resultCallForwardingResponse starts"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v2, 0x0

    .line 90
    .local v2, "result":Ljava/lang/CharSequence;
    sget-object v3, Lcom/samsung/android/hostmanager/callforward/PrimaryUSSDResponceParserUtils;->USSD_RESPONCE_MAP:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 91
    .local v0, "possibleResponces":[Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 92
    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 93
    .local v1, "responce":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 94
    const-string v2, "activate success"

    .line 101
    .end local v1    # "responce":Ljava/lang/String;
    :cond_0
    :goto_1
    const-string v3, "HM_PrimaryUSSDResponceParserUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resultCallForwardingResponse ends ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-object v2

    .line 92
    .restart local v1    # "responce":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 99
    .end local v1    # "responce":Ljava/lang/String;
    :cond_2
    const-string v3, "HM_PrimaryUSSDResponceParserUtils"

    const-string v4, "possibleResponces not exist"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
