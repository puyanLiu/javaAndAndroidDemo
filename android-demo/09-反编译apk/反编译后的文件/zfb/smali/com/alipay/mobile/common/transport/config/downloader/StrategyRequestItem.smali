.class public Lcom/alipay/mobile/common/transport/config/downloader/StrategyRequestItem;
.super Ljava/lang/Object;
.source "StrategyRequestItem.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string/jumbo v0, "Android"

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/config/downloader/StrategyRequestItem;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getClientVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/config/downloader/StrategyRequestItem;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getOsType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/config/downloader/StrategyRequestItem;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/config/downloader/StrategyRequestItem;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getUtdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/config/downloader/StrategyRequestItem;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setClientVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/config/downloader/StrategyRequestItem;->d:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/config/downloader/StrategyRequestItem;->a:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setUtdid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/config/downloader/StrategyRequestItem;->b:Ljava/lang/String;

    .line 24
    return-void
.end method
