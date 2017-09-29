.class public Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;
.super Ljava/lang/Object;
.source "AuthenticatorMessage.java"


# static fields
.field public static final FINGERPRINTS_NUM:Ljava/lang/String; = "FINGERPRINTS_NUM"

.field public static final KEY_AUTHENTICATE_METHOD:Ljava/lang/String; = "KEY_AUTHENTICATE_METHOD"

.field public static final KEY_AUTHENTICATOR_TYPE:Ljava/lang/String; = "KEY_AUTHENTICATOR_TYPE"

.field public static final KEY_CALLBACK_TYPE:Ljava/lang/String; = "KEY_CALLBACK_TYPE"

.field public static final KEY_CHECKING_POLICY:Ljava/lang/String; = "KEY_CHECKING_POLICY"

.field public static final KEY_DEVICEID:Ljava/lang/String; = "DEVICEID"

.field public static final KEY_EXTRA_PARAMS:Ljava/lang/String; = "KEY_EXTRA_PARAMS"

.field public static final KEY_MESSAGE:Ljava/lang/String; = "KEY_MESSAGE"

.field public static final KEY_OPERATIONT_TYPE:Ljava/lang/String; = "KEY_OPERATIONT_TYPE"

.field public static final KEY_REGISTERED_TOKENS:Ljava/lang/String; = "KEY_REGISTERED_TOKENS"

.field public static final KEY_RESULT:Ljava/lang/String; = "KEY_RESULT"

.field public static final KEY_STATUS:Ljava/lang/String; = "KEY_STATUS"

.field public static final KEY_TIME_OUT:Ljava/lang/String; = "KEY_TIME_OUT"

.field public static final KEY_TRY_TIME:Ljava/lang/String; = "KEY_TRY_TIME"

.field public static final KEY_USERID:Ljava/lang/String; = "KEY_USERID"

.field public static final KEY_USERSTATUS:Ljava/lang/String; = "KEY_USERSTATUS"

.field public static final KEY_VENDOR_TYPE:Ljava/lang/String; = "KEY_VENDOR_TYPE"

.field public static final MSG_AUTHENTICATOR_REQUEST:I = 0x3

.field public static final MSG_AUTHENTICATOR_RESPONSE:I = 0x9

.field public static final MSG_CHECK_UPDATE:I = 0x11

.field public static final MSG_DEREGISTER_REQUEST:I = 0x4

.field public static final MSG_DEREGISTER_RESPONSE:I = 0xa

.field public static final MSG_GET_DEVICE_ID:I = 0xc

.field public static final MSG_INIT_REQUEST:I = 0x0

.field public static final MSG_INIT_RESPONSE:I = 0x6

.field public static final MSG_LOGIN_REQUEST:I = 0x1

.field public static final MSG_LOGIN_RESPONSE:I = 0x7

.field public static final MSG_OPEN_FINGERPRINT_MANAGER:I = 0x10

.field public static final MSG_PREPARE_KEYPARE:I = 0xf

.field public static final MSG_QUERYTOKENS_REQUEST:I = 0x5

.field public static final MSG_QUERYTOKENS_RESPONSE:I = 0xb

.field public static final MSG_QUERY_FINGERPRINTS:I = 0xd

.field public static final MSG_QUERY_USERSTATUS:I = 0xe

.field public static final MSG_REGISTER_REQUEST:I = 0x2

.field public static final MSG_REGISTER_RESPONSE:I = 0x8

.field public static final MSG_UPDATE_TA:I = 0x12

.field public static TYPE_NNL_FIDO:I

.field public static VERSION_NNL_S5:I


# instance fields
.field protected authenticatorType:I

.field protected checkPolicyOnly:Z

.field protected data:Ljava/lang/String;

.field protected extraParams:Ljava/lang/String;

.field protected type:I

.field protected version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 19
    sput v0, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->TYPE_NNL_FIDO:I

    .line 48
    sput v0, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->VERSION_NNL_S5:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    sget v0, Lcom/alipay/security/mobile/auth/Constants;->TYPE_FINGERPRINT:I

    iput v0, p0, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->authenticatorType:I

    .line 81
    iput v1, p0, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->type:I

    .line 86
    iput v1, p0, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->version:I

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->checkPolicyOnly:Z

    .line 113
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    sget v0, Lcom/alipay/security/mobile/auth/Constants;->TYPE_FINGERPRINT:I

    iput v0, p0, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->authenticatorType:I

    .line 81
    iput v1, p0, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->type:I

    .line 86
    iput v1, p0, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->version:I

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->checkPolicyOnly:Z

    .line 122
    iput p1, p0, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->type:I

    .line 123
    iput p2, p0, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->version:I

    .line 124
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    sget v0, Lcom/alipay/security/mobile/auth/Constants;->TYPE_FINGERPRINT:I

    iput v0, p0, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->authenticatorType:I

    .line 81
    iput v1, p0, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->type:I

    .line 86
    iput v1, p0, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->version:I

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->checkPolicyOnly:Z

    .line 133
    iput p1, p0, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->type:I

    .line 134
    iput p2, p0, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->version:I

    .line 135
    iput-object p3, p0, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->data:Ljava/lang/String;

    .line 136
    return-void
.end method


# virtual methods
.method public getAuthenticatorType()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->authenticatorType:I

    return v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraParams()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->extraParams:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->type:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->version:I

    return v0
.end method

.method public isCheckPolicyOnly()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->checkPolicyOnly:Z

    return v0
.end method

.method public setAuthenticatorType(I)V
    .locals 0

    .prologue
    .line 197
    iput p1, p0, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->authenticatorType:I

    .line 198
    return-void
.end method

.method public setCheckPolicyOnly(Z)V
    .locals 0

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->checkPolicyOnly:Z

    .line 106
    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->data:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public setExtraParams(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->extraParams:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setType(I)V
    .locals 0

    .prologue
    .line 153
    iput p1, p0, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->type:I

    .line 154
    return-void
.end method

.method public setVersion(I)V
    .locals 0

    .prologue
    .line 171
    iput p1, p0, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->version:I

    .line 172
    return-void
.end method
