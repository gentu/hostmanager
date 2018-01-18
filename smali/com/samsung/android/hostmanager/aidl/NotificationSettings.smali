.class public Lcom/samsung/android/hostmanager/aidl/NotificationSettings;
.super Ljava/lang/Object;
.source "NotificationSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hostmanager/aidl/NotificationSettings$AlertType;
    }
.end annotation


# static fields
.field public static final ALERTTYPE_FULL_SCREEN_POPUP:I = 0x0

.field public static final ALERTTYPE_MINI_POPUP:I = 0x1

.field public static final ALERTTYPE_NO_ALERT:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/NotificationSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isOn:Z

.field private limitNotifications:Z

.field private previewMessage:I

.field private screenOnoff:Z

.field private summaryPanel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lcom/samsung/android/hostmanager/aidl/NotificationSettings$1;

    invoke-direct {v0}, Lcom/samsung/android/hostmanager/aidl/NotificationSettings$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hostmanager/aidl/NotificationSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/aidl/NotificationSettings;->readFromParcel(Landroid/os/Parcel;)V

    .line 62
    return-void
.end method

.method public constructor <init>(ZIZZ)V
    .locals 1
    .param p1, "isOn"    # Z
    .param p2, "previewM"    # I
    .param p3, "limit"    # Z
    .param p4, "screenOnoff"    # Z

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/aidl/NotificationSettings;->isOn:Z

    .line 49
    iput p2, p0, Lcom/samsung/android/hostmanager/aidl/NotificationSettings;->previewMessage:I

    .line 50
    iput-boolean p3, p0, Lcom/samsung/android/hostmanager/aidl/NotificationSettings;->limitNotifications:Z

    .line 51
    iput-boolean p4, p0, Lcom/samsung/android/hostmanager/aidl/NotificationSettings;->screenOnoff:Z

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/NotificationSettings;->summaryPanel:Z

    .line 53
    return-void
.end method

.method public constructor <init>(ZIZZZ)V
    .locals 0
    .param p1, "isOn"    # Z
    .param p2, "previewM"    # I
    .param p3, "limit"    # Z
    .param p4, "screenOnoff"    # Z
    .param p5, "summaryPanel"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/hostmanager/aidl/NotificationSettings;-><init>(ZIZZ)V

    .line 57
    iput-boolean p5, p0, Lcom/samsung/android/hostmanager/aidl/NotificationSettings;->summaryPanel:Z

    .line 58
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public getLimitNotification()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/NotificationSettings;->limitNotifications:Z

    return v0
.end method

.method public getPreviewMessage()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/samsung/android/hostmanager/aidl/NotificationSettings;->previewMessage:I

    return v0
.end method

.method public getScreenOnoff()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/NotificationSettings;->screenOnoff:Z

    return v0
.end method

.method public getSummaryPanel()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/NotificationSettings;->summaryPanel:Z

    return v0
.end method

.method public isOn()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/NotificationSettings;->isOn:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/NotificationSettings;->isOn:Z

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/hostmanager/aidl/NotificationSettings;->previewMessage:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/NotificationSettings;->limitNotifications:Z

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/NotificationSettings;->screenOnoff:Z

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_3

    :goto_3
    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/aidl/NotificationSettings;->summaryPanel:Z

    .line 85
    return-void

    :cond_0
    move v0, v2

    .line 80
    goto :goto_0

    :cond_1
    move v0, v2

    .line 82
    goto :goto_1

    :cond_2
    move v0, v2

    .line 83
    goto :goto_2

    :cond_3
    move v1, v2

    .line 84
    goto :goto_3
.end method

.method public setLimitNotification(Z)V
    .locals 0
    .param p1, "limitNotification"    # Z

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/aidl/NotificationSettings;->limitNotifications:Z

    .line 122
    return-void
.end method

.method public setOn(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/aidl/NotificationSettings;->isOn:Z

    .line 106
    return-void
.end method

.method public setPreviewMessage(I)V
    .locals 0
    .param p1, "preview"    # I

    .prologue
    .line 113
    iput p1, p0, Lcom/samsung/android/hostmanager/aidl/NotificationSettings;->previewMessage:I

    .line 114
    return-void
.end method

.method public setScreenOnoff(Z)V
    .locals 0
    .param p1, "screenOnoff"    # Z

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/aidl/NotificationSettings;->screenOnoff:Z

    return-void
.end method

.method public setSummaryPanel(Z)V
    .locals 0
    .param p1, "summaryPanel"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/aidl/NotificationSettings;->summaryPanel:Z

    .line 136
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 72
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/NotificationSettings;->isOn:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 73
    iget v0, p0, Lcom/samsung/android/hostmanager/aidl/NotificationSettings;->previewMessage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/NotificationSettings;->limitNotifications:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 75
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/NotificationSettings;->screenOnoff:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 76
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/NotificationSettings;->summaryPanel:Z

    if-eqz v0, :cond_3

    :goto_3
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 77
    return-void

    :cond_0
    move v0, v2

    .line 72
    goto :goto_0

    :cond_1
    move v0, v2

    .line 74
    goto :goto_1

    :cond_2
    move v0, v2

    .line 75
    goto :goto_2

    :cond_3
    move v1, v2

    .line 76
    goto :goto_3
.end method
