.class public Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/bluetooth/ScanSettingsBuilderManager;
.super Ljava/lang/Object;
.source "ScanSettingsBuilderManager.java"

# interfaces
.implements Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/ScanSettingsBuilderInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setCustomScanParams(Landroid/bluetooth/le/ScanSettings$Builder;II)V
    .locals 4
    .param p1, "builder"    # Landroid/bluetooth/le/ScanSettings$Builder;
    .param p2, "scan_interval"    # I
    .param p3, "scan_window"    # I

    .prologue
    .line 10
    const-string v0, "setCustomScanParams"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/bluetooth/ReflectUtil;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    return-void
.end method
