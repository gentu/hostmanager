.class Lcom/samsung/accessory/api/ICMDeathCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICMDeathCallback.java"

# interfaces
.implements Lcom/samsung/accessory/api/ICMDeathCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/api/ICMDeathCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/samsung/accessory/api/ICMDeathCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 62
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/accessory/api/ICMDeathCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 74
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 77
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.samsung.accessory.api.ICMDeathCallback"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 78
    iget-object v3, p0, Lcom/samsung/accessory/api/ICMDeathCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 79
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 80
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 83
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 84
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 86
    return-object v2

    .line 82
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 83
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 84
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 85
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const-string v0, "com.samsung.accessory.api.ICMDeathCallback"

    return-object v0
.end method
