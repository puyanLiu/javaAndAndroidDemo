.class public Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/AliSPPAuthProfile;
.super Ljava/lang/Object;
.source "AliSPPAuthProfile.java"

# interfaces
.implements Lcom/alipay/security/mobile/module/bracelet/lib/profile/IAliAuthProfile;


# instance fields
.field private mService:Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/AliSPPAuthService;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothSocket;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/AliSPPAuthService;

    invoke-direct {v0, p1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/AliSPPAuthService;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    iput-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/AliSPPAuthProfile;->mService:Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/AliSPPAuthService;

    .line 23
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/AliSPPAuthProfile;->mService:Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/AliSPPAuthService;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/AliSPPAuthService;->cleanup()V

    .line 33
    return-void
.end method

.method public getAuthService()Lcom/alipay/security/mobile/module/bracelet/lib/service/AliIAuthService;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/AliSPPAuthProfile;->mService:Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/AliSPPAuthService;

    return-object v0
.end method

.method public init()Z
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/AliSPPAuthProfile;->mService:Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/AliSPPAuthService;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/AliSPPAuthService;->init()Z

    move-result v0

    return v0
.end method
