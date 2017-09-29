.class public abstract Lcom/alipay/mobile/common/transportext/mnet/HttpsClient;
.super Lcom/alipay/mobile/common/transportext/mnet/SslClient;
.source "HttpsClient.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 126
    const-string/jumbo v0, "mnet-http"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/mnet/SslClient;-><init>()V

    return-void
.end method

.method private native requestHead(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;J)I
.end method


# virtual methods
.method protected abstract asyncErrorHttp(JLjava/lang/String;)V
.end method

.method protected abstract asyncNoticeReqBodySent(JI)V
.end method

.method protected abstract asyncNoticeResponseBody(J[BZ)V
.end method

.method protected abstract asyncNoticeResponseHead(JILjava/lang/String;Ljava/util/Map;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation
.end method

.method protected abstract asyncNoticeResponseMore(JLjava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method protected final errorHttp(JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 117
    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/mobile/common/transportext/mnet/HttpsClient;->asyncErrorHttp(JLjava/lang/String;)V

    .line 118
    return-void
.end method

.method protected final noticeReqBodySent(JI)V
    .locals 0

    .prologue
    .line 111
    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/mobile/common/transportext/mnet/HttpsClient;->asyncNoticeReqBodySent(JI)V

    .line 112
    return-void
.end method

.method protected final noticeResponseBody(J[BZ)V
    .locals 0

    .prologue
    .line 98
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/common/transportext/mnet/HttpsClient;->asyncNoticeResponseBody(J[BZ)V

    .line 99
    return-void
.end method

.method protected final noticeResponseHead(JILjava/lang/String;[Ljava/lang/String;Z)V
    .locals 7

    .prologue
    .line 91
    invoke-static {p5}, Lcom/alipay/mobile/common/transportext/mnet/Http;->convert([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    move v6, p6

    .line 92
    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/common/transportext/mnet/HttpsClient;->asyncNoticeResponseHead(JILjava/lang/String;Ljava/util/Map;Z)V

    .line 93
    return-void
.end method

.method protected final noticeResponseMore(J[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 104
    invoke-static {p3}, Lcom/alipay/mobile/common/transportext/mnet/Http;->convert([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 105
    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/common/transportext/mnet/HttpsClient;->asyncNoticeResponseMore(JLjava/util/Map;)V

    .line 106
    return-void
.end method

.method public native open(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native requestBody([B)I
.end method

.method public requestHead(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;J)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)I"
        }
    .end annotation

    .prologue
    .line 40
    invoke-static {p3}, Lcom/alipay/mobile/common/transportext/mnet/Http;->convert(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    .line 41
    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/common/transportext/mnet/HttpsClient;->requestHead(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;J)I

    move-result v0

    return v0
.end method
