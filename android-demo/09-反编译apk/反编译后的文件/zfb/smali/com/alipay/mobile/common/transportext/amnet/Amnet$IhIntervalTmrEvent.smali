.class Lcom/alipay/mobile/common/transportext/amnet/Amnet$IhIntervalTmrEvent;
.super Lcom/alipay/mobile/common/transportext/amnet/Amnet$Event;
.source "Amnet.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;J)V
    .locals 0

    .prologue
    .line 2131
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IhIntervalTmrEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    .line 2132
    invoke-direct {p0, p2, p3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Event;-><init>(J)V

    .line 2133
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2138
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IhIntervalTmrEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$300(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2139
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IhIntervalTmrEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$300(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IhIntervalTmrEvent;->identification()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->treatIhInterval(J)V

    .line 2142
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IhIntervalTmrEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$800(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2143
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IhIntervalTmrEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$800(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IhIntervalTmrEvent;->identification()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->treatIhInterval(J)V

    .line 2145
    :cond_1
    return-void
.end method
