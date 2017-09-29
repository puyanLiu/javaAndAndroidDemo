.class final Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient$2;
.super Ljava/lang/Object;
.source "AlipayHttpDnsClient.java"

# interfaces
.implements Lcom/alipay/mobile/common/utils/config/ConfigureChangedListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 744
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 748
    const-string/jumbo v0, "HTTP_DNS_Ahds"

    const-string/jumbo v1, "AlipayHttpDnsClient update config"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    .line 752
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->DNS_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string/jumbo v2, "T"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->equalsString(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 753
    const/4 v1, 0x1

    sput-boolean v1, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsSwitch:Z

    .line 758
    :goto_0
    sget-boolean v1, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsSwitch:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->DNS_SWITCH_DEBUG:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string/jumbo v2, "T"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->equalsString(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 760
    sput-boolean v3, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsSwitch:Z

    .line 761
    const-string/jumbo v0, "HTTP_DNS_Ahds"

    const-string/jumbo v1, "AlipayHttpDnsClient init, In the closed HTTPDNS development environment"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    :cond_0
    const-string/jumbo v0, "HTTP_DNS_Ahds"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "AlipayHttpDnsClient init, dnsSwitch="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsSwitch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    return-void

    .line 755
    :cond_1
    sput-boolean v3, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsSwitch:Z

    goto :goto_0
.end method
