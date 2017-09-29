.class Lcom/alipay/mobile/common/transportext/Transport$Explorer;
.super Ljava/lang/Object;
.source "Transport.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private cb:Lcom/alipay/mobile/common/transportext/Transport$Result;

.field private pmt:Lcom/alipay/mobile/common/transportext/Transport$Exploring;

.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/Transport;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/Transport;Lcom/alipay/mobile/common/transportext/Transport$Exploring;Lcom/alipay/mobile/common/transportext/Transport$Result;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/Transport$Explorer;->this$0:Lcom/alipay/mobile/common/transportext/Transport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput-object p2, p0, Lcom/alipay/mobile/common/transportext/Transport$Explorer;->pmt:Lcom/alipay/mobile/common/transportext/Transport$Exploring;

    .line 258
    if-nez p3, :cond_0

    invoke-static {p1}, Lcom/alipay/mobile/common/transportext/Transport;->access$200(Lcom/alipay/mobile/common/transportext/Transport;)Lcom/alipay/mobile/common/transportext/Transport$Result;

    move-result-object p3

    :cond_0
    iput-object p3, p0, Lcom/alipay/mobile/common/transportext/Transport$Explorer;->cb:Lcom/alipay/mobile/common/transportext/Transport$Result;

    .line 259
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 263
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/Transport$Explorer;->pmt:Lcom/alipay/mobile/common/transportext/Transport$Exploring;

    if-nez v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/Transport$Explorer;->cb:Lcom/alipay/mobile/common/transportext/Transport$Result;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transportext/Transport$Result;->notify(Z)V

    .line 269
    :goto_0
    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/Transport$Explorer;->this$0:Lcom/alipay/mobile/common/transportext/Transport;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/Transport;->access$400(Lcom/alipay/mobile/common/transportext/Transport;)Lcom/alipay/mobile/common/transportext/Transport$Messenger;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/Transport$Explorer;->pmt:Lcom/alipay/mobile/common/transportext/Transport$Exploring;

    iget-object v1, v1, Lcom/alipay/mobile/common/transportext/Transport$Exploring;->taster:Lcom/alipay/mobile/common/transportext/amnet/Tasting;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/Transport$Explorer;->pmt:Lcom/alipay/mobile/common/transportext/Transport$Exploring;

    iget-object v2, v2, Lcom/alipay/mobile/common/transportext/Transport$Exploring;->domain:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/Transport$Explorer;->pmt:Lcom/alipay/mobile/common/transportext/Transport$Exploring;

    iget-object v3, v3, Lcom/alipay/mobile/common/transportext/Transport$Exploring;->cfg:Ljava/util/Map;

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->taste(Lcom/alipay/mobile/common/transportext/amnet/Mercury;Lcom/alipay/mobile/common/transportext/amnet/Tasting;Ljava/lang/String;Ljava/util/Map;)V

    .line 267
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/Transport$Explorer;->cb:Lcom/alipay/mobile/common/transportext/Transport$Result;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transportext/Transport$Result;->notify(Z)V

    goto :goto_0
.end method
