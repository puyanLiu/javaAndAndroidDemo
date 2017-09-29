.class Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback$6;
.super Ljava/lang/Object;
.source "SynchronizedGattCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;

.field final synthetic val$descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

.field final synthetic val$gatt:Landroid/bluetooth/BluetoothGatt;

.field final synthetic val$value:[B


# direct methods
.method constructor <init>(Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;[B)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback$6;->this$0:Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;

    iput-object p2, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback$6;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    iput-object p3, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback$6;->val$descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    iput-object p4, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback$6;->val$value:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback$6;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback$6;->this$0:Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;

    const v1, 0xff01

    invoke-static {v0, v1}, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->access$000(Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;I)V

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback$6;->this$0:Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 198
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback$6;->this$0:Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;

    const v1, 0xff04

    invoke-static {v0, v1}, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->access$000(Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;I)V

    goto :goto_0

    .line 201
    :cond_2
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback$6;->val$descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    iget-object v1, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback$6;->val$value:[B

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 202
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback$6;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v1, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback$6;->val$descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v0

    .line 203
    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback$6;->this$0:Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;

    const v1, 0xff02

    invoke-static {v0, v1}, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->access$000(Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;I)V

    goto :goto_0
.end method
