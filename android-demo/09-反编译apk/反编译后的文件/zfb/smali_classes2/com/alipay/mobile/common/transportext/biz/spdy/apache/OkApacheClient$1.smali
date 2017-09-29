.class Lcom/alipay/mobile/common/transportext/biz/spdy/apache/OkApacheClient$1;
.super Lorg/apache/http/params/AbstractHttpParams;
.source "OkApacheClient.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/apache/OkApacheClient;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transportext/biz/spdy/apache/OkApacheClient;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/apache/OkApacheClient$1;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/apache/OkApacheClient;

    invoke-direct {p0}, Lorg/apache/http/params/AbstractHttpParams;-><init>()V

    return-void
.end method


# virtual methods
.method public copy()Lorg/apache/http/params/HttpParams;
    .locals 1

    .prologue
    .line 136
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 83
    const-string/jumbo v0, "http.route.default-proxy"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/apache/OkApacheClient$1;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/apache/OkApacheClient;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/apache/OkApacheClient;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    .line 86
    if-nez v0, :cond_0

    .line 87
    const/4 v0, 0x0

    .line 91
    :goto_0
    return-object v0

    .line 89
    :cond_0
    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 91
    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    move-object v0, v1

    goto :goto_0

    .line 94
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeParameter(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 141
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;
    .locals 5

    .prologue
    .line 99
    const-string/jumbo v0, "http.route.default-proxy"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    check-cast p2, Lorg/apache/http/HttpHost;

    .line 101
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 102
    if-eqz p2, :cond_0

    .line 103
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/apache/OkApacheClient$1;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/apache/OkApacheClient;

    iget-object v1, v1, Lcom/alipay/mobile/common/transportext/biz/spdy/apache/OkApacheClient;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->setProxy(Ljava/net/Proxy;)Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    .line 129
    :cond_1
    :goto_0
    return-object p0

    .line 109
    :cond_2
    const-string/jumbo v0, "http.socket.timeout"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 111
    if-nez p2, :cond_3

    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "value can\'t be equal to the null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_3
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 116
    check-cast p2, Ljava/lang/Long;

    .line 117
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/apache/OkApacheClient$1;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/apache/OkApacheClient;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/apache/OkApacheClient;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->setStreamReadTimeout(JLjava/util/concurrent/TimeUnit;)V

    goto :goto_0

    .line 120
    :cond_4
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 121
    check-cast p2, Ljava/lang/Integer;

    .line 122
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/apache/OkApacheClient$1;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/apache/OkApacheClient;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/apache/OkApacheClient;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->setStreamReadTimeout(JLjava/util/concurrent/TimeUnit;)V

    goto :goto_0

    .line 126
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "key:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
