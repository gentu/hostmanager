.class Lcom/samsung/android/hostmanager/HMApplication$ContactsObserver;
.super Landroid/database/ContentObserver;
.source "HMApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/HMApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/HMApplication;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hostmanager/HMApplication;)V
    .locals 1

    .prologue
    .line 258
    iput-object p1, p0, Lcom/samsung/android/hostmanager/HMApplication$ContactsObserver;->this$0:Lcom/samsung/android/hostmanager/HMApplication;

    .line 259
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 260
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 264
    const-string v1, "HMApplication"

    const-string v2, "Contacts changed"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.accessory.saproviders.sacontact.DATA_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 266
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "URI"

    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->access$200()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 267
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->access$000()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 268
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 269
    return-void
.end method
