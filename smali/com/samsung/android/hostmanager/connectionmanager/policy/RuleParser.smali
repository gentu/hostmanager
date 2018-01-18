.class public abstract Lcom/samsung/android/hostmanager/connectionmanager/policy/RuleParser;
.super Ljava/lang/Object;
.source "RuleParser.java"


# instance fields
.field protected mManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/policy/RuleParser;->mManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    return-void
.end method


# virtual methods
.method protected abstract getXMLFileFromAssets(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract pullparserFromXML(Ljava/lang/String;)V
.end method

.method public startParsing()V
    .locals 3

    .prologue
    .line 19
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/policy/RuleParser;->mManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    if-eqz v2, :cond_0

    .line 20
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/policy/RuleParser;->mManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {p0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/policy/RuleParser;->getXMLFileFromAssets(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)Ljava/lang/String;

    move-result-object v1

    .line 21
    .local v1, "personXMLString":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/policy/RuleParser;->pullparserFromXML(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .end local v1    # "personXMLString":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 23
    :catch_0
    move-exception v0

    .line 25
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
