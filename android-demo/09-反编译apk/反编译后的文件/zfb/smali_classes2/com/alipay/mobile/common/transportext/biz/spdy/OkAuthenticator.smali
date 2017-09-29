.class public interface abstract Lcom/alipay/mobile/common/transportext/biz/spdy/OkAuthenticator;
.super Ljava/lang/Object;
.source "OkAuthenticator.java"


# virtual methods
.method public abstract authenticate(Ljava/net/Proxy;Ljava/net/URL;Ljava/util/List;)Lcom/alipay/mobile/common/transportext/biz/spdy/OkAuthenticator$Credential;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/Proxy;",
            "Ljava/net/URL;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/transportext/biz/spdy/OkAuthenticator$Challenge;",
            ">;)",
            "Lcom/alipay/mobile/common/transportext/biz/spdy/OkAuthenticator$Credential;"
        }
    .end annotation
.end method

.method public abstract authenticateProxy(Ljava/net/Proxy;Ljava/net/URL;Ljava/util/List;)Lcom/alipay/mobile/common/transportext/biz/spdy/OkAuthenticator$Credential;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/Proxy;",
            "Ljava/net/URL;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/transportext/biz/spdy/OkAuthenticator$Challenge;",
            ">;)",
            "Lcom/alipay/mobile/common/transportext/biz/spdy/OkAuthenticator$Credential;"
        }
    .end annotation
.end method
