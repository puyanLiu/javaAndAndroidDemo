.class public Lcom/alipay/mobile/common/transportext/biz/httpdns/MainProcReloadDnsServiceImpl;
.super Ljava/lang/Object;
.source "MainProcReloadDnsServiceImpl.java"

# interfaces
.implements Lcom/alipay/mobile/common/transport/httpdns/ipc/MainProcReloadDnsService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyReloadDns()V
    .locals 2

    .prologue
    .line 20
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getDnsClient()Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->reloadDns()V

    .line 21
    const-string/jumbo v0, "MainProcReloadDnsServiceImpl"

    const-string/jumbo v1, "notifyReloadDns"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-void
.end method
