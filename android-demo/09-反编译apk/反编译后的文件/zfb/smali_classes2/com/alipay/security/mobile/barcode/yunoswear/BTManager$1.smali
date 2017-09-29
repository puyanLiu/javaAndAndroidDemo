.class Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$1;
.super Landroid/content/BroadcastReceiver;
.source "BTManager.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;


# direct methods
.method constructor <init>(Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$1;->this$0:Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    const-string/jumbo v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 38
    const-string/jumbo v1, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 42
    const-string/jumbo v2, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "device name="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", device address="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", bondState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", previousBondState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$1;->this$0:Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;

    invoke-static {v1}, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->access$000(Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;)Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectRequestInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$1;->this$0:Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;

    invoke-static {v1}, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->access$000(Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;)Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectRequestInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectRequestInfo;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$1;->this$0:Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;

    iget-object v1, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$1;->this$0:Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;

    invoke-static {v1}, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->access$000(Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;)Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectRequestInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectRequestInfo;->device:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$1;->this$0:Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;

    invoke-static {v2}, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->access$000(Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;)Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectRequestInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectRequestInfo;->uuid:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$1;->this$0:Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;

    invoke-static {v3}, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->access$000(Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;)Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectRequestInfo;

    move-result-object v3

    iget-boolean v3, v3, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectRequestInfo;->secure:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->connect(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Z)V

    .line 67
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$1;->this$0:Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;

    invoke-static {v0}, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->access$100(Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 69
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$1;->this$0:Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->access$002(Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectRequestInfo;)Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectRequestInfo;

    .line 72
    :cond_0
    return-void
.end method
