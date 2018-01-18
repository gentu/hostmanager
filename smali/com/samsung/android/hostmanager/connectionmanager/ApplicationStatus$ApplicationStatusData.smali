.class public Lcom/samsung/android/hostmanager/connectionmanager/ApplicationStatus$ApplicationStatusData;
.super Ljava/lang/Object;
.source "ApplicationStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/ApplicationStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApplicationStatusData"
.end annotation


# instance fields
.field private mID:Ljava/lang/String;

.field private mMessenger:Landroid/os/Messenger;

.field private mUsedProfileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ApplicationStatus$ApplicationStatusData;->mID:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ApplicationStatus$ApplicationStatusData;->mMessenger:Landroid/os/Messenger;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ApplicationStatus$ApplicationStatusData;->mUsedProfileList:Ljava/util/ArrayList;

    .line 25
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ApplicationStatus$ApplicationStatusData;->mID:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public addUsedProfile(Ljava/lang/String;)V
    .locals 1
    .param p1, "profile"    # Ljava/lang/String;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ApplicationStatus$ApplicationStatusData;->mUsedProfileList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    return-void
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ApplicationStatus$ApplicationStatusData;->mID:Ljava/lang/String;

    return-object v0
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ApplicationStatus$ApplicationStatusData;->mMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method public getUsedProfileList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ApplicationStatus$ApplicationStatusData;->mUsedProfileList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setMessenger(Landroid/os/Messenger;)V
    .locals 0
    .param p1, "messenger"    # Landroid/os/Messenger;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ApplicationStatus$ApplicationStatusData;->mMessenger:Landroid/os/Messenger;

    .line 30
    return-void
.end method
