.class Lcom/alipay/mobile/common/transport/httpdns/HttpDns$DnsReqTask;
.super Ljava/lang/Object;
.source "HttpDns.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transport/httpdns/HttpDns;)V
    .locals 0

    .prologue
    .line 1041
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$DnsReqTask;->this$0:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$DnsReqTask;->this$0:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->access$200(Lcom/alipay/mobile/common/transport/httpdns/HttpDns;)V

    .line 1044
    return-void
.end method
