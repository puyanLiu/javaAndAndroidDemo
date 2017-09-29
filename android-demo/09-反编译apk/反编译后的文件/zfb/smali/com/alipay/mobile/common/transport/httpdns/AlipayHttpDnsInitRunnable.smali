.class public final Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsInitRunnable;
.super Ljava/lang/Object;
.source "AlipayHttpDnsInitRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsInitRunnable;->b:I

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsInitRunnable;->c:Z

    .line 26
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsInitRunnable;->a:Landroid/content/Context;

    .line 27
    iput p2, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsInitRunnable;->b:I

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsInitRunnable;->b:I

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsInitRunnable;->c:Z

    .line 31
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsInitRunnable;->a:Landroid/content/Context;

    .line 32
    iput p2, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsInitRunnable;->b:I

    .line 33
    iput-boolean p3, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsInitRunnable;->c:Z

    .line 34
    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 49
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsInitRunnable;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isInAlipayClient(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsInitRunnable;->a:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsInitRunnable;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isRCVersion(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    const-string/jumbo v1, "mygwrc.alipay.com,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    :cond_0
    const-string/jumbo v1, "mygw.alipay.com,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const-string/jumbo v1, "alipay.up.django.t.taobao.com,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string/jumbo v1, "alipay.dl.django.t.taobao.com,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string/jumbo v1, "api.django.t.taobao.com,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string/jumbo v1, "mobilepmgw.alipay.com,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const-string/jumbo v1, "mcgw.alipay.com,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string/jumbo v1, "img01.taobaocdn.com,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    :cond_1
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-static {}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getInstance()Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsInitRunnable;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getGWFURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 70
    const-string/jumbo v2, "mobilegw.alipay.com"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :cond_2
    :goto_0
    const-string/jumbo v1, "mobilegw.alipay.com,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string/jumbo v1, "bkmobilegw.mybank.cn,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string/jumbo v1, "t.alipayobjects.com,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string/jumbo v1, "tfs.alipayobjects.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsInitRunnable;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsInitRunnable;->a()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsInitRunnable;->b:I

    iget-boolean v3, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsInitRunnable;->c:Z

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsClientInit(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 44
    return-void
.end method
