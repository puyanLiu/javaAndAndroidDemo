.class public Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;
.super Ljava/lang/Object;
.source "Result.java"


# static fields
.field public static final ALIPAY_BASE64_ENCODE_ERROR:I = 0x110

.field public static final ALIPAY_GENERATE_REG_NODE_FAILED:I = 0x116

.field public static final ALIPAY_GENERATE_REG_RESPONSE_NODE_FAILED:I = 0x118

.field public static final ALIPAY_GENERATE_RSA_KEY_FAILED:I = 0x114

.field public static final ALIPAY_GENERATE_UNREG_NODE_FAILED:I = 0x122

.field public static final ALIPAY_GENERATE_VERIFY_RESPONSE_NODE_FAILED:I = 0x121

.field public static final ALIPAY_GENERATE_verify_NODE_FAILED:I = 0x119

.field public static final ALIPAY_GET_FP_INDEX_FAILED:I = 0x115

.field public static final ALIPAY_GET_HARD_DEVICE_ID_ERROR:I = 0x111

.field public static final ALIPAY_PARAM_INVALID:I = 0x112

.field public static final ALIPAY_READ_REG_INFO_FAILED:I = 0x127

.field public static final ALIPAY_READ_RSA_KEY_INFO_FAILED:I = 0x125

.field public static final ALIPAY_RSAKEY_MALLOC_FAILED:I = 0x113

.field public static final ALIPAY_TEE_DELE_REG_FAILED:I = 0x132

.field public static final ALIPAY_TEE_ERROR_ITEM_NOT_FOUND:I = 0x128

.field public static final ALIPAY_TEE_GET_KEY_ID_FAILED:I = 0x133

.field public static final ALIPAY_TEE_GET_USERNAME_FILED:I = 0x129

.field public static final ALIPAY_TEE_READ_REG_FP_FAILED:I = 0x131

.field public static final ALIPAY_TEE_REG_FP_UNMATCH:I = 0x130

.field public static final ALIPAY_VERIFY_REG_NODE_FAILED:I = 0x117

.field public static final ALIPAY_VERIFY_UNREG_NODE_FAILED:I = 0x123

.field public static final ALIPAY_VERIFY_VERIFY_NODE_FAILED:I = 0x120

.field public static final ALIPAY_WRITE_REG_INFO_FAILED:I = 0x126

.field public static final ALIPAY_WRITE_RSA_KEY_INFO_FAILED:I = 0x124

.field public static final RESULT_FAIL:I = -0x10000

.field public static final RESULT_SUCCESS:I

.field public static TAG:Ljava/lang/String;


