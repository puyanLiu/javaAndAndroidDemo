.class Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseDataEvent;
.super Lcom/alipay/mobile/common/transportext/amnet/Amnet$NetEvent;
.source "Amnet.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private data:[B

.field private hdr:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nsPass:J

.field private nsRead:J

.field private num:B

.field private sizePkg:I

.field private sizeRaw:I

.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;JBLjava/util/Map;[BJII)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;",
            "JB",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[BJII)V"
        }
    .end annotation

    .prologue
    .line 1763
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseDataEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    .line 1764
    invoke-direct {p0, p2, p3, p4}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NetEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;J)V

    .line 1765
    iput-byte p5, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseDataEvent;->num:B

    .line 1766
    iput-object p6, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseDataEvent;->hdr:Ljava/util/Map;

    .line 1767
    iput-object p7, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseDataEvent;->data:[B

    .line 1768
    iput-wide p8, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseDataEvent;->nsRead:J

    .line 1769
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseDataEvent;->nsPass:J

    .line 1770
    iput p10, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseDataEvent;->sizePkg:I

    .line 1771
    iput p11, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseDataEvent;->sizeRaw:I

    .line 1772
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 1777
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseDataEvent;->owner()Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v0

    .line 1778
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseDataEvent;->identification()J

    move-result-wide v1

    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->licence()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 1779
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseDataEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$300(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseDataEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$800(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 1780
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseDataEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$800(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 1781
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseDataEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$1700(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)V

    .line 1784
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseDataEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$2600(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Ljava/util/Map;

    move-result-object v0

    iget-byte v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseDataEvent;->num:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transportext/amnet/Channel;

    .line 1785
    if-eqz v0, :cond_2

    .line 1786
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseDataEvent;->nsPass:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseDataEvent;->nsPass:J

    .line 1787
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseDataEvent;->hdr:Ljava/util/Map;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseDataEvent;->data:[B

    iget-wide v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseDataEvent;->nsRead:J

    invoke-static {v3, v4}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$2200(J)D

    move-result-wide v3

    iget-wide v5, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseDataEvent;->nsPass:J

    invoke-static {v5, v6}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$2200(J)D

    move-result-wide v5

    iget v7, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseDataEvent;->sizePkg:I

    iget v8, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseDataEvent;->sizeRaw:I

    invoke-interface/range {v0 .. v8}, Lcom/alipay/mobile/common/transportext/amnet/Channel;->obtain(Ljava/util/Map;[BDDII)V

    .line 1798
    :cond_2
    :goto_0
    return-void

    .line 1795
    :cond_3
    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->stop()V

    goto :goto_0
.end method
