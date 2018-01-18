.class public Lcom/samsung/android/uhm/framework/ui/drawermenu/DrawerMenuItem;
.super Ljava/lang/Object;
.source "DrawerMenuItem.java"


# instance fields
.field private isSelected:Z

.field private mDeviceId:Ljava/lang/String;

.field private mDeviceStatus:I

.field private mDisplayName:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "deviceStatus"    # I
    .param p5, "isSelected"    # Z

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/samsung/android/uhm/framework/ui/drawermenu/DrawerMenuItem;->mDisplayName:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/samsung/android/uhm/framework/ui/drawermenu/DrawerMenuItem;->mPackageName:Ljava/lang/String;

    .line 20
    iput p4, p0, Lcom/samsung/android/uhm/framework/ui/drawermenu/DrawerMenuItem;->mDeviceStatus:I

    .line 21
    iput-object p3, p0, Lcom/samsung/android/uhm/framework/ui/drawermenu/DrawerMenuItem;->mDeviceId:Ljava/lang/String;

    .line 22
    invoke-virtual {p0, p5}, Lcom/samsung/android/uhm/framework/ui/drawermenu/DrawerMenuItem;->setSelected(Z)V

    .line 23
    return-void
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/drawermenu/DrawerMenuItem;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceStatus()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/samsung/android/uhm/framework/ui/drawermenu/DrawerMenuItem;->mDeviceStatus:I

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/drawermenu/DrawerMenuItem;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/drawermenu/DrawerMenuItem;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/samsung/android/uhm/framework/ui/drawermenu/DrawerMenuItem;->isSelected:Z

    return v0
.end method

.method public setDeviceStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/samsung/android/uhm/framework/ui/drawermenu/DrawerMenuItem;->mDeviceStatus:I

    .line 51
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "isSelected"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/samsung/android/uhm/framework/ui/drawermenu/DrawerMenuItem;->isSelected:Z

    .line 43
    return-void
.end method
