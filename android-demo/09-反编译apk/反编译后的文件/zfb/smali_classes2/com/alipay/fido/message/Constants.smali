.class public Lcom/alipay/fido/message/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final AUTH_FACTOR_EYEPRINT:J = 0x40L

.field public static final AUTH_FACTOR_FACEPRINT:J = 0x10L

.field public static final AUTH_FACTOR_FINGERPRINT:J = 0x2L

.field public static final AUTH_FACTOR_HANDPRINT:J = 0x100L

.field public static final AUTH_FACTOR_LOCATION:J = 0x20L

.field public static final AUTH_FACTOR_NONE:J = 0x200L

.field public static final AUTH_FACTOR_PASSCODE:J = 0x4L

.field public static final AUTH_FACTOR_PATTERN:J = 0x80L

.field public static final AUTH_FACTOR_PRESENCE:J = 0x1L

.field public static final AUTH_FACTOR_VOICEPRINT:J = 0x8L

.field public static final SCHEME_UAFV1ALI:Ljava/lang/String; = "UAFV1ALI"

.field public static final TAG_AAID:I = 0x27

.field public static final TAG_ALGORITHM:I = 0x33

.field public static final TAG_ATTESTATION_CERT:I = 0x5

.field public static final TAG_AUTHENTICATOR_VERSION:I = 0x38

.field public static final TAG_AUTHINFO:I = 0x35

.field public static final TAG_AUTHTYPE:I = 0x34

.field public static final TAG_AUTH_FACOTR:I = 0x40

.field public static final TAG_AUTH_TOKEN:I = 0x45

.field public static final TAG_CHALLENGE:I = 0x25

.field public static final TAG_DEVICEID:I = 0x2d

.field public static final TAG_ENCRYPT_KEY:I = 0x30

.field public static final TAG_FINAL_CHALLENGE:I = 0x2b

.field public static final TAG_KEYID:I = 0x28

.field public static final TAG_PUBKEY:I = 0x2c

.field public static final TAG_PUB_ALG_ENCODE:I = 0x29

.field public static final TAG_REGINFO:I = 0x2f

.field public static final TAG_REGTYPE:I = 0x2e

.field public static final TAG_RSA_EXPONENT:I = 0x44

.field public static final TAG_RSA_MODULLUS:I = 0x43

.field public static final TAG_SIGNATURE:I = 0x6

.field public static final TAG_SIGN_ALG_ENCODE:I = 0x2a

.field public static final TAG_TRANSACTION_CONTENT:I = 0x37

.field public static final TAG_TRANSACTION_CONTENTTYPE:I = 0x36

.field public static final TAG_TRANSACTION_CONTENT_HASH:I = 0x39

.field public static final TAG_UAFV1_AUTHDATA:I = 0x24

.field public static final TAG_UAFV1_AUTH_REQUEST:I = 0x23

.field public static final TAG_UAFV1_DEREGDATA:I = 0x32

.field public static final TAG_UAFV1_DEREG_REQUEST:I = 0x31

.field public static final TAG_UAFV1_KRD:I = 0x3

.field public static final TAG_UAFV1_REGDATA:I = 0x22

.field public static final TAG_UAFV1_REG_REQUEST:I = 0x21

.field public static final TAG_UAFV1_REG_RESPONSE:I = 0x1

.field public static final TAG_UAFV1_SIGNEDDATA:I = 0x4

.field public static final TAG_UAFV1_SIGN_RESPONSE:I = 0x2

.field public static final TAG_USERNAME:I = 0x26

.field public static final UAF_ALG_KEY_ECC_NISTP256R1_X962_DER:I = 0x101

.field public static final UAF_ALG_KEY_ECC_NISTP256R1_X962_RAW:I = 0x100

.field public static final UAF_ALG_KEY_RSA_2048_PSS_ALI:I = 0x110

.field public static final UAF_ALG_KEY_RSA_2048_PSS_DER:I = 0x103

.field public static final UAF_ALG_KEY_RSA_2048_PSS_RAW:I = 0x102

.field public static final UAF_ALG_SIGN_ECDSA_SHA256_DER:I = 0x2

.field public static final UAF_ALG_SIGN_ECDSA_SHA256_RAW:I = 0x1

.field public static final UAF_ALG_SIGN_RSASSA_PSS_SHA256_DER:I = 0x4

.field public static final UAF_ALG_SIGN_RSASSA_PSS_SHA256_RAW:I = 0x3

.field public static final UPDATE_POLICY_NOTUPDATE:I = 0x1

.field public static final UPDATE_POLICY_UPDATE_PHONE:I = 0x3

.field public static final UPDATE_POLICY_UPDATE_REMOTE:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
