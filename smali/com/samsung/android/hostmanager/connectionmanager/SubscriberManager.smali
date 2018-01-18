.class public Lcom/samsung/android/hostmanager/connectionmanager/SubscriberManager;
.super Ljava/lang/Object;
.source "SubscriberManager.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mEventSubscriberList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field

.field private mResponseMessengerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "SubscriberManager"

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/SubscriberManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)V
    .locals 1
    .param p1, "manager"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SubscriberManager;->mEventSubscriberList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 27
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SubscriberManager;->mResponseMessengerMap:Ljava/util/HashMap;

    .line 31
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SubscriberManager;->initialize()V

    .line 32
    return-void
.end method

.method private initialize()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SubscriberManager;->mEventSubscriberList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SubscriberManager;->mResponseMessengerMap:Ljava/util/HashMap;

    .line 37
    return-void
.end method


# virtual methods
.method public addResponseMessenger(JLandroid/os/Messenger;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "messenger"    # Landroid/os/Messenger;

    .prologue
    .line 69
    if-eqz p3, :cond_0

    .line 70
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SubscriberManager;->mResponseMessengerMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_0
    return-void
.end method

.method public getEventSubscribers()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/SubscriberManager;->TAG:Ljava/lang/String;

    const-string v1, "[MSG] getEventSubscribers..."

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SubscriberManager;->mEventSubscriberList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public getResponseMessenger(J)Landroid/os/Messenger;
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SubscriberManager;->mResponseMessengerMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    return-object v0
.end method

.method public registerEventSubscriber(Landroid/os/Messenger;)Z
    .locals 3
    .param p1, "messenger"    # Landroid/os/Messenger;

    .prologue
    .line 51
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/SubscriberManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MSG] registerEventSubscriber : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SubscriberManager;->mEventSubscriberList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeResponseMessenger(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 75
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SubscriberManager;->mResponseMessengerMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-void
.end method

.method public terminate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SubscriberManager;->mEventSubscriberList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 41
    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SubscriberManager;->mEventSubscriberList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 43
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SubscriberManager;->mResponseMessengerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 44
    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SubscriberManager;->mResponseMessengerMap:Ljava/util/HashMap;

    .line 45
    return-void
.end method

.method public unregisterEventSubscriber(Landroid/os/Messenger;)Z
    .locals 2
    .param p1, "messenger"    # Landroid/os/Messenger;

    .prologue
    .line 56
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/SubscriberManager;->TAG:Ljava/lang/String;

    const-string v1, "[MSG] unregisterEventSubscriber..."

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SubscriberManager;->mEventSubscriberList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
