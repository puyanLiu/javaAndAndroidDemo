.class Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorProxyEvent;
.super Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrEvent;
.source "Amnet.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;J)V
    .locals 1

    .prologue
    .line 1968
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorProxyEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    .line 1969
    const-string/jumbo v0, "The proxy can not connect the server."

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;JLjava/lang/String;)V

    .line 1970
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1975
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorProxyEvent;->owner()Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v0

    .line 1976
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorProxyEvent;->identification()J

    move-result-wide v1

    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->licence()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 1977
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorProxyEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$300(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 1978
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorProxyEvent;->information()Ljava/lang/String;

    move-result-object v1

    .line 1979
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorProxyEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const/4 v3, 0x3

    const-string/jumbo v4, "-AMNET-ERR-PROXY"

    invoke-static {v2, v3, v4, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$100(Lcom/alipay/mobile/common/transportext/amnet/Amnet;ILjava/lang/String;Ljava/lang/String;)V

    .line 1980
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorProxyEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const/16 v3, 0xb

    invoke-static {v2, v0, v3, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$400(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;ILjava/lang/String;)V

    .line 1981
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorProxyEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const-string/jumbo v1, "3"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$502(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Ljava/lang/String;)Ljava/lang/String;

    .line 1982
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorProxyEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorProxyEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$600(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Z

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$700(Lcom/alipay/mobile/common/transportext/amnet/Amnet;ZZ)V

    .line 1987
    :cond_0
    :goto_0
    return-void

    .line 1984
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorProxyEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$900(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;)V

    goto :goto_0
.end method
