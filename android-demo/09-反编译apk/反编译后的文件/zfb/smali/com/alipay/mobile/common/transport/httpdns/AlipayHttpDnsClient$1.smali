.class Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient$1;
.super Ljava/lang/Object;
.source "AlipayHttpDnsClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;)V
    .locals 0

    .prologue
    .line 548
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient$1;->this$0:Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient$1;->this$0:Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getHttpDnsUpdateObservable()Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient$HttpDnsUpdateObservable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient$HttpDnsUpdateObservable;->notifyObservers()V

    .line 551
    return-void
.end method
