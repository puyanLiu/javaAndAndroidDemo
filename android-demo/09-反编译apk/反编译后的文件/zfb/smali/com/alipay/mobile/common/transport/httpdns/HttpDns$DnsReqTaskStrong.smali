.class Lcom/alipay/mobile/common/transport/httpdns/HttpDns$DnsReqTaskStrong;
.super Ljava/lang/Object;
.source "HttpDns.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;

.field final synthetic this$0:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transport/httpdns/HttpDns;Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;)V
    .locals 0

    .prologue
    .line 1088
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$DnsReqTaskStrong;->this$0:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1089
    iput-object p2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$DnsReqTaskStrong;->a:Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;

    .line 1090
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$DnsReqTaskStrong;->this$0:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$DnsReqTaskStrong;->a:Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->access$300(Lcom/alipay/mobile/common/transport/httpdns/HttpDns;Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;)V

    .line 1087
    return-void
.end method
