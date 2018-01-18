.class public abstract Lcom/samsung/android/sdk/connectionmanager/ScmController;
.super Ljava/lang/Object;
.source "ScmController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/connectionmanager/ScmController$State;,
        Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;,
        Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;,
        Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;,
        Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;,
        Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;,
        Lcom/samsung/android/sdk/connectionmanager/ScmController$BondState;,
        Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkFeature;,
        Lcom/samsung/android/sdk/connectionmanager/ScmController$EventListener;,
        Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;
    }
.end annotation


# static fields
.field public static final BLUETOOTH_BOND_STATE_BONDED:I = 0x2

.field public static final BLUETOOTH_BOND_STATE_BONDING:I = 0x1

.field public static final BLUETOOTH_BOND_STATE_NONE:I = 0x0

.field public static final BLUETOOTH_LINK_FEATUREE_LE:I = 0x2

.field public static final BLUETOOTH_LINK_FEATURE_DUAL:I = 0x3

.field public static final BLUETOOTH_LINK_FEATURE_EDR:I = 0x1

.field public static final BLUETOOTH_LINK_FEATURE_UNKNOWN:I = 0x0

.field public static final BLUETOOTH_SERVICE_TYPE_ALL:I = 0x4

.field public static final BLUETOOTH_SERVICE_TYPE_GATT:I = 0x3

.field public static final BLUETOOTH_SERVICE_TYPE_HFP:I = 0x0

.field public static final BLUETOOTH_SERVICE_TYPE_PAN:I = 0x1

.field public static final BLUETOOTH_SERVICE_TYPE_SPP:I = 0x2

.field public static final ERROR_SCS_ACCOUNT_AUTHENTICATION_FAILED:I = 0xb

.field public static final ERROR_SCS_ACCOUNT_INITIALIZATION_FAILED:I = 0xa

.field public static final ERROR_SCS_ACCOUNT_NOT_FOUND:I = 0xc

.field public static final ERROR_SPP_CLOSE_FAILED:I = 0x0

.field public static final ERROR_SPP_CONNECT_FAILED:I = 0x1

.field public static final ERROR_SPP_CREATION_FAILED:I = 0x2

.field public static final ERROR_SPP_FATAL:I = 0x4

.field public static final ERROR_SPP_FRAMEWORK_INCOMPATIBLE:I = 0x5

.field public static final ERROR_SPP_READ_WRITE_FAILED:I = 0x3

.field public static final ERROR_WIFIP2P_CONNECT_BUSY:I = 0x8

.field public static final ERROR_WIFIP2P_CONNECT_ERROR:I = 0x6

.field public static final ERROR_WIFIP2P_CONNECT_NOT_SUPPORTED:I = 0x9

.field public static final ERROR_WIFIP2P_CONNECT_TIMEOUT:I = 0x7

.field public static final SCS_SERVICE_TYPE_ALL:I = 0x5

.field public static final STATE_CM_AVAILABLE:I = 0x0

.field public static final STATE_CM_RECOVERY:I = 0x1

.field public static final STATE_CONNECTED:I = 0x1

.field public static final STATE_CONNECTING:I = 0x0

.field public static final STATE_DISCONNECTED:I = 0x3

.field public static final STATE_DISCONNECTING:I = 0x2

.field public static final STATE_LOGGED_IN:I = 0x4

.field public static final STATE_LOGGED_OUT:I = 0x5

.field public static final STATUS_ERROR_SCS_ACCOUNT_INVALID_PARAMS:I = 0x2

.field public static final STATUS_FAIL:I = 0x1

.field public static final STATUS_SUCCESS:I = 0x0

.field public static final WIFI_SERVICE_TYPE_P2P:I = 0x6


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public abstract cancel(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;)V
.end method

.method public abstract cancel(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;I)V
.end method

.method public abstract connect(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;)V
.end method

.method public abstract connect(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;I)V
.end method

.method public abstract createBond(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;)V
.end method

.method public abstract disconnect(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;)V
.end method

.method public abstract disconnect(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;I)V
.end method

.method public abstract getBondedDeviceList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getConnectedDeviceList(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getServiceState(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;I)I
.end method

.method public abstract removeBond(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;)V
.end method

.method public abstract setAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;)V
.end method

.method public abstract setEventListener(Lcom/samsung/android/sdk/connectionmanager/ScmController$EventListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/connectionmanager/ScmException;
        }
    .end annotation
.end method

.method public abstract setResponseListener(Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/connectionmanager/ScmException;
        }
    .end annotation
.end method

.method public abstract setScsPreference(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;Z)Z
.end method

.method public abstract shutDown()Z
.end method

.method public abstract startScan()V
.end method

.method public abstract stopScan()V
.end method
