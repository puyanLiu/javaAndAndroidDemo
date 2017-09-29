.class Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeRequestStatusEvent;
.super Lcom/alipay/mobile/common/transportext/amnet/Amnet$NetEvent;
.source "Amnet.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private state:I

.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;JI)V
    .locals 0

    .prologue
    .line 1812
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeRequestStatusEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    .line 1813
    invoke-direct {p0, p2, p3, p4}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NetEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;J)V

    .line 1814
    iput p5, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeRequestStatusEvent;->state:I

    .line 1815
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1820
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeRequestStatusEvent;->owner()Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v0

    .line 1821
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeRequestStatusEvent;->identification()J

    move-result-wide v1

    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->licence()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 1822
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeRequestStatusEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$300(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeRequestStatusEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$800(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 1823
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeRequestStatusEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$800(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 1824
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeRequestStatusEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$1700(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)V

    .line 1827
    :cond_1
    iget v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeRequestStatusEvent;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 1828
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeRequestStatusEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$2300(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Linkage;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/amnet/Linkage;->reactivate()V

    .line 1834
    :cond_2
    :goto_0
    return-void

    .line 1831
    :cond_3
    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->stop()V

    goto :goto_0
.end method
