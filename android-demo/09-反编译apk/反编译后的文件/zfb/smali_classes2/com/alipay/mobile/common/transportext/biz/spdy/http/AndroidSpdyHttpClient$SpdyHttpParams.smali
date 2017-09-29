.class Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient$SpdyHttpParams;
.super Lorg/apache/http/params/AbstractHttpParams;
.source "AndroidSpdyHttpClient.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;)V
    .locals 0

    .prologue
    .line 616
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient$SpdyHttpParams;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;

    invoke-direct {p0}, Lorg/apache/http/params/AbstractHttpParams;-><init>()V

    return-void
.end method


# virtual methods
.method public copy()Lorg/apache/http/params/HttpParams;
    .locals 1

    .prologue
    .line 654
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 620
    const-string/jumbo v0, "http.route.default-proxy"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 621
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient$SpdyHttpParams;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;->access$000(Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;)Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    .line 622
    if-nez v0, :cond_0

    move-object v0, v1

    .line 630
    :goto_0
    return-object v0

    .line 625
    :cond_0
    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 627
    if-nez v0, :cond_1

    move-object v0, v1

    .line 628
    goto :goto_0

    .line 630
    :cond_1
    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    move-object v0, v1

    goto :goto_0

    .line 633
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeParameter(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 659
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;
    .locals 4

    .prologue
    .line 638
    const-string/jumbo v0, "http.route.default-proxy"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 639
    check-cast p2, Lorg/apache/http/HttpHost;

    .line 640
    const/4 v0, 0x0

    .line 641
    if-eqz p2, :cond_0

    .line 642
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v3

    invoke-static {v2, v3}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 645
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient$SpdyHttpParams;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;->access$000(Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;)Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    move-result-object v1

    if-eqz v0, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->setProxy(Ljava/net/Proxy;)Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    .line 647
    return-object p0

    .line 645
    :cond_1
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    goto :goto_0

    .line 649
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
