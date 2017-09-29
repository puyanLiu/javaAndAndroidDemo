.class public final Lcom/alipay/mobile/common/transportext/biz/spdy/mwallet/ErrorMsgHelper;
.super Ljava/lang/Object;
.source "ErrorMsgHelper.java"


# static fields
.field public static final ATLS_HAND_SHAKE_FAIL:[Ljava/lang/String;

.field public static final BYTES_REMAIN_NO_EQ_COUNT:[Ljava/lang/String;

.field public static final CHUNK_SIZE_IS_NOT_NUM:[Ljava/lang/String;

.field public static final CONTENT_LENGTH_NO_EQ_LIMIT:[Ljava/lang/String;

.field public static final DOWNGRADE_TLS_RECONN_FAIL:[Ljava/lang/String;

.field public static final EXCEEDED_CONTENT_LENGTH_LIMIT:[Ljava/lang/String;

.field public static final HTTP_PROXY_AUTH_407:[Ljava/lang/String;

.field public static final METHOD_NO_SUPPORT_REQUEST_BODY:[Ljava/lang/String;

.field public static final NOT_SUPPORT_HTTP_METHOD:[Ljava/lang/String;

.field public static final NO_RESPONSE_BODY_EXISTS:[Ljava/lang/String;

.field public static final PROTOCOL_NOT_SUPPORT_INPUT:[Ljava/lang/String;

.field public static final SOCKET_CONNECTION_FAIL:[Ljava/lang/String;

.field public static final SPDY_VERSION_ERROR:[Ljava/lang/String;

.field public static final STATUS_HEADER_NOT_PRESENT:[Ljava/lang/String;

.field private static final STRING_TEMPLETE:Ljava/lang/String; = "ErrorCode=[%s], ErrorMsg=[%s]"

.field public static final TLS_HAND_SHAKE_FAIL:[Ljava/lang/String;

.field public static final TOO_MANY_REDIRECTS:[Ljava/lang/String;

.field public static final UNEXPECTED_END_STREAM:[Ljava/lang/String;

.field public static final UNEXPECTED_STATUS_LINE:[Ljava/lang/String;

.field public static final VERSION_HEADER_NOT_PRESENT:[Ljava/lang/String;

.field public static final WRITE_REQ_BODY_AFTER_RESP:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "001"

    aput-object v1, v0, v2

    const-string/jumbo v1, "ATLS Socket Connection Fail!"

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/mwallet/ErrorMsgHelper;->SOCKET_CONNECTION_FAIL:[Ljava/lang/String;

    .line 20
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "002"

    aput-object v1, v0, v2

    const-string/jumbo v1, "Downgrade TLS\uff0c reconnect fail!"

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/mwallet/ErrorMsgHelper;->DOWNGRADE_TLS_RECONN_FAIL:[Ljava/lang/String;

    .line 22
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "003"

    aput-object v1, v0, v2

    const-string/jumbo v1, "ATLS Hand shake fail!"

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/mwallet/ErrorMsgHelper;->ATLS_HAND_SHAKE_FAIL:[Ljava/lang/String;

    .line 24
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "004"

    aput-object v1, v0, v2

    const-string/jumbo v1, "unexpected end of stream"

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/mwallet/ErrorMsgHelper;->UNEXPECTED_END_STREAM:[Ljava/lang/String;

    .line 26
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "005"

    aput-object v1, v0, v2

    const-string/jumbo v1, "Expected a hex chunk size but was %s"

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/mwallet/ErrorMsgHelper;->CHUNK_SIZE_IS_NOT_NUM:[Ljava/lang/String;

    .line 28
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "006"

    aput-object v1, v0, v2

    const-string/jumbo v1, "expected %s bytes but received %s"

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/mwallet/ErrorMsgHelper;->BYTES_REMAIN_NO_EQ_COUNT:[Ljava/lang/String;

    .line 30
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "007"

    aput-object v1, v0, v2

    const-string/jumbo v1, "protocol does not support input"

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/mwallet/ErrorMsgHelper;->PROTOCOL_NOT_SUPPORT_INPUT:[Ljava/lang/String;

    .line 32
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "008"

    aput-object v1, v0, v2

    const-string/jumbo v1, "No response body exists; responseCode=%s"

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/mwallet/ErrorMsgHelper;->NO_RESPONSE_BODY_EXISTS:[Ljava/lang/String;

    .line 34
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "009"

    aput-object v1, v0, v2

    const-string/jumbo v1, "method does not support a request body: %s"

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/mwallet/ErrorMsgHelper;->METHOD_NO_SUPPORT_REQUEST_BODY:[Ljava/lang/String;

    .line 36
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "010"

    aput-object v1, v0, v2

    const-string/jumbo v1, "cannot write request body after response has been read"

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/mwallet/ErrorMsgHelper;->WRITE_REQ_BODY_AFTER_RESP:[Ljava/lang/String;

    .line 38
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "011"

    aput-object v1, v0, v2

    const-string/jumbo v1, "%s does not support writing."

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/mwallet/ErrorMsgHelper;->NOT_SUPPORT_HTTP_METHOD:[Ljava/lang/String;

    .line 40
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "012"

    aput-object v1, v0, v2

    const-string/jumbo v1, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/mwallet/ErrorMsgHelper;->HTTP_PROXY_AUTH_407:[Ljava/lang/String;

    .line 42
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "013"

    aput-object v1, v0, v2

    const-string/jumbo v1, "Too many redirects: %s"

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/mwallet/ErrorMsgHelper;->TOO_MANY_REDIRECTS:[Ljava/lang/String;

    .line 44
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "014"

    aput-object v1, v0, v2

    const-string/jumbo v1, "Expected \':status\' header not present"

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/mwallet/ErrorMsgHelper;->STATUS_HEADER_NOT_PRESENT:[Ljava/lang/String;

    .line 46
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "015"

    aput-object v1, v0, v2

    const-string/jumbo v1, "Expected \':version\' header not present"

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/mwallet/ErrorMsgHelper;->VERSION_HEADER_NOT_PRESENT:[Ljava/lang/String;

    .line 48
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "016"

    aput-object v1, v0, v2

    const-string/jumbo v1, "Unexpected status line: %s"

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/mwallet/ErrorMsgHelper;->UNEXPECTED_STATUS_LINE:[Ljava/lang/String;

    .line 50
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "017"

    aput-object v1, v0, v2

    const-string/jumbo v1, "content-length promised %s bytes, but received %s"

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/mwallet/ErrorMsgHelper;->CONTENT_LENGTH_NO_EQ_LIMIT:[Ljava/lang/String;

    .line 52
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "018"

    aput-object v1, v0, v2

    const-string/jumbo v1, "exceeded content-length limit of %s bytes"

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/mwallet/ErrorMsgHelper;->EXCEEDED_CONTENT_LENGTH_LIMIT:[Ljava/lang/String;

    .line 54
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "019"

    aput-object v1, v0, v2

    const-string/jumbo v1, "version != 3: %s"

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/mwallet/ErrorMsgHelper;->SPDY_VERSION_ERROR:[Ljava/lang/String;

    .line 56
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "020"

    aput-object v1, v0, v2

    const-string/jumbo v1, "TLS Hand shake fail!"

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/mwallet/ErrorMsgHelper;->TLS_HAND_SHAKE_FAIL:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getMessage([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 67
    :try_start_0
    const-string/jumbo v0, "ErrorCode=[%s], ErrorMsg=[%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-object v3, p0, v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x1

    aget-object v3, p0, v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 71
    :goto_0
    return-object v0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    const-string/jumbo v1, "MWALLET_SPDY_LOG"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    const-string/jumbo v0, ""

    goto :goto_0
.end method
