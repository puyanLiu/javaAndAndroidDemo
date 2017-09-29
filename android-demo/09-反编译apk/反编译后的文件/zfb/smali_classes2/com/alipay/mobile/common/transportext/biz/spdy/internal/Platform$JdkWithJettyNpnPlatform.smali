.class Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform$JdkWithJettyNpnPlatform;
.super Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform$Java6;
.source "Platform.java"


# instance fields
.field private final clientProviderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final getMethod:Ljava/lang/reflect/Method;

.field private final putMethod:Ljava/lang/reflect/Method;

.field private final serverProviderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 324
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform$Java6;-><init>(Ljava/lang/reflect/Method;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform$1;)V

    .line 325
    iput-object p2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform$JdkWithJettyNpnPlatform;->putMethod:Ljava/lang/reflect/Method;

    .line 326
    iput-object p3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform$JdkWithJettyNpnPlatform;->getMethod:Ljava/lang/reflect/Method;

    .line 327
    iput-object p4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform$JdkWithJettyNpnPlatform;->clientProviderClass:Ljava/lang/Class;

    .line 328
    iput-object p5, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform$JdkWithJettyNpnPlatform;->serverProviderClass:Ljava/lang/Class;

    .line 329
    return-void
.end method


# virtual methods
.method public getNpnSelectedProtocol(Ljavax/net/ssl/SSLSocket;)[B
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 354
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform$JdkWithJettyNpnPlatform;->getMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform$JettyNpnProvider;

    .line 356
    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform$JettyNpnProvider;->access$300(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform$JettyNpnProvider;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform$JettyNpnProvider;->access$400(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform$JettyNpnProvider;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 357
    const-string/jumbo v0, "com.squareup.okhttp.OkHttpClient"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    .line 358
    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string/jumbo v3, "NPN callback dropped so SPDY is disabled. Is npn-boot on the boot class path?"

    invoke-virtual {v0, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    move-object v0, v1

    .line 362
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform$JettyNpnProvider;->access$300(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform$JettyNpnProvider;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform$JettyNpnProvider;->access$400(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform$JettyNpnProvider;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "US-ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    goto :goto_0

    .line 364
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 366
    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 368
    :catch_2
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public setNpnProtocols(Ljavax/net/ssl/SSLSocket;[B)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 333
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 334
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 335
    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p2, v0

    .line 336
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "US-ASCII"

    invoke-direct {v3, p2, v2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    add-int/2addr v0, v2

    .line 338
    goto :goto_0

    .line 339
    :cond_0
    const-class v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform$JdkWithJettyNpnPlatform;->clientProviderClass:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform$JdkWithJettyNpnPlatform;->serverProviderClass:Ljava/lang/Class;

    aput-object v4, v2, v3

    new-instance v3, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform$JettyNpnProvider;

    invoke-direct {v3, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform$JettyNpnProvider;-><init>(Ljava/util/List;)V

    invoke-static {v0, v2, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 342
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform$JdkWithJettyNpnPlatform;->putMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 349
    return-void

    .line 343
    :catch_0
    move-exception v0

    .line 344
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 345
    :catch_1
    move-exception v0

    .line 346
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 347
    :catch_2
    move-exception v0

    .line 348
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
