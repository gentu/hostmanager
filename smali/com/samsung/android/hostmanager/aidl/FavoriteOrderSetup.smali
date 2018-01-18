.class public Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;
.super Ljava/lang/Object;
.source "FavoriteOrderSetup.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appName:Ljava/lang/String;

.field private cellX:Ljava/lang/String;

.field private cellY:Ljava/lang/String;

.field private className:Ljava/lang/String;

.field private imgName:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private screen:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 123
    new-instance v0, Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup$1;

    invoke-direct {v0}, Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;->readFromParcel(Landroid/os/Parcel;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "screen"    # Ljava/lang/String;
    .param p4, "cellX"    # Ljava/lang/String;
    .param p5, "cellY"    # Ljava/lang/String;
    .param p6, "appName"    # Ljava/lang/String;
    .param p7, "imgName"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;->packageName:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;->className:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;->screen:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;->cellX:Ljava/lang/String;

    .line 22
    iput-object p5, p0, Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;->cellY:Ljava/lang/String;

    .line 23
    iput-object p6, p0, Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;->appName:Ljava/lang/String;

    .line 24
    iput-object p7, p0, Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;->imgName:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public getCellX()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;->cellX:Ljava/lang/String;

    return-object v0
.end method

.method public getCellY()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;->cellY:Ljava/lang/String;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getImageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;->imgName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;->screen:Ljava/lang/String;

    return-object v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;->packageName:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;->className:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;->screen:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;->cellX:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;->cellY:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;->appName:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;->imgName:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setCellX(Ljava/lang/String;)V
    .locals 0
    .param p1, "cellX"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;->cellX:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setCellY(Ljava/lang/String;)V
    .locals 0
    .param p1, "cellY"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;->cellY:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;->className:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setImageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "imgName"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;->imgName:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;->appName:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;->packageName:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setScreenOrder(Ljava/lang/String;)V
    .locals 0
    .param p1, "screen"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;->screen:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;->className:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;->screen:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;->cellX:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;->cellY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;->appName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;->imgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    return-void
.end method
