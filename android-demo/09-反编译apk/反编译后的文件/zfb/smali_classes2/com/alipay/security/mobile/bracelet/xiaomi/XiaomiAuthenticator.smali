.class public Lcom/alipay/security/mobile/bracelet/xiaomi/XiaomiAuthenticator;
.super Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;
.source "XiaomiAuthenticator.java"


# static fields
.field public static final PACKAGE_NAME:Ljava/lang/String; = "com.alipay.security.mobile.authenticator"

.field public static final PROTOCAL_TYPE:I

.field public static final PROTOCAL_VERSION:I = 0x1

.field public static final SERVER_URL:Ljava/lang/String; = "http://tfs.alipayobjects.com/L1/71/900/androidSec/Alipaysec_common.apk"

.field public static final VENDOR_TYPE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    sget v0, Lcom/alipay/security/mobile/auth/Constants;->VENDOR_XIAOMI:I

    sput v0, Lcom/alipay/security/mobile/bracelet/xiaomi/XiaomiAuthenticator;->VENDOR_TYPE:I

    .line 19
    sget v0, Lcom/alipay/security/mobile/auth/Constants;->PROTOCOL_TYPE_ALIPAY:I

    sput v0, Lcom/alipay/security/mobile/bracelet/xiaomi/XiaomiAuthenticator;->PROTOCAL_TYPE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    .line 26
    sget v1, Lcom/alipay/security/mobile/bracelet/xiaomi/XiaomiAuthenticator;->VENDOR_TYPE:I

    sget v2, Lcom/alipay/security/mobile/bracelet/xiaomi/XiaomiAuthenticator;->PROTOCAL_TYPE:I

    const/4 v3, 0x1

    const-string/jumbo v4, "com.alipay.security.mobile.authenticator"

    const-string/jumbo v5, "http://tfs.alipayobjects.com/L1/71/900/androidSec/Alipaysec_common.apk"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    .line 28
    const/4 v0, 0x4

    iput v0, p0, Lcom/alipay/security/mobile/bracelet/xiaomi/XiaomiAuthenticator;->mMinServiceVersion:I

    .line 29
    return-void
.end method
