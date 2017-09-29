.class Lcom/alipay/security/mobile/barcode/adapter/SamsungStrategy$1;
.super Ljava/lang/Object;
.source "SamsungStrategy.java"

# interfaces
.implements Lcom/alipay/security/mobile/barcode/samsung/WatchCallback;


# instance fields
.field final synthetic this$0:Lcom/alipay/security/mobile/barcode/adapter/SamsungStrategy;

.field final synthetic val$callback:Lcom/alipay/security/mobile/barcode/adapter/BarcodeCallback;


# direct methods
.method constructor <init>(Lcom/alipay/security/mobile/barcode/adapter/SamsungStrategy;Lcom/alipay/security/mobile/barcode/adapter/BarcodeCallback;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alipay/security/mobile/barcode/adapter/SamsungStrategy$1;->this$0:Lcom/alipay/security/mobile/barcode/adapter/SamsungStrategy;

    iput-object p2, p0, Lcom/alipay/security/mobile/barcode/adapter/SamsungStrategy$1;->val$callback:Lcom/alipay/security/mobile/barcode/adapter/BarcodeCallback;

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
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/adapter/SamsungStrategy$1;->val$callback:Lcom/alipay/security/mobile/barcode/adapter/BarcodeCallback;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/adapter/SamsungStrategy$1;->val$callback:Lcom/alipay/security/mobile/barcode/adapter/BarcodeCallback;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/alipay/security/mobile/barcode/adapter/BarcodeCallback;->onFail(I)V

    .line 41
    :cond_0
    return-void
.end method

.method public onGetDataFromDevice(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/adapter/SamsungStrategy$1;->val$callback:Lcom/alipay/security/mobile/barcode/adapter/BarcodeCallback;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/adapter/SamsungStrategy$1;->val$callback:Lcom/alipay/security/mobile/barcode/adapter/BarcodeCallback;

    invoke-interface {v0, p1}, Lcom/alipay/security/mobile/barcode/adapter/BarcodeCallback;->onSuccess(Ljava/lang/String;)V

    .line 60
    :cond_0
    return-void
.end method
