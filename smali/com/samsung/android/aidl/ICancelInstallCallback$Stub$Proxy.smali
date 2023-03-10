.class Lcom/samsung/android/aidl/ICancelInstallCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICancelInstallCallback.java"

# interfaces
.implements Lcom/samsung/android/aidl/ICancelInstallCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/aidl/ICancelInstallCallback$Stub;
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
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/samsung/android/aidl/ICancelInstallCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 64
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/samsung/android/aidl/ICancelInstallCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public cancelInstallResult(Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 77
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.samsung.android.aidl.ICancelInstallCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget-object v1, p0, Lcom/samsung/android/aidl/ICancelInstallCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 85
    return-void

    .line 82
    :catchall_0
    move-exception v1

    .line 83
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 84
    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-string v0, "com.samsung.android.aidl.ICancelInstallCallback"

    return-object v0
.end method
