.class public Lcom/samsung/android/hostmanager/br/FavoriteInfo;
.super Ljava/lang/Object;
.source "FavoriteInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hostmanager/br/FavoriteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Bmanager.FavoriteInfo"


# instance fields
.field private IsAppWidget:Z

.field private favoriteClassName:Ljava/lang/String;

.field private favoriteImageName:Ljava/lang/String;

.field private favoriteName:Ljava/lang/String;

.field private favoritePackageName:Ljava/lang/String;

.field private favoriteSettingFileName:Ljava/lang/String;

.field private isPreload:Z

.field private precheckSettingCondition:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lcom/samsung/android/hostmanager/br/FavoriteInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/hostmanager/br/FavoriteInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hostmanager/br/FavoriteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/br/FavoriteInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "packagename"    # Ljava/lang/String;
    .param p3, "classname"    # Ljava/lang/String;
    .param p4, "imagename"    # Ljava/lang/String;
    .param p5, "settingfilename"    # Ljava/lang/String;
    .param p6, "isappwidget"    # Z
    .param p7, "preloadState"    # Z
    .param p8, "precheckSettingCondition"    # Z

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/samsung/android/hostmanager/br/FavoriteInfo;->favoriteName:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/samsung/android/hostmanager/br/FavoriteInfo;->favoritePackageName:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/samsung/android/hostmanager/br/FavoriteInfo;->favoriteClassName:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lcom/samsung/android/hostmanager/br/FavoriteInfo;->favoriteImageName:Ljava/lang/String;

    .line 32
    iput-object p5, p0, Lcom/samsung/android/hostmanager/br/FavoriteInfo;->favoriteSettingFileName:Ljava/lang/String;

    .line 33
    iput-boolean p6, p0, Lcom/samsung/android/hostmanager/br/FavoriteInfo;->IsAppWidget:Z

    .line 34
    iput-boolean p7, p0, Lcom/samsung/android/hostmanager/br/FavoriteInfo;->isPreload:Z

    .line 35
    iput-boolean p8, p0, Lcom/samsung/android/hostmanager/br/FavoriteInfo;->precheckSettingCondition:Z

    .line 36
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/FavoriteInfo;->favoriteClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getImageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/FavoriteInfo;->favoriteImageName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/FavoriteInfo;->favoriteName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/FavoriteInfo;->favoritePackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPreCheckSettingCondition()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/br/FavoriteInfo;->precheckSettingCondition:Z

    return v0
.end method

.method public getPreloadState()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/br/FavoriteInfo;->isPreload:Z

    return v0
.end method

.method public getSettingFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/FavoriteInfo;->favoriteSettingFileName:Ljava/lang/String;

    return-object v0
.end method

.method public isAppWidget()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/br/FavoriteInfo;->IsAppWidget:Z

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/FavoriteInfo;->favoriteName:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/FavoriteInfo;->favoritePackageName:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/FavoriteInfo;->favoriteClassName:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/FavoriteInfo;->favoriteImageName:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/FavoriteInfo;->favoriteSettingFileName:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/br/FavoriteInfo;->IsAppWidget:Z

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/br/FavoriteInfo;->isPreload:Z

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/br/FavoriteInfo;->precheckSettingCondition:Z

    .line 108
    return-void

    :cond_0
    move v0, v2

    .line 105
    goto :goto_0

    :cond_1
    move v0, v2

    .line 106
    goto :goto_1

    :cond_2
    move v1, v2

    .line 107
    goto :goto_2
.end method

.method public setFavoriteInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "packagename"    # Ljava/lang/String;
    .param p3, "classname"    # Ljava/lang/String;
    .param p4, "imagename"    # Ljava/lang/String;
    .param p5, "settingfilename"    # Ljava/lang/String;
    .param p6, "isappwidget"    # Z
    .param p7, "preloadState"    # Z
    .param p8, "precheckSettingCondition"    # Z

    .prologue
    .line 39
    iput-object p1, p0, Lcom/samsung/android/hostmanager/br/FavoriteInfo;->favoriteName:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/samsung/android/hostmanager/br/FavoriteInfo;->favoritePackageName:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/samsung/android/hostmanager/br/FavoriteInfo;->favoriteClassName:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcom/samsung/android/hostmanager/br/FavoriteInfo;->favoriteImageName:Ljava/lang/String;

    .line 43
    iput-object p5, p0, Lcom/samsung/android/hostmanager/br/FavoriteInfo;->favoriteSettingFileName:Ljava/lang/String;

    .line 44
    iput-boolean p6, p0, Lcom/samsung/android/hostmanager/br/FavoriteInfo;->IsAppWidget:Z

    .line 45
    iput-boolean p7, p0, Lcom/samsung/android/hostmanager/br/FavoriteInfo;->isPreload:Z

    .line 46
    iput-boolean p8, p0, Lcom/samsung/android/hostmanager/br/FavoriteInfo;->precheckSettingCondition:Z

    .line 47
    return-void
.end method

.method public setPreCheckSettingCondition(Z)V
    .locals 0
    .param p1, "preCheckSettingCondition"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/br/FavoriteInfo;->precheckSettingCondition:Z

    .line 73
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 88
    const-string v0, "Bmanager.FavoriteInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeToParcel..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/FavoriteInfo;->favoriteName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/FavoriteInfo;->favoritePackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/FavoriteInfo;->favoriteClassName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/FavoriteInfo;->favoriteImageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/FavoriteInfo;->favoriteSettingFileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/br/FavoriteInfo;->IsAppWidget:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 95
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/br/FavoriteInfo;->isPreload:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 96
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/br/FavoriteInfo;->precheckSettingCondition:Z

    if-eqz v0, :cond_2

    :goto_2
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 97
    return-void

    :cond_0
    move v0, v2

    .line 94
    goto :goto_0

    :cond_1
    move v0, v2

    .line 95
    goto :goto_1

    :cond_2
    move v1, v2

    .line 96
    goto :goto_2
.end method
