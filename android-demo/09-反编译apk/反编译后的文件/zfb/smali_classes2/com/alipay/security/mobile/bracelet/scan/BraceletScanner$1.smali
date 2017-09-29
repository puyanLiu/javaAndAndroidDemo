.class Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner$1;
.super Ljava/lang/Object;
.source "BraceletScanner.java"

# interfaces
.implements Lcom/alipay/security/mobile/bracelet/scan/IDeviceFoundCallback;


# instance fields
.field final synthetic this$0:Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;


# direct methods
.method constructor <init>(Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner$1;->this$0:Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onDeviceFound(Landroid/bluetooth/BluetoothDevice;ILjava/util/List;)V
    .locals 1

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner$1;->this$0:Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;

    invoke-static {v0}, Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;->access$000(Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;)I

    move-result v0

    invoke-static {p1, v0, p3}, Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;->access$100(Landroid/bluetooth/BluetoothDevice;ILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner$1;->this$0:Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;

    invoke-static {v0}, Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;->access$200(Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;)Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner$IDeviceFoundListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner$1;->this$0:Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;

    invoke-static {v0}, Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;->access$200(Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;)Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner$IDeviceFoundListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner$IDeviceFoundListener;->onDeviceFound(Landroid/bluetooth/BluetoothDevice;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :cond_0
    monitor-exit p0

    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
