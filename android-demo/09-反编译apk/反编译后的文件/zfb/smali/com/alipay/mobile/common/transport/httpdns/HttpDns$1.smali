.class Lcom/alipay/mobile/common/transport/httpdns/HttpDns$1;
.super Ljava/lang/Object;
.source "HttpDns.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

.field final synthetic val$confStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transport/httpdns/HttpDns;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 428
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$1;->this$0:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    iput-object p2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$1;->val$confStr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 431
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$1;->this$0:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->access$100(Lcom/alipay/mobile/common/transport/httpdns/HttpDns;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$1;->val$confStr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->updateConfig(Landroid/content/Context;Ljava/lang/String;)Z

    .line 432
    const-string/jumbo v0, "HTTP_DNS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u6536\u5230\u670d\u52a1\u5668\u7d27\u6025\u5f00\u5173\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$1;->val$confStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    return-void
.end method
