.class public Lcom/alipay/mobile/common/transport/config/downloader/StrategyRequest;
.super Lcom/alipay/mobile/common/transport/config/downloader/StrategyRequestItem;
.source "StrategyRequest.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/config/downloader/StrategyRequestItem;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/config/downloader/StrategyRequestItem;-><init>()V

    .line 37
    invoke-super {p0, p1}, Lcom/alipay/mobile/common/transport/config/downloader/StrategyRequestItem;->setUid(Ljava/lang/String;)V

    .line 38
    iput-object p2, p0, Lcom/alipay/mobile/common/transport/config/downloader/StrategyRequest;->a:Ljava/util/List;

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/config/downloader/StrategyRequestItem;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/config/downloader/StrategyRequest;->a:Ljava/util/List;

    .line 34
    return-void
.end method


# virtual methods
.method public getDomains()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/config/downloader/StrategyRequest;->a:Ljava/util/List;

    return-object v0
.end method

.method public getS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/config/downloader/StrategyRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setDomains(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/config/downloader/StrategyRequest;->a:Ljava/util/List;

    .line 47
    return-void
.end method

.method public setS(I)V
    .locals 1

    .prologue
    .line 54
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/config/downloader/StrategyRequest;->b:Ljava/lang/String;

    .line 55
    return-void
.end method
