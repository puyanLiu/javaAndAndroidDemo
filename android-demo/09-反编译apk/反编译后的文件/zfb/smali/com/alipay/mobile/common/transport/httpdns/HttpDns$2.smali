.class Lcom/alipay/mobile/common/transport/httpdns/HttpDns$2;
.super Ljava/lang/Object;
.source "HttpDns.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

.field final synthetic val$delaySec:I

.field final synthetic val$opt:Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transport/httpdns/HttpDns;ILcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;)V
    .locals 0

    .prologue
    .line 844
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$2;->this$0:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    iput p2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$2;->val$delaySec:I

    iput-object p3, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$2;->val$opt:Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 847
    :try_start_0
    iget v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$2;->val$delaySec:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 851
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$2;->this$0:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$2;->val$opt:Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpDnsRequestStrong(Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;)V

    .line 852
    return-void

    .line 848
    :catch_0
    move-exception v0

    .line 849
    const-string/jumbo v1, "HTTP_DNS"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
