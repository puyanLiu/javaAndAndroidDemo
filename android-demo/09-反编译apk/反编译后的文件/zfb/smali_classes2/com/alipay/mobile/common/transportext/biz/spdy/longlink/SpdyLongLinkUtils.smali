.class public final Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkUtils;
.super Ljava/lang/Object;
.source "SpdyLongLinkUtils.java"


# static fields
.field public static final SPDY_LONG_LINK_OPER_TYPE:Ljava/lang/String; = "spdy_long_link_connect"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static final getConnectionFromPool(Landroid/content/Context;)Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;
    .locals 3

    .prologue
    .line 45
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-static {p0}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportStrategy;->getSpdyUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;->getDefault()Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->getEffectivePort(Ljava/net/URL;)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;->getSpdyConnection(Ljava/lang/String;I)Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 50
    :goto_0
    return-object v0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SpdyLongLinkUtils"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final getSpdyLongLinkOperType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string/jumbo v0, "spdy_long_link_connect"

    return-object v0
.end method

.method public static final isSpdyLongLinkOperType(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 60
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    :cond_0
    const/4 v0, 0x0

    .line 63
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v0, "spdy_long_link_connect"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method
