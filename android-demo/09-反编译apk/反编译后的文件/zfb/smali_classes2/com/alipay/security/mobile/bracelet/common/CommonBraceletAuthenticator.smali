.class public Lcom/alipay/security/mobile/bracelet/common/CommonBraceletAuthenticator;
.super Lcom/alipay/security/mobile/bracelet/WalletBraceletAuthenticator;
.source "CommonBraceletAuthenticator.java"


# static fields
.field public static final PROTOCAL_TYPE:I

.field public static final PROTOCAL_VERSION:I = 0x1

.field public static final VENDOR_TYPE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    sget v0, Lcom/alipay/security/mobile/auth/Constants;->VENDOR_XIAOMI:I

    sput v0, Lcom/alipay/security/mobile/bracelet/common/CommonBraceletAuthenticator;->VENDOR_TYPE:I

    .line 18
    sget v0, Lcom/alipay/security/mobile/auth/Constants;->PROTOCOL_TYPE_ALIPAY:I

    sput v0, Lcom/alipay/security/mobile/bracelet/common/CommonBraceletAuthenticator;->PROTOCAL_TYPE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 22
    sget v0, Lcom/alipay/security/mobile/bracelet/common/CommonBraceletAuthenticator;->VENDOR_TYPE:I

    sget v1, Lcom/alipay/security/mobile/bracelet/common/CommonBraceletAuthenticator;->PROTOCAL_TYPE:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/security/mobile/bracelet/WalletBraceletAuthenticator;-><init>(III)V

    .line 23
    return-void
.end method
