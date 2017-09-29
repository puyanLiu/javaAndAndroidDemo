.class Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$1;
.super Ljava/lang/Object;
.source "H5WebViewClient.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$1;->a:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$1;->a:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$1;->a:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 111
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$1;->a:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getContentHeight()I

    move-result v0

    .line 112
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$1;->a:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$1;->a:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->c(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v1

    iget-wide v1, v1, Lcom/alipay/mobile/h5container/api/H5PageData;->appear:J

    cmp-long v1, v1, v6

    if-nez v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$1;->a:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->c(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$1;->a:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->c(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v4

    iget-wide v4, v4, Lcom/alipay/mobile/h5container/api/H5PageData;->start:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/alipay/mobile/h5container/api/H5PageData;->appear:J

    .line 114
    const-string/jumbo v1, "H5WebViewClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onPreDraw page appear "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$1;->a:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->c(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v3

    iget-wide v3, v3, Lcom/alipay/mobile/h5container/api/H5PageData;->appear:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$1;->a:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)I

    move-result v1

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$1;->a:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->c(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v1

    iget-wide v1, v1, Lcom/alipay/mobile/h5container/api/H5PageData;->appearFromNative:J

    cmp-long v1, v1, v6

    if-nez v1, :cond_1

    .line 118
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$1;->a:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 119
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$1;->a:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->c(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/alipay/mobile/h5container/api/H5PageData;->walletServiceStart:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/alipay/mobile/h5container/api/H5PageData;->appearFromNative:J

    .line 120
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$1;->a:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->e(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)V

    .line 125
    :goto_0
    const-string/jumbo v1, "H5WebViewClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onPreDraw page appear native "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$1;->a:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->c(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v3

    iget-wide v3, v3, Lcom/alipay/mobile/h5container/api/H5PageData;->appearFromNative:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$1;->a:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;I)V

    .line 129
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 122
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$1;->a:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->c(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$1;->a:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->c(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v4

    iget-wide v4, v4, Lcom/alipay/mobile/h5container/api/H5PageData;->start:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/alipay/mobile/h5container/api/H5PageData;->appearFromNative:J

    goto :goto_0
.end method
