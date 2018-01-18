.class public Lcom/samsung/android/hostmanager/br/ReinstallInfo;
.super Ljava/lang/Object;
.source "ReinstallInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hostmanager/br/ReinstallInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static TAG:Ljava/lang/String;


# instance fields
.field private appName:Ljava/lang/String;

.field private bPackageName:Ljava/lang/String;

.field private hPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "Bmanager.ReinstallInfo"

    sput-object v0, Lcom/samsung/android/hostmanager/br/ReinstallInfo;->TAG:Ljava/lang/String;

    .line 67
    new-instance v0, Lcom/samsung/android/hostmanager/br/ReinstallInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/hostmanager/br/ReinstallInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hostmanager/br/ReinstallInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/br/ReinstallInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "hPackageName"    # Ljava/lang/String;
    .param p3, "bPackageName"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/samsung/android/hostmanager/br/ReinstallInfo;->appName:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/samsung/android/hostmanager/br/ReinstallInfo;->hPackageName:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/samsung/android/hostmanager/br/ReinstallInfo;->bPackageName:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/ReinstallInfo;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/ReinstallInfo;->hPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getbPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/ReinstallInfo;->bPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/ReinstallInfo;->appName:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/ReinstallInfo;->hPackageName:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setClockInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/samsung/android/hostmanager/br/ReinstallInfo;->appName:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/samsung/android/hostmanager/br/ReinstallInfo;->hPackageName:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setbPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bPackageName"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/samsung/android/hostmanager/br/ReinstallInfo;->bPackageName:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 57
    sget-object v0, Lcom/samsung/android/hostmanager/br/ReinstallInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeToParcel..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/ReinstallInfo;->appName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/ReinstallInfo;->hPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    return-void
.end method
