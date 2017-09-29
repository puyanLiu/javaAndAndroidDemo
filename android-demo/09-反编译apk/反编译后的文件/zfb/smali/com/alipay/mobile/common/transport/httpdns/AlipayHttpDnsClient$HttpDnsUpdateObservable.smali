.class Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient$HttpDnsUpdateObservable;
.super Ljava/util/Observable;
.source "AlipayHttpDnsClient.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;)V
    .locals 0

    .prologue
    .line 734
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient$HttpDnsUpdateObservable;->this$0:Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyObservers(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 737
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient$HttpDnsUpdateObservable;->setChanged()V

    .line 738
    invoke-super {p0, p1}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    .line 739
    return-void
.end method
