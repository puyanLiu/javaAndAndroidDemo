.class Lcom/alipay/mobile/common/transportext/Transport$Poster;
.super Ljava/lang/Object;
.source "Transport.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private cb:Lcom/alipay/mobile/common/transportext/Transport$Result;

.field private pmt:Lcom/alipay/mobile/common/transportext/Transport$Posting;

.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/Transport;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/Transport;Lcom/alipay/mobile/common/transportext/Transport$Posting;Lcom/alipay/mobile/common/transportext/Transport$Result;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/Transport$Poster;->this$0:Lcom/alipay/mobile/common/transportext/Transport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    iput-object p2, p0, Lcom/alipay/mobile/common/transportext/Transport$Poster;->pmt:Lcom/alipay/mobile/common/transportext/Transport$Posting;

    .line 361
    if-nez p3, :cond_0

    invoke-static {p1}, Lcom/alipay/mobile/common/transportext/Transport;->access$200(Lcom/alipay/mobile/common/transportext/Transport;)Lcom/alipay/mobile/common/transportext/Transport$Result;

    move-result-object p3

    :cond_0
    iput-object p3, p0, Lcom/alipay/mobile/common/transportext/Transport$Poster;->cb:Lcom/alipay/mobile/common/transportext/Transport$Result;

    .line 362
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 366
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/Transport$Poster;->pmt:Lcom/alipay/mobile/common/transportext/Transport$Posting;

    if-nez v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/Transport$Poster;->cb:Lcom/alipay/mobile/common/transportext/Transport$Result;

    invoke-interface {v0, v3}, Lcom/alipay/mobile/common/transportext/Transport$Result;->notify(Z)V

    .line 383
    :goto_0
    return-void

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/Transport$Poster;->this$0:Lcom/alipay/mobile/common/transportext/Transport;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/Transport;->access$300(Lcom/alipay/mobile/common/transportext/Transport;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/Transport$Poster;->pmt:Lcom/alipay/mobile/common/transportext/Transport$Posting;

    iget-wide v1, v1, Lcom/alipay/mobile/common/transportext/Transport$Posting;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    .line 370
    if-nez v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/Transport$Poster;->cb:Lcom/alipay/mobile/common/transportext/Transport$Result;

    invoke-interface {v0, v3}, Lcom/alipay/mobile/common/transportext/Transport$Result;->notify(Z)V

    goto :goto_0

    .line 373
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/Transport$Poster;->pmt:Lcom/alipay/mobile/common/transportext/Transport$Posting;

    iget-wide v1, v1, Lcom/alipay/mobile/common/transportext/Transport$Posting;->receipt:J

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/Transport$Poster;->pmt:Lcom/alipay/mobile/common/transportext/Transport$Posting;

    iget-boolean v3, v3, Lcom/alipay/mobile/common/transportext/Transport$Posting;->important:Z

    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/Transport$Poster;->pmt:Lcom/alipay/mobile/common/transportext/Transport$Posting;

    iget-boolean v4, v4, Lcom/alipay/mobile/common/transportext/Transport$Posting;->secret:Z

    iget-object v5, p0, Lcom/alipay/mobile/common/transportext/Transport$Poster;->pmt:Lcom/alipay/mobile/common/transportext/Transport$Posting;

    iget-boolean v5, v5, Lcom/alipay/mobile/common/transportext/Transport$Posting;->nearing:Z

    iget-object v6, p0, Lcom/alipay/mobile/common/transportext/Transport$Poster;->pmt:Lcom/alipay/mobile/common/transportext/Transport$Posting;

    iget-byte v6, v6, Lcom/alipay/mobile/common/transportext/Transport$Posting;->channel:B

    iget-object v7, p0, Lcom/alipay/mobile/common/transportext/Transport$Poster;->pmt:Lcom/alipay/mobile/common/transportext/Transport$Posting;

    iget-object v7, v7, Lcom/alipay/mobile/common/transportext/Transport$Posting;->header:Ljava/util/Map;

    iget-object v8, p0, Lcom/alipay/mobile/common/transportext/Transport$Poster;->pmt:Lcom/alipay/mobile/common/transportext/Transport$Posting;

    iget-object v8, v8, Lcom/alipay/mobile/common/transportext/Transport$Posting;->body:[B

    invoke-virtual/range {v0 .. v8}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->post(JZZZBLjava/util/Map;[B)V

    .line 380
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/Transport$Poster;->cb:Lcom/alipay/mobile/common/transportext/Transport$Result;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transportext/Transport$Result;->notify(Z)V

    goto :goto_0
.end method
