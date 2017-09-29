.class public Lcom/alipay/security/mobile/api/AuthenticatorConstants;
.super Ljava/lang/Object;
.source "AuthenticatorConstants.java"


# static fields
.field public static final AUTHTYPE_BARCODE:I = 0x3

.field public static final AUTHTYPE_FINGERPRINT:I = 0x1

.field public static final AUTHTYPE_PASSWORDLESS:I = 0x2

.field public static final CLIENT_STATUS_CLOSED:I = 0x0

.field public static final CLIENT_STATUS_DELETED:I = 0x1

.field public static final CLIENT_STATUS_OPEN:I = 0x2

.field public static final PROTOCOL_TYPE_ALIPAY:I = 0x2

.field public static final PROTOCOL_TYPE_FIDO:I = 0x4

.field public static final PROTOCOL_TYPE_FIDO_ALIPAY:I = 0x3

.field public static final PROTOCOL_TYPE_NNL_FIDO:I = 0x1

.field public static final SUPPORT_WEARABLETYPE:[I

.field public static final WEARABLETYPE_BARCELET:I = 0x1

.field public static final WEARABLETYPE_COMMON:I = 0x0

.field public static final WEARABLETYPE_WATCH:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alipay/security/mobile/api/AuthenticatorConstants;->SUPPORT_WEARABLETYPE:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
