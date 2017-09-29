.class public Lcom/alipay/mobile/common/transportext/biz/spdy/http/ZSpdyRequestRetryHandler;
.super Ljava/lang/Object;
.source "ZSpdyRequestRetryHandler.java"

# interfaces
.implements Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/SpdyRequestRetryHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isRetry(IZ)Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    .line 42
    const/4 v0, 0x1

    .line 45
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public retryRequest(Ljava/io/IOException;IZLcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;Ljava/net/HttpURLConnection;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 24
    const-string/jumbo v1, "Operation-Type"

    invoke-virtual {p5, v1}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 26
    if-eqz p3, :cond_0

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkUtils;->getSpdyLongLinkOperType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 27
    const-string/jumbo v2, "MWALLET_SPDY_LOG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " can conntinue retry !!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :goto_0
    return v0

    .line 31
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/alipay/mobile/common/transportext/biz/spdy/http/ZSpdyRequestRetryHandler;->isRetry(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32
    const-string/jumbo v1, "MWALLET_SPDY_LOG"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Spdy auto retry. count="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 36
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
