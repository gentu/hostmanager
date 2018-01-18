.class public final Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyDecision;
.super Ljava/lang/Object;
.source "PolicyDecision.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static pInstance:Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyDecision;


# instance fields
.field private mRuleParser:Lcom/samsung/android/hostmanager/connectionmanager/policy/RuleParserBTversion;

.field private mRuleTable:Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyTable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "PolicyDecision"

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyDecision;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyDecision;->mRuleParser:Lcom/samsung/android/hostmanager/connectionmanager/policy/RuleParserBTversion;

    .line 15
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyDecision;->mRuleTable:Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyTable;

    .line 19
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyDecision;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyDecision;->pInstance:Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyDecision;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyDecision;

    invoke-direct {v0}, Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyDecision;-><init>()V

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyDecision;->pInstance:Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyDecision;

    .line 37
    :cond_0
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyDecision;->pInstance:Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyDecision;

    return-object v0
.end method

.method private loadRulePaser()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyDecision;->mRuleParser:Lcom/samsung/android/hostmanager/connectionmanager/policy/RuleParserBTversion;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyDecision;->mRuleParser:Lcom/samsung/android/hostmanager/connectionmanager/policy/RuleParserBTversion;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/policy/RuleParserBTversion;->startParsing()V

    .line 49
    :cond_0
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyTable;->getInstance()Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyTable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyDecision;->mRuleTable:Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyTable;

    .line 51
    return-void
.end method


# virtual methods
.method public getPolicy(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "version"    # I
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "policyType"    # Ljava/lang/String;

    .prologue
    .line 57
    const-string v0, "DISABLE"

    .line 58
    .local v0, "policyResult":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyDecision;->mRuleTable:Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyTable;

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyDecision;->mRuleTable:Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyTable;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3}, Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyTable;->getPolicyRuleTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    :cond_0
    if-nez v0, :cond_1

    .line 63
    const/16 v1, 0x12

    if-lt p1, v1, :cond_2

    .line 64
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyDecision;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[POLICY] policyResult is null. let apply default policy : version is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=> ENABLE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v0, "ENABLE"

    .line 75
    :cond_1
    :goto_0
    return-object v0

    .line 69
    :cond_2
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyDecision;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[POLICY] policyResult is null. let apply default policy : version is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=> DISABLE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v0, "DISABLE"

    goto :goto_0
.end method

.method public getPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "hostLinkFeature"    # Ljava/lang/String;
    .param p2, "wearableLinkFeature"    # Ljava/lang/String;
    .param p3, "policyType"    # Ljava/lang/String;

    .prologue
    .line 83
    const/4 v0, 0x0

    .line 85
    .local v0, "policyResult":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyDecision;->mRuleTable:Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyTable;

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyDecision;->mRuleTable:Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyTable;

    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyTable;->getPolicyRuleTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    :cond_0
    return-object v0
.end method

.method public init(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)V
    .locals 1
    .param p1, "manager"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .prologue
    .line 22
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/policy/RuleParserBTversion;

    invoke-direct {v0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/policy/RuleParserBTversion;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyDecision;->mRuleParser:Lcom/samsung/android/hostmanager/connectionmanager/policy/RuleParserBTversion;

    .line 23
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyDecision;->loadRulePaser()V

    .line 25
    return-void
.end method
