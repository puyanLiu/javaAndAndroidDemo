.class Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$AliBluetoothReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ScanCallback.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/security/mobile/bracelet/scan/ScanCallback;


# direct methods
.method constructor <init>(Lcom/alipay/security/mobile/bracelet/scan/ScanCallback;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$AliBluetoothReceiver;->this$0:Lcom/alipay/security/mobile/bracelet/scan/ScanCallback;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 116
    const-string/jumbo v0, "android.bluetooth.device.action.FOUND"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    :try_start_0
    const-string/jumbo v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 121
    const-string/jumbo v1, "android.bluetooth.device.extra.RSSI"

    const/16 v2, -0x8000

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result v1

    .line 122
    iget-object v2, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$AliBluetoothReceiver;->this$0:Lcom/alipay/security/mobile/bracelet/scan/ScanCallback;

    invoke-static {v2}, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback;->access$200(Lcom/alipay/security/mobile/bracelet/scan/ScanCallback;)Lcom/alipay/security/mobile/bracelet/scan/IDeviceFoundCallback;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v0, v1, v3}, Lcom/alipay/security/mobile/bracelet/scan/IDeviceFoundCallback;->onDeviceFound(Landroid/bluetooth/BluetoothDevice;ILjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
