.class Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnector$1;
.super Ljava/lang/Object;
.source "BraceletConnector.java"

# interfaces
.implements Lcom/alipay/security/mobile/module/bracelet/lib/core/IConnectionStateChangeCallback;


# instance fields
.field final synthetic this$0:Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnector;


# direct methods
.method constructor <init>(Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnector;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnector$1;->this$0:Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnector$1;->this$0:Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnector;

    iget-object v0, v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnector;->mPeripheral:Lcom/alipay/security/mobile/module/bracelet/lib/profile/AliAuthProfile;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/bracelet/lib/profile/AliAuthProfile;->discoverServices()Z

    .line 59
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnector$1;->this$0:Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnector;

    iget-object v0, v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnector;->mPeripheral:Lcom/alipay/security/mobile/module/bracelet/lib/profile/AliAuthProfile;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/bracelet/lib/profile/AliAuthProfile;->init()Z

    .line 60
    const/4 v0, 0x2

    sput v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnector;->sConnectedStatus:I

    .line 61
    return-void
.end method

.method public onConnectionFailed(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .prologue
    .line 71
    const/4 v0, -0x1

    sput v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnector;->sConnectedStatus:I

    .line 72
    invoke-static {}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnector;->access$008()I

    .line 73
    return-void
.end method

.method public onDisconnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    sput v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnector;->sConnectedStatus:I

    .line 66
    return-void
.end method
