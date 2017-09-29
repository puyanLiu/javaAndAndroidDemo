.class Lcom/alipay/security/mobile/barcode/adapter/YunosStrategy$1;
.super Ljava/lang/Object;
.source "YunosStrategy.java"

# interfaces
.implements Lcom/alipay/security/mobile/barcode/yunoswear/YunOSBLECallback;


# instance fields
.field final synthetic this$0:Lcom/alipay/security/mobile/barcode/adapter/YunosStrategy;

.field final synthetic val$bleManager:Lcom/alipay/security/mobile/barcode/yunoswear/BTAlipayDataManager;

.field final synthetic val$callback:Lcom/alipay/security/mobile/barcode/adapter/BarcodeCallback;

.field final synthetic val$data:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/security/mobile/barcode/adapter/YunosStrategy;Lcom/alipay/security/mobile/barcode/adapter/BarcodeCallback;Lcom/alipay/security/mobile/barcode/yunoswear/BTAlipayDataManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alipay/security/mobile/barcode/adapter/YunosStrategy$1;->this$0:Lcom/alipay/security/mobile/barcode/adapter/YunosStrategy;

    iput-object p2, p0, Lcom/alipay/security/mobile/barcode/adapter/YunosStrategy$1;->val$callback:Lcom/alipay/security/mobile/barcode/adapter/BarcodeCallback;

    iput-object p3, p0, Lcom/alipay/security/mobile/barcode/adapter/YunosStrategy$1;->val$bleManager:Lcom/alipay/security/mobile/barcode/yunoswear/BTAlipayDataManager;

    iput-object p4, p0, Lcom/alipay/security/mobile/barcode/adapter/YunosStrategy$1;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onConnected , address = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " , name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/adapter/YunosStrategy$1;->val$bleManager:Lcom/alipay/security/mobile/barcode/yunoswear/BTAlipayDataManager;

    iget-object v1, p0, Lcom/alipay/security/mobile/barcode/adapter/YunosStrategy$1;->val$data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/security/mobile/barcode/yunoswear/BTAlipayDataManager;->sendMessage(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public onConnecting(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onConnecting , address = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " , name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    return-void
.end method

.method public onDisconnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onDisconnected , address = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " , name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/adapter/YunosStrategy$1;->val$callback:Lcom/alipay/security/mobile/barcode/adapter/BarcodeCallback;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/adapter/YunosStrategy$1;->val$callback:Lcom/alipay/security/mobile/barcode/adapter/BarcodeCallback;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/alipay/security/mobile/barcode/adapter/BarcodeCallback;->onFail(I)V

    .line 41
    :cond_0
    return-void
.end method

.method public onReadDataFromDevice(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/adapter/YunosStrategy$1;->val$callback:Lcom/alipay/security/mobile/barcode/adapter/BarcodeCallback;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/adapter/YunosStrategy$1;->val$callback:Lcom/alipay/security/mobile/barcode/adapter/BarcodeCallback;

    invoke-interface {v0, p1}, Lcom/alipay/security/mobile/barcode/adapter/BarcodeCallback;->onSuccess(Ljava/lang/String;)V

    .line 61
    :cond_0
    return-void
.end method
