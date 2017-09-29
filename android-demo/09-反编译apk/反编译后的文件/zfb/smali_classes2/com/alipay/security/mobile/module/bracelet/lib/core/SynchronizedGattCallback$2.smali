.class Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback$2;
.super Ljava/lang/Object;
.source "SynchronizedGattCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;

.field final synthetic val$gatt:Landroid/bluetooth/BluetoothGatt;


# direct methods
.method constructor <init>(Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;Landroid/bluetooth/BluetoothGatt;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback$2;->this$0:Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;

    iput-object p2, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback$2;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback$2;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback$2;->this$0:Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;

    const v1, 0xff01

    invoke-static {v0, v1}, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->access$000(Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;I)V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback$2;->this$0:Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 108
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback$2;->this$0:Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;

    const v1, 0xff04

    invoke-static {v0, v1}, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->access$000(Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;I)V

    goto :goto_0

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback$2;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    move-result v0

    .line 112
    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback$2;->this$0:Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;

    const v1, 0xff02

    invoke-static {v0, v1}, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->access$000(Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;I)V

    goto :goto_0
.end method
