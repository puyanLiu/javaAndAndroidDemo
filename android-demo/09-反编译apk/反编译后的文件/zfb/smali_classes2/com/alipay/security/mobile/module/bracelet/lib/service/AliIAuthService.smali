.class public interface abstract Lcom/alipay/security/mobile/module/bracelet/lib/service/AliIAuthService;
.super Ljava/lang/Object;
.source "AliIAuthService.java"

# interfaces
.implements Lcom/alipay/security/mobile/module/bracelet/lib/service/IService;


# static fields
.field public static final COMMON_UUID_CHARACTERISTIC_CIPHER:Ljava/util/UUID;

.field public static final COMMON_UUID_CHARACTERISTIC_CONTROL:Ljava/util/UUID;

.field public static final COMMON_UUID_CHARACTERISTIC_INFO:Ljava/util/UUID;

.field public static final COMMON_UUID_CHARACTERISTIC_KEY:Ljava/util/UUID;

.field public static final COMMON_UUID_CHARACTERISTIC_PLAIN:Ljava/util/UUID;

.field public static final COMMON_UUID_SERVICE:Ljava/util/UUID;

.field public static final UUID_CHARACTERISTIC_CIPHER:Ljava/util/UUID;

.field public static final UUID_CHARACTERISTIC_CONTROL:Ljava/util/UUID;

.field public static final UUID_CHARACTERISTIC_KEY:Ljava/util/UUID;

.field public static final UUID_CHARACTERISTIC_PLAIN:Ljava/util/UUID;

.field public static final UUID_SERVICE:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string/jumbo v0, "FEE1"

    invoke-static {v0}, Lcom/alipay/security/mobile/module/bracelet/lib/util/Utils;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliIAuthService;->UUID_SERVICE:Ljava/util/UUID;

    .line 18
    const-string/jumbo v0, "FED0"

    invoke-static {v0}, Lcom/alipay/security/mobile/module/bracelet/lib/util/Utils;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliIAuthService;->UUID_CHARACTERISTIC_KEY:Ljava/util/UUID;

    .line 19
    const-string/jumbo v0, "FED1"

    invoke-static {v0}, Lcom/alipay/security/mobile/module/bracelet/lib/util/Utils;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliIAuthService;->UUID_CHARACTERISTIC_PLAIN:Ljava/util/UUID;

    .line 20
    const-string/jumbo v0, "FED2"

    invoke-static {v0}, Lcom/alipay/security/mobile/module/bracelet/lib/util/Utils;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliIAuthService;->UUID_CHARACTERISTIC_CIPHER:Ljava/util/UUID;

    .line 21
    const-string/jumbo v0, "FED3"

    invoke-static {v0}, Lcom/alipay/security/mobile/module/bracelet/lib/util/Utils;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliIAuthService;->UUID_CHARACTERISTIC_CONTROL:Ljava/util/UUID;

    .line 23
    const-string/jumbo v0, "FEC1"

    invoke-static {v0}, Lcom/alipay/security/mobile/module/bracelet/lib/util/Utils;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliIAuthService;->COMMON_UUID_SERVICE:Ljava/util/UUID;

    .line 24
    const-string/jumbo v0, "FEB0"

    invoke-static {v0}, Lcom/alipay/security/mobile/module/bracelet/lib/util/Utils;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliIAuthService;->COMMON_UUID_CHARACTERISTIC_KEY:Ljava/util/UUID;

    .line 25
    const-string/jumbo v0, "FEB1"

    invoke-static {v0}, Lcom/alipay/security/mobile/module/bracelet/lib/util/Utils;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliIAuthService;->COMMON_UUID_CHARACTERISTIC_PLAIN:Ljava/util/UUID;

    .line 26
    const-string/jumbo v0, "FEB2"

    invoke-static {v0}, Lcom/alipay/security/mobile/module/bracelet/lib/util/Utils;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliIAuthService;->COMMON_UUID_CHARACTERISTIC_CIPHER:Ljava/util/UUID;

    .line 27
    const-string/jumbo v0, "FEB3"

    invoke-static {v0}, Lcom/alipay/security/mobile/module/bracelet/lib/util/Utils;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliIAuthService;->COMMON_UUID_CHARACTERISTIC_CONTROL:Ljava/util/UUID;

    .line 28
    const-string/jumbo v0, "FEB4"

    invoke-static {v0}, Lcom/alipay/security/mobile/module/bracelet/lib/util/Utils;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliIAuthService;->COMMON_UUID_CHARACTERISTIC_INFO:Ljava/util/UUID;

    return-void
.end method


# virtual methods
.method public abstract authenticate(I[B)[B
.end method

.method public abstract authroize(I[B)Z
.end method

.method public abstract confirm(I)Z
.end method

.method public abstract getWearableInfo()[B
.end method

.method public abstract showPayment(I[B)Z
.end method
