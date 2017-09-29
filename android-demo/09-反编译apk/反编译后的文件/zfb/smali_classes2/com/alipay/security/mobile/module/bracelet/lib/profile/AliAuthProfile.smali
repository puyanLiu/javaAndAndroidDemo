.class public Lcom/alipay/security/mobile/module/bracelet/lib/profile/AliAuthProfile;
.super Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;
.source "AliAuthProfile.java"

# interfaces
.implements Lcom/alipay/security/mobile/module/bracelet/lib/profile/IAliAuthProfile;


# instance fields
.field private final m_AuthService:Lcom/alipay/security/mobile/module/bracelet/lib/service/AliIAuthService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Lcom/alipay/security/mobile/module/bracelet/lib/core/IConnectionStateChangeCallback;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Lcom/alipay/security/mobile/module/bracelet/lib/core/IConnectionStateChangeCallback;)V

    .line 26
    invoke-static {p0}, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliServices;->newAuthService(Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;)Lcom/alipay/security/mobile/module/bracelet/lib/service/AliIAuthService;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/profile/AliAuthProfile;->m_AuthService:Lcom/alipay/security/mobile/module/bracelet/lib/service/AliIAuthService;

    .line 27
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/profile/AliAuthProfile;->m_AuthService:Lcom/alipay/security/mobile/module/bracelet/lib/service/AliIAuthService;

    invoke-interface {v0}, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliIAuthService;->cleanup()V

    .line 35
    invoke-super {p0}, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->cleanup()V

    .line 36
    return-void
.end method

.method public getAuthService()Lcom/alipay/security/mobile/module/bracelet/lib/service/AliIAuthService;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/profile/AliAuthProfile;->m_AuthService:Lcom/alipay/security/mobile/module/bracelet/lib/service/AliIAuthService;

    return-object v0
.end method

.method public init()Z
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/profile/AliAuthProfile;->m_AuthService:Lcom/alipay/security/mobile/module/bracelet/lib/service/AliIAuthService;

    invoke-interface {v0}, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliIAuthService;->init()Z

    move-result v0

    return v0
.end method
