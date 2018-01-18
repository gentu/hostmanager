.class public Lcom/samsung/android/uhm/framework/ui/drawermenu/SpinnerMenuItem;
.super Ljava/lang/Object;
.source "SpinnerMenuItem.java"


# instance fields
.field private isSelected:Z

.field private mDeviceId:Ljava/lang/String;

.field private mDeviceStatus:I

.field private mDisplayName:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "isSelected"    # Z

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/samsung/android/uhm/framework/ui/drawermenu/SpinnerMenuItem;->mDisplayName:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/samsung/android/uhm/framework/ui/drawermenu/SpinnerMenuItem;->mPackageName:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/samsung/android/uhm/framework/ui/drawermenu/SpinnerMenuItem;->mDeviceId:Ljava/lang/String;

    .line 18
    invoke-virtual {p0, p4}, Lcom/samsung/android/uhm/framework/ui/drawermenu/SpinnerMenuItem;->setSelected(Z)V

    .line 19
    return-void
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/drawermenu/SpinnerMenuItem;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceStatus()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/samsung/android/uhm/framework/ui/drawermenu/SpinnerMenuItem;->mDeviceStatus:I

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/drawermenu/SpinnerMenuItem;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/drawermenu/SpinnerMenuItem;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/samsung/android/uhm/framework/ui/drawermenu/SpinnerMenuItem;->isSelected:Z

    return v0
.end method

.method public setDeviceStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/samsung/android/uhm/framework/ui/drawermenu/SpinnerMenuItem;->mDeviceStatus:I

    .line 47
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "isSelected"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/samsung/android/uhm/framework/ui/drawermenu/SpinnerMenuItem;->isSelected:Z

    .line 39
    return-void
.end method
