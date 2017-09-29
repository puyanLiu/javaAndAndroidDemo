.class public Lcom/alipay/mobile/common/transport/config/downloader/StrategyResponse;
.super Ljava/lang/Object;
.source "StrategyResponse.java"


# instance fields
.field private a:J

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-wide p1, p0, Lcom/alipay/mobile/common/transport/config/downloader/StrategyResponse;->a:J

    .line 29
    iput-object p3, p0, Lcom/alipay/mobile/common/transport/config/downloader/StrategyResponse;->b:Ljava/util/Map;

    .line 30
    iput-object p4, p0, Lcom/alipay/mobile/common/transport/config/downloader/StrategyResponse;->c:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public getCode()J
    .locals 2

    .prologue
    .line 12
    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/config/downloader/StrategyResponse;->a:J

    return-wide v0
.end method

.method public getConf()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/config/downloader/StrategyResponse;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getDns()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/config/downloader/StrategyResponse;->b:Ljava/util/Map;

    return-object v0
.end method
