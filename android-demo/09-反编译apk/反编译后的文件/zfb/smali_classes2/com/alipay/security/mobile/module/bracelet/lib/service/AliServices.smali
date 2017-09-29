.class public Lcom/alipay/security/mobile/module/bracelet/lib/service/AliServices;
.super Ljava/lang/Object;
.source "AliServices.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newAuthService(Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;)Lcom/alipay/security/mobile/module/bracelet/lib/service/AliIAuthService;
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliAuthService;

    invoke-direct {v0, p0}, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliAuthService;-><init>(Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;)V

    return-object v0
.end method
