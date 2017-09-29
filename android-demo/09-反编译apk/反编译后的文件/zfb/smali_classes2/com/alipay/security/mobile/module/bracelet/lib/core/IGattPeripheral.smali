.class interface abstract Lcom/alipay/security/mobile/module/bracelet/lib/core/IGattPeripheral;
.super Ljava/lang/Object;
.source "IGattPeripheral.java"


# virtual methods
.method public abstract connect(Z)V
.end method

.method public abstract disconnect(Z)V
.end method

.method public abstract discoverServices()Z
.end method

.method public abstract getDevice()Landroid/bluetooth/BluetoothDevice;
.end method

.method public abstract getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;
.end method

.method public abstract read(Landroid/bluetooth/BluetoothGattCharacteristic;)[B
.end method

.method public abstract readRemoteRSSI()I
.end method

.method public abstract registerNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/alipay/security/mobile/module/bracelet/lib/core/INotifyCallback;)Z
.end method

.method public abstract unregisterNotification(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
.end method

.method public abstract write(Landroid/bluetooth/BluetoothGattCharacteristic;[B)Z
.end method
