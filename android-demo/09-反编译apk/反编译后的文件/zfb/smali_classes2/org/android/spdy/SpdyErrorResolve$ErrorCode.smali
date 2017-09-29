.class public Lorg/android/spdy/SpdyErrorResolve$ErrorCode;
.super Ljava/lang/Object;
.source "SpdyErrorResolve.java"


# static fields
.field public static final EASY_DEFAULT_ERROR:I = -0x802

.field public static final EASY_REASON_CANCEL:I = -0x7d5

.field public static final EASY_REASON_CONN_ERROR:I = -0x7d1

.field public static final EASY_REASON_CONN_TIMEOUT:I = -0x7d3

.field public static final EASY_REASON_DISCONNECT:I = -0x7d2

.field public static final EASY_REASON_INVALID_DATA:I = -0x7f5

.field public static final EASY_REASON_IO_ERROR:I = -0x7ee

.field public static final EASY_REASON_NO_MEM:I = -0x7ef

.field public static final EASY_REASON_READ_ERROR:I = -0x7f2

.field public static final EASY_REASON_SERVER_CLOSE:I = -0x7f0

.field public static final EASY_REASON_SESSION_TIMEOUT:I = -0x7d4

.field public static final EASY_REASON_SLIGHTSSL_ERROR:I = -0x7f3

.field public static final EASY_REASON_SPDYINIT_ERROR:I = -0x7f4

.field public static final EASY_REASON_WRITE_ERROR:I = -0x7f1

.field public static final EASY_SPDY_CANCEL:I = -0x7de

.field public static final EASY_SPDY_FLOW_CONTROL_ERROR:I = -0x7e0

.field public static final EASY_SPDY_FRAME_TOO_LARGE:I = -0x7e4

.field public static final EASY_SPDY_INTERNAL_ERROR:I = -0x7df

.field public static final EASY_SPDY_INVALID_CREDENTIALS:I = -0x7e3

.field public static final EASY_SPDY_INVALID_STREAM:I = -0x7db

.field public static final EASY_SPDY_PROTOCOL_ERROR:I = -0x7da

.field public static final EASY_SPDY_REFUSED_STREAM:I = -0x7dc

.field public static final EASY_SPDY_SESSION_INTERNAL_ERROR:I = -0x7e6

.field public static final EASY_SPDY_SESSION_PROTOCOL_ERROR:I = -0x7e5

.field public static final EASY_SPDY_STREAM_ALREADY_CLOSED:I = -0x7e2

.field public static final EASY_SPDY_STREAM_IN_USE:I = -0x7e1

.field public static final EASY_SPDY_UNSUPPORTED_VERSION:I = -0x7dd

.field public static final SPDYLAY_ERR_CALLBACK_FAILURE:I = -0x386

.field public static final SPDYLAY_ERR_DEFERRED:I = -0x1fc

.field public static final SPDYLAY_ERR_DEFERRED_DATA_EXIST:I = -0x203

.field public static final SPDYLAY_ERR_EOF:I = -0x1fb

.field public static final SPDYLAY_ERR_FATAL:I = -0x384

.field public static final SPDYLAY_ERR_FRAME_TOO_LARGE:I = -0x20a

.field public static final SPDYLAY_ERR_GOAWAY_ALREADY_SENT:I = -0x205

.field public static final SPDYLAY_ERR_GZIP:I = -0x208

.field public static final SPDYLAY_ERR_INVALID_ARGUMENT:I = -0x1f5

.field public static final SPDYLAY_ERR_INVALID_FRAME:I = -0x1fa

.field public static final SPDYLAY_ERR_INVALID_HEADER_BLOCK:I = -0x206

.field public static final SPDYLAY_ERR_INVALID_STATE:I = -0x207

.field public static final SPDYLAY_ERR_INVALID_STREAM_ID:I = -0x201

.field public static final SPDYLAY_ERR_INVALID_STREAM_STATE:I = -0x202

.field public static final SPDYLAY_ERR_NOMEM:I = -0x385

.field public static final SPDYLAY_ERR_PROTO:I = -0x1f9

.field public static final SPDYLAY_ERR_STREAM_CLOSED:I = -0x1fe

.field public static final SPDYLAY_ERR_STREAM_CLOSING:I = -0x1ff

.field public static final SPDYLAY_ERR_STREAM_ID_NOT_AVAILABLE:I = -0x1fd

.field public static final SPDYLAY_ERR_STREAM_SHUT_WR:I = -0x200

.field public static final SPDYLAY_ERR_SYN_STREAM_NOT_ALLOWED:I = -0x204

.field public static final SPDYLAY_ERR_TEMPORAL_CALLBACK_FAILURE:I = -0x209

.field public static final SPDYLAY_ERR_UNSUPPORTED_VERSION:I = -0x1f7

.field public static final SPDYLAY_ERR_WOULDBLOCK:I = -0x1f8

.field public static final SPDYLAY_ERR_ZLIB:I = -0x1f6

.field public static final SPDY_CONNECT_BASE:I = -0x3e8

.field public static final SPDY_CONNECT_DOWN:I = -0x3eb

.field public static final SPDY_CONNECT_ERROR:I = -0x3ea

.field public static final SPDY_CONNECT_MAX:I = -0x41a

.field public static final SPDY_CONNECT_TIMEOUT:I = -0x3e9

.field public static final SPDY_HOST_UNREACH:I = -0x41e

.field public static final SPDY_JNI_ERR_ASYNC_CLOSE:I = -0x450

.field public static final SPDY_JNI_ERR_BASE:I = -0x44d

.field public static final SPDY_JNI_ERR_INVLID_PARAM:I = -0x44e

.field public static final SPDY_JNI_ERR_MAX:I = -0x4b0

.field public static final SPDY_JNI_ERR_NOT_SUPPORT_API:I = -0x453

.field public static final SPDY_JNI_ERR_NO_MEM:I = -0x44d

.field public static final SPDY_JNI_ERR_STATUS_ERR:I = -0x44f

.field public static final SPDY_POLL_ERROR:I = -0x3e8

.field public static final SPDY_SESSION_EXCEED_MAXED:I = -0x451

.field public static final SPDY_SSL_CERT_INVLID:I = -0x3ee

.field public static final SPDY_SSL_CERT_TOO_LARGE:I = -0x3f0

.field public static final SPDY_SSL_EXPIRE_TIME_ERR:I = -0x3ec

.field public static final SPDY_SSL_FRAME_LENGTH_ERR:I = -0x3ef

.field public static final SPDY_SSL_FRAME_TYPE_ERR:I = -0x3f2

.field public static final SPDY_SSL_INTENAL_ERR:I = -0x3f6

.field public static final SPDY_SSL_INVALID_PARAM:I = -0x3f5

.field public static final SPDY_SSL_MAGIC_ERR:I = -0x3ed

.field public static final SPDY_SSL_RSA_PUB_ERROR:I = -0x3f4

.field public static final SPDY_SSL_TYPE_ERR:I = -0x3f1

.field public static final SPDY_SSL_WRITE_END_ERR:I = -0x3f3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
