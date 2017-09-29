.class Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient$1;
.super Ljava/net/URLStreamHandler;
.source "OkHttpClient.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

.field final synthetic val$protocol:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 440
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient$1;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    iput-object p2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient$1;->val$protocol:Ljava/lang/String;

    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDefaultPort()I
    .locals 2

    .prologue
    .line 453
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient$1;->val$protocol:Ljava/lang/String;

    const-string/jumbo v1, "http"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    const/16 v0, 0x50

    .line 456
    :goto_0
    return v0

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient$1;->val$protocol:Ljava/lang/String;

    const-string/jumbo v1, "https"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 456
    const/16 v0, 0x1bb

    goto :goto_0

    .line 457
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method protected openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 443
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient$1;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v0, p1, v1, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->open(Ljava/net/URL;Ljava/net/Proxy;Lcom/alipay/mobile/common/transport/context/TransportContext;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method protected openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .locals 2

    .prologue
    .line 448
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient$1;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->open(Ljava/net/URL;Ljava/net/Proxy;Lcom/alipay/mobile/common/transport/context/TransportContext;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method
