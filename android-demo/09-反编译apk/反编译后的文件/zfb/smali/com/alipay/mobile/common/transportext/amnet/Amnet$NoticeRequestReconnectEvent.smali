.class Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeRequestReconnectEvent;
.super Lcom/alipay/mobile/common/transportext/amnet/Amnet$NetEvent;
.source "Amnet.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;J)V
    .locals 0

    .prologue
    .line 1904
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeRequestReconnectEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    .line 1905
    invoke-direct {p0, p2, p3, p4}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NetEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;J)V

    .line 1906
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1911
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeRequestReconnectEvent;->owner()Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v0

    .line 1912
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeRequestReconnectEvent;->identification()J

    move-result-wide v1

    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->licence()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 1913
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeRequestReconnectEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$300(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeRequestReconnectEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$800(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 1914
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeRequestReconnectEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$800(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 1915
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeRequestReconnectEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$1700(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)V

    .line 1918
    :cond_1
    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->postInitReq()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1919
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeRequestReconnectEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const-string/jumbo v1, "2"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$502(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Ljava/lang/String;)Ljava/lang/String;

    .line 1920
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeRequestReconnectEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$700(Lcom/alipay/mobile/common/transportext/amnet/Amnet;ZZ)V

    .line 1926
    :cond_2
    :goto_0
    return-void

    .line 1923
    :cond_3
    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->stop()V

    goto :goto_0
.end method
