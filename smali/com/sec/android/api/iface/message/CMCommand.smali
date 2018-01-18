.class public Lcom/sec/android/api/iface/message/CMCommand;
.super Ljava/lang/Object;
.source "CMCommand.java"


# static fields
.field public static final CMD_AUTO_CONNECT:I = 0x17

.field public static final CMD_BT_SHUTDOWN:I = 0x25

.field public static final CMD_CANCEL:I = 0x24

.field public static final CMD_CONNECT:I = 0x15

.field public static final CMD_CONNECTALL:I = 0x19

.field public static final CMD_DISCONNECT:I = 0x16

.field public static final CMD_DISCONNECTALL:I = 0x20

.field public static final CMD_FEATURE_EXCHANGE:I = 0x22

.field public static final CMD_FIND_PEER:I = 0x21

.field public static final CMD_GET_BONDED_DEVICES:I = 0x113

.field public static final CMD_GET_CONNECTED_DEVICES:I = 0x115

.field public static final CMD_GET_LINK_FEATURE:I = 0x111

.field public static final CMD_GET_SERVICE_STATE:I = 0x112

.field public static final CMD_GET_UNBONDED_DEVICES:I = 0x114

.field public static final CMD_MANUAL_DISCONNECT:I = 0x23

.field public static final CMD_PAIRING:I = 0x13

.field public static final CMD_RECONNECT:I = 0x18

.field public static final CMD_SCS_PREFERENCE:I = 0x117

.field public static final CMD_SCS_SETACCOUNT:I = 0x26

.field public static final CMD_SHUTDOWN:I = 0x116

.field public static final CMD_START_SCAN:I = 0x11

.field public static final CMD_STOP_SCAN:I = 0x12

.field public static final CMD_UNKNOWN:I = 0x0

.field public static final CMD_UNPAIRING:I = 0x14

.field public static final EVENT_BOND_STATE_CHANGED:I = 0x216

.field public static final EVENT_BTADAPTER_ACTION_CONNECTION_STATE_CHANGED:I = 0x220

.field public static final EVENT_BTADAPTER_ACTION_STATE_CHANGED:I = 0x219

.field public static final EVENT_CHANGE_RSSI:I = 0x228

.field public static final EVENT_CM_SERVICE_STATE:I = 0x229

.field public static final EVENT_CONNECTIVITY_ACTION_STATE_CHANGED:I = 0x230

.field public static final EVENT_DEVICE_ADDED:I = 0x211

.field public static final EVENT_GATT_ACTION_CONNECTION_STATE_CHANGED:I = 0x221

.field public static final EVENT_LINK_STATE_CHANGED:I = 0x213

.field public static final EVENT_MSG_ACCESSORY_ERROR:I = 0x223

.field public static final EVENT_MSG_WAIT_FOR_CM_GATTSERVICE_BINDING:I = 0x218

.field public static final EVENT_PAIRING_REQUESTED:I = 0x217

.field public static final EVENT_RSSI_IN_RANGE_ALERT:I = 0x227

.field public static final EVENT_RSSI_OUT_OF_RANGE_ALERT:I = 0x226

.field public static final EVENT_RSSI_RECEIVED:I = 0x222

.field public static final EVENT_SAP_AGENT_ERROR:I = 0x224

.field public static final EVENT_SCAN_FINISHED:I = 0x212

.field public static final EVENT_SERVICE_STATE_CHANGED:I = 0x215

.field public static final EVENT_SERVICE_UUID_FETCHED:I = 0x225

.field public static final EVENT_UNKNOWN:I = 0x0

.field public static final EVENT_WIFIP2P_CONNECTION_ERROR:I = 0x242

.field public static final EVENT_WIFIP2P_CONNECTION_STATE_CHANGED:I = 0x243

.field public static final EVENT_WIFIP2P_DISABLED:I = 0x241

.field public static final EVENT_WIFIP2P_ENABLED:I = 0x240

.field public static final MSG_SET_MANUAL_AUTO_LOCK_RSSI:I = 0x244


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