# instance fields
.field protected data:[B

.field protected status:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;->status:I

    .line 62
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;->status:I

    .line 71
    iput p1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;->status:I

    .line 72
    iput-object p2, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;->data:[B

    .line 73
    return-void
.end method

.method public static getStatusString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    packed-switch p0, :pswitch_data_0

    .line 189
    :pswitch_0
    const-string/jumbo v0, "NOT_SUPPORT_ERROR_TYPE"

    :goto_0
    return-object v0

    .line 141
    :pswitch_1
    const-string/jumbo v0, "ALIPAY_BASE64_ENCODE_ERROR"

    goto :goto_0

    .line 143
    :pswitch_2
    const-string/jumbo v0, "ALIPAY_GET_HARD_DEVICE_ID_ERROR"

    goto :goto_0

    .line 145
    :pswitch_3
    const-string/jumbo v0, "ALIPAY_PARAM_INVALID"

    goto :goto_0

    .line 147
    :pswitch_4
    const-string/jumbo v0, "ALIPAY_RSAKEY_MALLOC_FAILED"

    goto :goto_0

    .line 149
    :pswitch_5
    const-string/jumbo v0, "ALIPAY_GENERATE_RSA_KEY_FAILED"

    goto :goto_0

    .line 151
    :pswitch_6
    const-string/jumbo v0, "ALIPAY_GET_FP_INDEX_FAILED"

    goto :goto_0

    .line 153
    :pswitch_7
    const-string/jumbo v0, "ALIPAY_GENERATE_REG_NODE_FAILED"

    goto :goto_0

    .line 155
    :pswitch_8
    const-string/jumbo v0, "ALIPAY_VERIFY_REG_NODE_FAILED"

    goto :goto_0

    .line 157
    :pswitch_9
    const-string/jumbo v0, "ALIPAY_GENERATE_REG_RESPONSE_NODE_FAILED"

    goto :goto_0

    .line 159
    :pswitch_a
    const-string/jumbo v0, "ALIPAY_GENERATE_verify_NODE_FAILED"

    goto :goto_0

    .line 161
    :pswitch_b
    const-string/jumbo v0, "ALIPAY_VERIFY_VERIFY_NODE_FAILED"

    goto :goto_0

    .line 163
    :pswitch_c
    const-string/jumbo v0, "ALIPAY_GENERATE_VERIFY_RESPONSE_NODE_FAILED"

    goto :goto_0

    .line 165
    :pswitch_d
    const-string/jumbo v0, "ALIPAY_GENERATE_UNREG_NODE_FAILED"

    goto :goto_0

    .line 167
    :pswitch_e
    const-string/jumbo v0, "ALIPAY_VERIFY_UNREG_NODE_FAILED"

    goto :goto_0

    .line 169
    :pswitch_f
    const-string/jumbo v0, "ALIPAY_WRITE_RSA_KEY_INFO_FAILED"

    goto :goto_0

    .line 171
    :pswitch_10
    const-string/jumbo v0, "ALIPAY_READ_RSA_KEY_INFO_FAILED"

    goto :goto_0

    .line 173
    :pswitch_11
    const-string/jumbo v0, "ALIPAY_WRITE_REG_INFO_FAILED"

    goto :goto_0

    .line 175
    :pswitch_12
    const-string/jumbo v0, "ALIPAY_READ_REG_INFO_FAILED"

    goto :goto_0

    .line 177
    :pswitch_13
    const-string/jumbo v0, "ALIPAY_TEE_ERROR_ITEM_NOT_FOUND"

    goto :goto_0

    .line 179
    :pswitch_14
    const-string/jumbo v0, "ALIPAY_TEE_GET_USERNAME_FILED"

    goto :goto_0

    .line 181
    :pswitch_15
    const-string/jumbo v0, "ALIPAY_TEE_REG_FP_UNMATCH"

    goto :goto_0

    .line 183
    :pswitch_16
    const-string/jumbo v0, "ALIPAY_TEE_READ_REG_FP_FAILED"

    goto :goto_0

    .line 185
    :pswitch_17
    const-string/jumbo v0, "ALIPAY_TEE_DELE_REG_FAILED"

    goto :goto_0

    .line 187
    :pswitch_18
    const-string/jumbo v0, "ALIPAY_TEE_GET_KEY_ID_FAILED"

    goto :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x110
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;->data:[B

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;->status:I

    return v0
.end method

.method public getStatusString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;->status:I

    sparse-switch v0, :sswitch_data_0

    .line 290
    const-string/jumbo v0, "NOT_SUPPORT_ERROR_TYPE"

    :goto_0
    return-object v0

    .line 199
    :sswitch_0
    const-string/jumbo v0, "ALIPAY_BASE64_ENCODE_ERROR"

    goto :goto_0

    .line 201
    :sswitch_1
    const-string/jumbo v0, "ALIPAY_GET_HARD_DEVICE_ID_ERROR"

    goto :goto_0

    .line 203
    :sswitch_2
    const-string/jumbo v0, "ALIPAY_PARAM_INVALID"

    goto :goto_0

    .line 205
    :sswitch_3
    const-string/jumbo v0, "ALIPAY_RSAKEY_MALLOC_FAILED"

    goto :goto_0

    .line 207
    :sswitch_4
    const-string/jumbo v0, "ALIPAY_GENERATE_RSA_KEY_FAILED"

    goto :goto_0

    .line 209
    :sswitch_5
    const-string/jumbo v0, "ALIPAY_GET_FP_INDEX_FAILED"

    goto :goto_0

    .line 211
    :sswitch_6
    const-string/jumbo v0, "ALIPAY_GENERATE_REG_NODE_FAILED"

    goto :goto_0

    .line 213
    :sswitch_7
    const-string/jumbo v0, "ALIPAY_VERIFY_REG_NODE_FAILED"

    goto :goto_0

    .line 215
    :sswitch_8
    const-string/jumbo v0, "ALIPAY_GENERATE_REG_RESPONSE_NODE_FAILED"

    goto :goto_0

    .line 217
    :sswitch_9
    const-string/jumbo v0, "ALIPAY_GENERATE_verify_NODE_FAILED"

    goto :goto_0

    .line 219
    :sswitch_a
    const-string/jumbo v0, "ALIPAY_VERIFY_VERIFY_NODE_FAILED"

    goto :goto_0

    .line 221
    :sswitch_b
    const-string/jumbo v0, "ALIPAY_GENERATE_VERIFY_RESPONSE_NODE_FAILED"

    goto :goto_0

    .line 223
    :sswitch_c
    const-string/jumbo v0, "ALIPAY_GENERATE_UNREG_NODE_FAILED"

    goto :goto_0

    .line 225
    :sswitch_d
    const-string/jumbo v0, "ALIPAY_VERIFY_UNREG_NODE_FAILED"

    goto :goto_0

    .line 227
    :sswitch_e
    const-string/jumbo v0, "ALIPAY_WRITE_RSA_KEY_INFO_FAILED"

    goto :goto_0

    .line 229
    :sswitch_f
    const-string/jumbo v0, "ALIPAY_READ_RSA_KEY_INFO_FAILED"

    goto :goto_0

    .line 231
    :sswitch_10
    const-string/jumbo v0, "ALIPAY_WRITE_REG_INFO_FAILED"

    goto :goto_0

    .line 233
    :sswitch_11
    const-string/jumbo v0, "ALIPAY_READ_REG_INFO_FAILED"

    goto :goto_0

    .line 235
    :sswitch_12
    const-string/jumbo v0, "ALIPAY_TEE_ERROR_ITEM_NOT_FOUND"

    goto :goto_0

    .line 237
    :sswitch_13
    const-string/jumbo v0, "ALIPAY_TEE_GET_USERNAME_FILED"

    goto :goto_0

    .line 239
    :sswitch_14
    const-string/jumbo v0, "ALIPAY_TEE_REG_FP_UNMATCH"

    goto :goto_0

    .line 241
    :sswitch_15
    const-string/jumbo v0, "ALIPAY_TEE_READ_REG_FP_FAILED"

    goto :goto_0

    .line 243
    :sswitch_16
    const-string/jumbo v0, "ALIPAY_TEE_DELE_REG_FAILED"

    goto :goto_0

    .line 245
    :sswitch_17
    const-string/jumbo v0, "ALIPAY_TEE_GET_KEY_ID_FAILED"

    goto :goto_0

    .line 247
    :sswitch_18
    const-string/jumbo v0, "SUCCESS"

    goto :goto_0

    .line 250
    :sswitch_19
    const-string/jumbo v0, "TEE_ERR_UNKNOWN"

    goto :goto_0

    .line 252
    :sswitch_1a
    const-string/jumbo v0, "TEE_ERR_BAD_ACCESS"

    goto :goto_0

    .line 254
    :sswitch_1b
    const-string/jumbo v0, "TEE_ERR_BAD_PARAMETERS"

    goto :goto_0

    .line 256
    :sswitch_1c
    const-string/jumbo v0, "TEE_ERR_BAD_COMMAND"

    goto :goto_0

    .line 258
    :sswitch_1d
    const-string/jumbo v0, "TEE_ERR_SHORT_BUFFER"

    goto :goto_0

    .line 260
    :sswitch_1e
    const-string/jumbo v0, "TEE_ERR_OUT_OF_MEMORY"

    goto :goto_0

    .line 262
    :sswitch_1f
    const-string/jumbo v0, "TEE_ERR_TIMEOUT"

    goto :goto_0

    .line 264
    :sswitch_20
    const-string/jumbo v0, "TEE_ERR_SHA256"

    goto/16 :goto_0

    .line 266
    :sswitch_21
    const-string/jumbo v0, "TEE_ERR_RSA_SIGN"

    goto/16 :goto_0

    .line 268
    :sswitch_22
    const-string/jumbo v0, "TEE_ERR_RSA_VERIFY"

    goto/16 :goto_0

    .line 270
    :sswitch_23
    const-string/jumbo v0, "TEE_ERR_RSA_KEY_GEN"

    goto/16 :goto_0

    .line 272
    :sswitch_24
    const-string/jumbo v0, "TEE_ERR_READ_FILE"

    goto/16 :goto_0

    .line 274
    :sswitch_25
    const-string/jumbo v0, "TEE_ERR_WRITE_FILE"

    goto/16 :goto_0

    .line 276
    :sswitch_26
    const-string/jumbo v0, "TEE_ERR_DELETE_FILE"

    goto/16 :goto_0

    .line 278
    :sswitch_27
    const-string/jumbo v0, "TEE_ERR_FP_ID_NOT_MATCHES"

    goto/16 :goto_0

    .line 280
    :sswitch_28
    const-string/jumbo v0, "TEE_ERR_SERVER_DATA_CORRUPTED"

    goto/16 :goto_0

    .line 282
    :sswitch_29
    const-string/jumbo v0, "TEE_ERR_GENERATE_RESPONSE"

    goto/16 :goto_0

    .line 284
    :sswitch_2a
    const-string/jumbo v0, "TEE_ERR_GET_DEVICE_ID"

    goto/16 :goto_0

    .line 286
    :sswitch_2b
    const-string/jumbo v0, "TEE_ERR_GET_LAST_IDENTIFIED_RESULT"

    goto/16 :goto_0

    .line 288
    :sswitch_2c
    const-string/jumbo v0, "TEE_ERR_GET_ID_LIST"

    goto/16 :goto_0

    .line 197
    :sswitch_data_0
    .sparse-switch
        -0x6000000 -> :sswitch_19
        -0x5ffffff -> :sswitch_1a
        -0x5fffffe -> :sswitch_1b
        -0x5fffffd -> :sswitch_1c
        -0x5fffffc -> :sswitch_1d
        -0x5fffffb -> :sswitch_1e
        -0x5fffffa -> :sswitch_1f
        -0x5fff000 -> :sswitch_20
        -0x5ffefff -> :sswitch_21
        -0x5ffeffe -> :sswitch_22
        -0x5ffeffd -> :sswitch_23
        -0x5ffeffc -> :sswitch_24
        -0x5ffeffb -> :sswitch_25
        -0x5ffeffa -> :sswitch_26
        -0x5ffe000 -> :sswitch_27
        -0x5ffdfff -> :sswitch_28
        -0x5ffdffe -> :sswitch_29
        -0x5ffdffd -> :sswitch_2a
        -0x5ffdffc -> :sswitch_2b
        -0x5ffdffb -> :sswitch_2c
        0x0 -> :sswitch_18
        0x110 -> :sswitch_0
        0x111 -> :sswitch_1
        0x112 -> :sswitch_2
        0x113 -> :sswitch_3
        0x114 -> :sswitch_4
        0x115 -> :sswitch_5
        0x116 -> :sswitch_6
        0x117 -> :sswitch_7
        0x118 -> :sswitch_8
        0x119 -> :sswitch_9
        0x120 -> :sswitch_a
        0x121 -> :sswitch_b
        0x122 -> :sswitch_c
        0x123 -> :sswitch_d
        0x124 -> :sswitch_e
        0x125 -> :sswitch_f
        0x126 -> :sswitch_10
        0x127 -> :sswitch_11
        0x128 -> :sswitch_12
        0x129 -> :sswitch_13
        0x130 -> :sswitch_14
        0x131 -> :sswitch_15
        0x132 -> :sswitch_16
        0x133 -> :sswitch_17
    .end sparse-switch
.end method

.method public setData([B)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;->data:[B

    .line 109
    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .prologue
    .line 90
    iput p1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;->status:I

    .line 91
    return-void
.end method
