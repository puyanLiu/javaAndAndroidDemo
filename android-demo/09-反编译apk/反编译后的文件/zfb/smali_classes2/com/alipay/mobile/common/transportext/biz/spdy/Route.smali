.class public Lcom/alipay/mobile/common/transportext/biz/spdy/Route;
.super Ljava/lang/Object;
.source "Route.java"


# instance fields
.field final address:Lcom/alipay/mobile/common/transportext/biz/spdy/Address;

.field final inetSocketAddress:Ljava/net/InetSocketAddress;

.field final modernTls:Z

.field final proxy:Ljava/net/Proxy;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/biz/spdy/Address;Ljava/net/Proxy;Ljava/net/InetSocketAddress;Z)V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "address == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "proxy == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "inetSocketAddress == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_2
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;->address:Lcom/alipay/mobile/common/transportext/biz/spdy/Address;

    .line 34
    iput-object p2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;->proxy:Ljava/net/Proxy;

    .line 35
    iput-object p3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    .line 36
    iput-boolean p4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;->modernTls:Z

    .line 37
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 73
    instance-of v1, p1, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;

    if-eqz v1, :cond_0

    .line 74
    check-cast p1, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;

    .line 75
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;->address:Lcom/alipay/mobile/common/transportext/biz/spdy/Address;

    iget-object v2, p1, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;->address:Lcom/alipay/mobile/common/transportext/biz/spdy/Address;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;->proxy:Ljava/net/Proxy;

    iget-object v2, p1, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;->proxy:Ljava/net/Proxy;

    invoke-virtual {v1, v2}, Ljava/net/Proxy;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    iget-object v2, p1, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v1, v2}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;->modernTls:Z

    iget-boolean v2, p1, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;->modernTls:Z

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 80
    :cond_0
    return v0
.end method

.method flipTlsMode()Lcom/alipay/mobile/common/transportext/biz/spdy/Route;
    .locals 5

    .prologue
    .line 69
    new-instance v1, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;->address:Lcom/alipay/mobile/common/transportext/biz/spdy/Address;

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;->proxy:Ljava/net/Proxy;

    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;->modernTls:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/Address;Ljava/net/Proxy;Ljava/net/InetSocketAddress;Z)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAddress()Lcom/alipay/mobile/common/transportext/biz/spdy/Address;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;->address:Lcom/alipay/mobile/common/transportext/biz/spdy/Address;

    return-object v0
.end method

.method public getProxy()Ljava/net/Proxy;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public getSocketAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;->address:Lcom/alipay/mobile/common/transportext/biz/spdy/Address;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 86
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;->proxy:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 87
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    .line 88
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;->modernTls:Z

    if-eqz v0, :cond_0

    mul-int/lit8 v0, v1, 0x1f

    :goto_0
    add-int/2addr v0, v1

    .line 89
    return v0

    .line 88
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isModernTls()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;->modernTls:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Route{address=["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;->address:Lcom/alipay/mobile/common/transportext/biz/spdy/Address;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->getUriHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;->address:Lcom/alipay/mobile/common/transportext/biz/spdy/Address;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->getUriPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "], proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;->proxy:Ljava/net/Proxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", inetSocketAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", modernTls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;->modernTls:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "is null"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "is null"

    goto :goto_1
.end method
