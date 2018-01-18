.class Lcom/samsung/android/hostmanager/wearablesettings/Condition;
.super Ljava/lang/Object;
.source "SettingsItemInfo.java"


# instance fields
.field RelatedID:Ljava/lang/String;

.field Type:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "relatedID"    # Ljava/lang/String;

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/Condition;->Type:Ljava/lang/String;

    .line 223
    iput-object p2, p0, Lcom/samsung/android/hostmanager/wearablesettings/Condition;->RelatedID:Ljava/lang/String;

    .line 224
    return-void
.end method


# virtual methods
.method public getRelatedID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/Condition;->RelatedID:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/Condition;->Type:Ljava/lang/String;

    return-object v0
.end method

.method public setRelatedID(Ljava/lang/String;)V
    .locals 0
    .param p1, "relatedID"    # Ljava/lang/String;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/Condition;->RelatedID:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/Condition;->Type:Ljava/lang/String;

    .line 228
    return-void
.end method
