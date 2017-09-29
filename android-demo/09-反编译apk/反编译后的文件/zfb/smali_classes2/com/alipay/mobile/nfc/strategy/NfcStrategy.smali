.class public Lcom/alipay/mobile/nfc/strategy/NfcStrategy;
.super Ljava/lang/Object;
.source "NfcStrategy.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string/jumbo v0, "NFC/Strategy"

    sput-object v0, Lcom/alipay/mobile/nfc/strategy/NfcStrategy;->e:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, "NFC_BUSINESS_JUMPABLE"

    sput-object v0, Lcom/alipay/mobile/nfc/strategy/NfcStrategy;->a:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, "NFC_QUICKPASS_ENABLE"

    sput-object v0, Lcom/alipay/mobile/nfc/strategy/NfcStrategy;->b:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, "NFC_BJRECHARGE_ENABLE"

    sput-object v0, Lcom/alipay/mobile/nfc/strategy/NfcStrategy;->c:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, "NFC_RESPONSE_ENABLE"

    sput-object v0, Lcom/alipay/mobile/nfc/strategy/NfcStrategy;->d:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/alipay/mobile/nfc/strategy/NfcStrategy;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/strategy/NfcStrategy;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 60
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 61
    const-class v1, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    .line 62
    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 64
    const-string/jumbo v1, "YES"

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const/4 v0, 0x1

    .line 69
    :goto_0
    return v0

    .line 68
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/nfc/strategy/NfcStrategy;->e:Ljava/lang/String;

    const-string/jumbo v2, "nfc config false"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/alipay/mobile/nfc/strategy/NfcStrategy;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/strategy/NfcStrategy;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/alipay/mobile/nfc/strategy/NfcStrategy;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/strategy/NfcStrategy;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
