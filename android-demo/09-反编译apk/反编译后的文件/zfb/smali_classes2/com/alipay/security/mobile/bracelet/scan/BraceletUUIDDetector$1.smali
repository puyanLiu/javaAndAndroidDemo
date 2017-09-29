.class Lcom/alipay/security/mobile/bracelet/scan/BraceletUUIDDetector$1;
.super Ljava/lang/Object;
.source "BraceletUUIDDetector.java"

# interfaces
.implements Lcom/alipay/security/mobile/module/bracelet/lib/core/IConnectionStateChangeCallback;


# instance fields
.field final synthetic this$0:Lcom/alipay/security/mobile/bracelet/scan/BraceletUUIDDetector;


# direct methods
.method constructor <init>(Lcom/alipay/security/mobile/bracelet/scan/BraceletUUIDDetector;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/alipay/security/mobile/bracelet/scan/BraceletUUIDDetector$1;->this$0:Lcom/alipay/security/mobile/bracelet/scan/BraceletUUIDDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alipay/security/mobile/bracelet/scan/BraceletUUIDDetector$1;->this$0:Lcom/alipay/security/mobile/bracelet/scan/BraceletUUIDDetector;

    iget-object v0, v0, Lcom/alipay/security/mobile/bracelet/scan/BraceletUUIDDetector;->mPeripheral:Lcom/alipay/security/mobile/module/bracelet/lib/profile/AliAuthProfile;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/bracelet/lib/profile/AliAuthProfile;->discoverServices()Z

    .line 65
    const/4 v0, 0x2

    sput v0, Lcom/alipay/security/mobile/bracelet/scan/BraceletUUIDDetector;->sConnectedStatus:I

    .line 66
    return-void
.end method

.method public onConnectionFailed(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .prologue
    .line 76
    const/4 v0, -0x1

    sput v0, Lcom/alipay/security/mobile/bracelet/scan/BraceletUUIDDetector;->sConnectedStatus:I

    .line 77
    invoke-static {}, Lcom/alipay/security/mobile/bracelet/scan/BraceletUUIDDetector;->access$008()I

    .line 78
    return-void
.end method

.method public onDisconnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    sput v0, Lcom/alipay/security/mobile/bracelet/scan/BraceletUUIDDetector;->sConnectedStatus:I

    .line 71
    return-void
.end method
