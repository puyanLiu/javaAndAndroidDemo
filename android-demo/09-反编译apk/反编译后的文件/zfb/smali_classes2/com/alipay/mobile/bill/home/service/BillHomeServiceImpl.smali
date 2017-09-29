.class public Lcom/alipay/mobile/bill/home/service/BillHomeServiceImpl;
.super Lcom/alipay/mobile/bill/home/service/BillHomeService;
.source "BillHomeServiceImpl.java"


# instance fields
.field private a:Lcom/alipay/mobile/bill/home/callback/BillHomeSyncCallback;

.field private b:Lcom/alipay/mobile/bill/home/callback/BillCateSyncCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/alipay/mobile/bill/home/service/BillHomeService;-><init>()V

    return-void
.end method


# virtual methods
.method public checkTradeNO(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alipay/mobile/bill/home/service/BillHomeServiceImpl;->a:Lcom/alipay/mobile/bill/home/callback/BillHomeSyncCallback;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/bill/home/callback/BillHomeSyncCallback;->a(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public clearCache()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/bill/home/service/BillHomeServiceImpl;->a:Lcom/alipay/mobile/bill/home/callback/BillHomeSyncCallback;

    invoke-virtual {v0}, Lcom/alipay/mobile/bill/home/callback/BillHomeSyncCallback;->a()V

    .line 32
    return-void
.end method

.method public getAllCates()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/bill/home/service/BillHomeServiceImpl;->b:Lcom/alipay/mobile/bill/home/callback/BillCateSyncCallback;

    invoke-virtual {v0}, Lcom/alipay/mobile/bill/home/callback/BillCateSyncCallback;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 42
    const-string/jumbo v0, "BillHomeServiceImpl"

    const-string/jumbo v1, "BillHomeServiceImplis create"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 43
    const-class v1, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    .line 47
    if-nez v0, :cond_0

    .line 48
    const-string/jumbo v0, "BillHomeServiceImpl"

    const-string/jumbo v1, "bill home longLinkSyncService is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :goto_0
    return-void

    .line 51
    :cond_0
    new-instance v1, Lcom/alipay/mobile/bill/home/callback/BillHomeSyncCallback;

    invoke-direct {v1}, Lcom/alipay/mobile/bill/home/callback/BillHomeSyncCallback;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/bill/home/service/BillHomeServiceImpl;->a:Lcom/alipay/mobile/bill/home/callback/BillHomeSyncCallback;

    .line 52
    new-instance v1, Lcom/alipay/mobile/bill/home/callback/BillCateSyncCallback;

    invoke-direct {v1}, Lcom/alipay/mobile/bill/home/callback/BillCateSyncCallback;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/bill/home/service/BillHomeServiceImpl;->b:Lcom/alipay/mobile/bill/home/callback/BillCateSyncCallback;

    .line 53
    const-string/jumbo v1, "BILL-RP"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerBiz(Ljava/lang/String;)V

    .line 54
    const-string/jumbo v1, "BILL-RP"

    iget-object v2, p0, Lcom/alipay/mobile/bill/home/service/BillHomeServiceImpl;->a:Lcom/alipay/mobile/bill/home/callback/BillHomeSyncCallback;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerBizCallback(Ljava/lang/String;Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;)V

    .line 55
    const-string/jumbo v1, "BILL-GLOBAL"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerBiz(Ljava/lang/String;)V

    .line 56
    const-string/jumbo v1, "BILL-GLOBAL"

    iget-object v2, p0, Lcom/alipay/mobile/bill/home/service/BillHomeServiceImpl;->b:Lcom/alipay/mobile/bill/home/callback/BillCateSyncCallback;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerBizCallback(Ljava/lang/String;Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;)V

    goto :goto_0
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/alipay/mobile/bill/home/service/BillHomeServiceImpl;->a:Lcom/alipay/mobile/bill/home/callback/BillHomeSyncCallback;

    .line 63
    iput-object v0, p0, Lcom/alipay/mobile/bill/home/service/BillHomeServiceImpl;->b:Lcom/alipay/mobile/bill/home/callback/BillCateSyncCallback;

    .line 64
    return-void
.end method
