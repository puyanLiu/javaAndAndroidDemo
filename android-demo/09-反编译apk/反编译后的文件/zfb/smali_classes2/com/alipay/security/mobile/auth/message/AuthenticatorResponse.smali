.class public Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;
.super Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;
.source "AuthenticatorResponse.java"


# static fields
.field public static final RESULT_APP_NOT_FOUND:I = 0x6b

.field public static final RESULT_AUTHSERVICE_OK:I = 0x7a

.field public static final RESULT_BLUETOOTH_OFF:I = 0x7b

.field public static final RESULT_CANCELED:I = 0x66

.field public static final RESULT_CHANGE_TO_PASSWORD:I = 0x79

.field public static final RESULT_FAILURE:I = 0x65

.field public static final RESULT_FINGERPRINT_BUSY:I = 0x76

.field public static final RESULT_HARDWARE_ERROR:I = 0x78

.field public static final RESULT_INCORRECT_ORIGIN:I = 0x68

.field public static final RESULT_NOT_COMPATIBLE:I = 0x6a

.field public static final RESULT_NOT_ENABLED:I = 0x73

.field public static final RESULT_NOT_ENROLLED:I = 0x72

.field public static final RESULT_NOT_INSTALLED:I = 0x69

.field public static final RESULT_NOT_REGISTERED_FINGERPRINT:I = 0x70

.field public static final RESULT_NOT_SUPPORT:I = 0x6f

.field public static final RESULT_NO_BLUETOOTH_MAC:I = 0x7d

.field public static final RESULT_NO_MATCH:I = 0x67

.field public static final RESULT_PERMISSION_DENY:I = 0x193

.field public static final RESULT_REGISTERFINGER_DELETE:I = 0x77

.field public static final RESULT_ROOT:I = 0x7c

.field public static final RESULT_SENSOR_ERROR:I = 0x74

.field public static final RESULT_SERVICE_OLD:I = 0x7f

.field public static final RESULT_SERVICE_START_ERROR:I = 0x7e

.field public static final RESULT_SUCCESS:I = 0x64

.field public static final RESULT_TIMEOUT:I = 0x71

.field public static final RESULT_TRANSACTION_ERROR:I = 0x6d

.field public static final RESULT_TSI_ERROR:I = 0x6e

.field public static final RESULT_UPDATE:I = 0x6c

.field public static final RESULT_USER_NOTREGISTER:I = 0x75


# instance fields
.field protected resgistedTokens:Ljava/util/List;

.field protected result:I

.field protected resultMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;-><init>()V

    .line 163
    const/16 v0, 0x64

    iput v0, p0, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->result:I

    .line 184
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 202
    invoke-direct {p0, p1, p2}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;-><init>(II)V

    .line 163
    const/16 v0, 0x64

    iput v0, p0, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->result:I

    .line 203
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 1

    .prologue
    .line 193
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;-><init>(IILjava/lang/String;)V

    .line 163
    const/16 v0, 0x64

    iput v0, p0, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->result:I

    .line 194
    return-void
.end method


# virtual methods
.method public getResgistedTokens()Ljava/util/List;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->resgistedTokens:Ljava/util/List;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->result:I

    return v0
.end method

.method public getResultMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->resultMessage:Ljava/lang/String;

    return-object v0
.end method

.method public setResgistedTokens(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->resgistedTokens:Ljava/util/List;

    .line 173
    return-void
.end method

.method public setResult(I)V
    .locals 0

    .prologue
    .line 211
    iput p1, p0, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->result:I

    .line 212
    return-void
.end method

.method public setResultMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->resultMessage:Ljava/lang/String;

    .line 177
    return-void
.end method
