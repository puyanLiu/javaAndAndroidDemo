.class public Lcom/alipay/mobile/common/transportext/biz/spdy/http/DnsWrapper;
.super Ljava/lang/Object;
.source "DnsWrapper.java"

# interfaces
.implements Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Dns;


# instance fields
.field private mClient:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/http/DnsWrapper;->mClient:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    .line 21
    return-void
.end method

.method private getInetAddresses(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getDnsClient()Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    .line 35
    :goto_0
    return-object v0

    .line 33
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->getInstance()Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->getGetAllByNameHelper()Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;

    move-result-object v0

    .line 35
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/http/DnsWrapper;->getInetAddresses(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method
