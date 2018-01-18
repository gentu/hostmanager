.class public Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyTable;
.super Ljava/lang/Object;
.source "PolicyTable.java"


# static fields
.field private static pInstance:Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyTable;


# instance fields
.field private mRuleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyTable;->createRuleTableMap()V

    .line 17
    return-void
.end method

.method private createKeyString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "policy"    # Ljava/lang/String;
    .param p2, "row"    # Ljava/lang/String;
    .param p3, "col"    # Ljava/lang/String;

    .prologue
    .line 31
    const/4 v0, 0x0

    .line 32
    .local v0, "ret":Ljava/lang/String;
    move-object v0, p1

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    return-object v0
.end method

.method public static getInstance()Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyTable;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyTable;->pInstance:Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyTable;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyTable;

    invoke-direct {v0}, Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyTable;-><init>()V

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyTable;->pInstance:Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyTable;

    .line 45
    :cond_0
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyTable;->pInstance:Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyTable;

    return-object v0
.end method


# virtual methods
.method public createRuleTableMap()V
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyTable;->mRuleMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyTable;->mRuleMap:Ljava/util/HashMap;

    .line 23
    :cond_0
    return-void
.end method

.method public getPolicyRuleTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "row"    # Ljava/lang/String;
    .param p2, "col"    # Ljava/lang/String;
    .param p3, "PolicyType"    # Ljava/lang/String;

    .prologue
    .line 49
    const/4 v1, 0x0

    .line 50
    .local v1, "result":Ljava/lang/String;
    const/4 v0, 0x0

    .line 52
    .local v0, "Key":Ljava/lang/String;
    invoke-direct {p0, p3, p1, p2}, Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyTable;->createKeyString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_0

    .line 54
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyTable;->mRuleMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "result":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 55
    .restart local v1    # "result":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public printPolicy()V
    .locals 5

    .prologue
    .line 60
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyTable;->mRuleMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 61
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 63
    .local v1, "key":Ljava/lang/String;
    const-string v2, "PolicyTable"

    const-string v3, "[POLICY] --------------------Parseing Data start---------------------------"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v2, "PolicyTable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[POLICY] Policy key is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v3, "PolicyTable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[POLICY] Policy value is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyTable;->mRuleMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v2, "PolicyTable"

    const-string v3, " "

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 69
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public pushRuleMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "policy"    # Ljava/lang/String;
    .param p2, "row"    # Ljava/lang/String;
    .param p3, "col"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyTable;->mRuleMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyTable;->mRuleMap:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyTable;->createKeyString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :cond_0
    return-void
.end method
