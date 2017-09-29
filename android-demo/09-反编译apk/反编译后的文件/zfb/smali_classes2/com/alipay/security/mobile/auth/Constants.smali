.class public Lcom/alipay/security/mobile/auth/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static PACKAGENAME:Ljava/lang/String;

.field public static PROTOCALTYPE:Ljava/lang/String;

.field public static PROTOCALVERSION:Ljava/lang/String;

.field public static PROTOCOL_TYPE_ALIPAY:I

.field public static PROTOCOL_TYPE_ALIPAY_FIDO:I

.field public static PROTOCOL_TYPE_ALIPAY_HUAWEI:I

.field public static PROTOCOL_TYPE_FIDO:I

.field public static PROTOCOL_TYPE_NNL_FIDO:I

.field public static SERVICEURL:Ljava/lang/String;

.field public static TYPE_BRACELET:I

.field public static TYPE_FINGERPRINT:I

.field public static VENDOR:Ljava/lang/String;

.field public static VENDOR_COOLPAD:I

.field public static VENDOR_FANCEYMAKER:I

.field public static VENDOR_GIONEE:I

.field public static VENDOR_HTC:I

.field public static VENDOR_HUAWEI:I

.field public static VENDOR_LENOVO:I

.field public static VENDOR_LETV:I

.field public static VENDOR_MEIZU:I

.field public static VENDOR_ONEPLUS:I

.field public static VENDOR_OPPO:I

.field public static VENDOR_SAMSUNG:I

.field public static VENDOR_SAMSUNG_V2:I

.field public static VENDOR_VIVO:I

.field public static VENDOR_XIAOMI:I

.field public static VENDOR_YUNOS:I

.field public static VENDOR_ZTE:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x2

    .line 17
    sput v2, Lcom/alipay/security/mobile/auth/Constants;->TYPE_FINGERPRINT:I

    .line 18
    sput v1, Lcom/alipay/security/mobile/auth/Constants;->TYPE_BRACELET:I

    .line 23
    sput v2, Lcom/alipay/security/mobile/auth/Constants;->VENDOR_SAMSUNG:I

    .line 24
    sput v1, Lcom/alipay/security/mobile/auth/Constants;->VENDOR_HUAWEI:I

    .line 25
    sput v3, Lcom/alipay/security/mobile/auth/Constants;->VENDOR_YUNOS:I

    .line 26
    sput v4, Lcom/alipay/security/mobile/auth/Constants;->VENDOR_OPPO:I

    .line 27
    const/4 v0, 0x5

    sput v0, Lcom/alipay/security/mobile/auth/Constants;->VENDOR_MEIZU:I

    .line 28
    const/4 v0, 0x6

    sput v0, Lcom/alipay/security/mobile/auth/Constants;->VENDOR_HTC:I

    .line 29
    const/4 v0, 0x7

    sput v0, Lcom/alipay/security/mobile/auth/Constants;->VENDOR_VIVO:I

    .line 30
    const/16 v0, 0x8

    sput v0, Lcom/alipay/security/mobile/auth/Constants;->VENDOR_LENOVO:I

    .line 31
    const/16 v0, 0x9

    sput v0, Lcom/alipay/security/mobile/auth/Constants;->VENDOR_GIONEE:I

    .line 32
    const/16 v0, 0xa

    sput v0, Lcom/alipay/security/mobile/auth/Constants;->VENDOR_XIAOMI:I

    .line 33
    const/16 v0, 0xb

    sput v0, Lcom/alipay/security/mobile/auth/Constants;->VENDOR_COOLPAD:I

    .line 34
    const/16 v0, 0xc

    sput v0, Lcom/alipay/security/mobile/auth/Constants;->VENDOR_LETV:I

    .line 35
    const/16 v0, 0xd

    sput v0, Lcom/alipay/security/mobile/auth/Constants;->VENDOR_ZTE:I

    .line 36
    const/16 v0, 0xe

    sput v0, Lcom/alipay/security/mobile/auth/Constants;->VENDOR_FANCEYMAKER:I

    .line 37
    const/16 v0, 0xf

    sput v0, Lcom/alipay/security/mobile/auth/Constants;->VENDOR_ONEPLUS:I

    .line 38
    const/16 v0, 0x10

    sput v0, Lcom/alipay/security/mobile/auth/Constants;->VENDOR_SAMSUNG_V2:I

    .line 43
    sput v2, Lcom/alipay/security/mobile/auth/Constants;->PROTOCOL_TYPE_NNL_FIDO:I

    .line 44
    sput v1, Lcom/alipay/security/mobile/auth/Constants;->PROTOCOL_TYPE_ALIPAY_HUAWEI:I

    .line 45
    sput v1, Lcom/alipay/security/mobile/auth/Constants;->PROTOCOL_TYPE_ALIPAY:I

    .line 46
    sput v3, Lcom/alipay/security/mobile/auth/Constants;->PROTOCOL_TYPE_ALIPAY_FIDO:I

    .line 47
    sput v4, Lcom/alipay/security/mobile/auth/Constants;->PROTOCOL_TYPE_FIDO:I

    .line 52
    const-string/jumbo v0, "packageName"

    sput-object v0, Lcom/alipay/security/mobile/auth/Constants;->PACKAGENAME:Ljava/lang/String;

    .line 53
    const-string/jumbo v0, "vendor"

    sput-object v0, Lcom/alipay/security/mobile/auth/Constants;->VENDOR:Ljava/lang/String;

    .line 54
    const-string/jumbo v0, "protocalType"

    sput-object v0, Lcom/alipay/security/mobile/auth/Constants;->PROTOCALTYPE:Ljava/lang/String;

    .line 55
    const-string/jumbo v0, "protocolVersion"

    sput-object v0, Lcom/alipay/security/mobile/auth/Constants;->PROTOCALVERSION:Ljava/lang/String;

    .line 56
    const-string/jumbo v0, "serviceUrl"

    sput-object v0, Lcom/alipay/security/mobile/auth/Constants;->SERVICEURL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
