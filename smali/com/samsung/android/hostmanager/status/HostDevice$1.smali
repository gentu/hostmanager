.class Lcom/samsung/android/hostmanager/status/HostDevice$1;
.super Ljava/lang/Object;
.source "HostDevice.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/status/HostDevice;->getHostAppInfo(Landroid/content/Context;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/samsung/android/hostmanager/aidl/AppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final collator:Ljava/text/Collator;

.field final synthetic this$0:Lcom/samsung/android/hostmanager/status/HostDevice;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/status/HostDevice;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/status/HostDevice;

    .prologue
    .line 436
    iput-object p1, p0, Lcom/samsung/android/hostmanager/status/HostDevice$1;->this$0:Lcom/samsung/android/hostmanager/status/HostDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 438
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/status/HostDevice$1;->collator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/android/hostmanager/aidl/AppInfo;Lcom/samsung/android/hostmanager/aidl/AppInfo;)I
    .locals 3
    .param p1, "object1"    # Lcom/samsung/android/hostmanager/aidl/AppInfo;
    .param p2, "object2"    # Lcom/samsung/android/hostmanager/aidl/AppInfo;

    .prologue
    .line 442
    iget-object v0, p0, Lcom/samsung/android/hostmanager/status/HostDevice$1;->collator:Ljava/text/Collator;

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 436
    check-cast p1, Lcom/samsung/android/hostmanager/aidl/AppInfo;

    check-cast p2, Lcom/samsung/android/hostmanager/aidl/AppInfo;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/hostmanager/status/HostDevice$1;->compare(Lcom/samsung/android/hostmanager/aidl/AppInfo;Lcom/samsung/android/hostmanager/aidl/AppInfo;)I

    move-result v0

    return v0
.end method
