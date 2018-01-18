.class public Lcom/samsung/android/app/watchmanager/plugin/selibrary/bluetooth/ScanSettingsBuilderManager;
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
    .locals 0
    .param p1, "builder"    # Landroid/bluetooth/le/ScanSettings$Builder;
    .param p2, "scan_interval"    # I
    .param p3, "scan_window"    # I

    .prologue
    .line 10
    invoke-virtual {p1, p2, p3}, Landroid/bluetooth/le/ScanSettings$Builder;->semSetCustomScanParams(II)Landroid/bluetooth/le/ScanSettings$Builder;

    .line 11
    return-void
.end method
