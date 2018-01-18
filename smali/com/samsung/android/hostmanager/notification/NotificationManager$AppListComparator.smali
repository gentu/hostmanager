.class Lcom/samsung/android/hostmanager/notification/NotificationManager$AppListComparator;
.super Ljava/lang/Object;
.source "NotificationManager.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/notification/NotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppListComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/samsung/android/hostmanager/aidl/NotificationApp;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/hostmanager/notification/NotificationManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/hostmanager/notification/NotificationManager$1;

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/notification/NotificationManager$AppListComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/android/hostmanager/aidl/NotificationApp;Lcom/samsung/android/hostmanager/aidl/NotificationApp;)I
    .locals 2
    .param p1, "o1"    # Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    .param p2, "o2"    # Lcom/samsung/android/hostmanager/aidl/NotificationApp;

    .prologue
    .line 274
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 271
    check-cast p1, Lcom/samsung/android/hostmanager/aidl/NotificationApp;

    check-cast p2, Lcom/samsung/android/hostmanager/aidl/NotificationApp;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/hostmanager/notification/NotificationManager$AppListComparator;->compare(Lcom/samsung/android/hostmanager/aidl/NotificationApp;Lcom/samsung/android/hostmanager/aidl/NotificationApp;)I

    move-result v0

    return v0
.end method
