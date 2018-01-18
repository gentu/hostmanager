.class public Lcom/samsung/android/hostmanager/wearablesettings/SettingsCondition;
.super Ljava/lang/Object;
.source "SettingsCondition.java"


# instance fields
.field mRelatedID:Ljava/lang/String;

.field mType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "relatedID"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsCondition;->mType:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsCondition;->mRelatedID:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public getRelatedID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsCondition;->mRelatedID:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsCondition;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public setRelatedID(Ljava/lang/String;)V
    .locals 0
    .param p1, "relatedID"    # Ljava/lang/String;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsCondition;->mRelatedID:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 12
    iput-object p1, p0, Lcom/samsung/android/hostmanager/wearablesettings/SettingsCondition;->mType:Ljava/lang/String;

    .line 13
    return-void
.end method
