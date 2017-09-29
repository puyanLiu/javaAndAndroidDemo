.class Lcom/alipay/mobile/nebulacore/download/ApacheClient$1;
.super Ljava/lang/Thread;
.source "ApacheClient.java"


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/download/ApacheClient;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/download/ApacheClient;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/download/ApacheClient$1;->a:Lcom/alipay/mobile/nebulacore/download/ApacheClient;

    .line 55
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/ApacheClient$1;->a:Lcom/alipay/mobile/nebulacore/download/ApacheClient;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/download/ApacheClient;->a(Lcom/alipay/mobile/nebulacore/download/ApacheClient;)Lcom/alipay/mobile/nebulacore/download/Connector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/download/Connector;->disconnect()Z

    .line 58
    return-void
.end method
