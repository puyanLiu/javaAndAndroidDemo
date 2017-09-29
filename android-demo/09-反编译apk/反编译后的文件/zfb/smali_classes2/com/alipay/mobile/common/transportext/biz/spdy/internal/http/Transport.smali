.class interface abstract Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/Transport;
.super Ljava/lang/Object;
.source "Transport.java"


# virtual methods
.method public abstract createRequestBody()Ljava/io/OutputStream;
.end method

.method public abstract flushRequest()V
.end method

.method public abstract getTransferStream(Ljava/net/CacheRequest;)Ljava/io/InputStream;
.end method

.method public abstract makeReusable(ZLjava/io/OutputStream;Ljava/io/InputStream;)Z
.end method

.method public abstract readResponseHeaders()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;
.end method

.method public abstract writeRequestBody(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RetryableOutputStream;)V
.end method

.method public abstract writeRequestHeaders()V
.end method
