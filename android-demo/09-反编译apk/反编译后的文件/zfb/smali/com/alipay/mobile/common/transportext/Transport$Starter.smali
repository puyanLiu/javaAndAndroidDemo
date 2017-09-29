.class Lcom/alipay/mobile/common/transportext/Transport$Starter;
.super Ljava/lang/Object;
.source "Transport.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private cb:Lcom/alipay/mobile/common/transportext/Transport$Result;

.field private pmt:Lcom/alipay/mobile/common/transportext/Transport$Activating;

.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/Transport;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/Transport;Lcom/alipay/mobile/common/transportext/Transport$Activating;Lcom/alipay/mobile/common/transportext/Transport$Result;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/Transport$Starter;->this$0:Lcom/alipay/mobile/common/transportext/Transport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    iput-object p2, p0, Lcom/alipay/mobile/common/transportext/Transport$Starter;->pmt:Lcom/alipay/mobile/common/transportext/Transport$Activating;

    .line 279
    if-nez p3, :cond_0

    invoke-static {p1}, Lcom/alipay/mobile/common/transportext/Transport;->access$200(Lcom/alipay/mobile/common/transportext/Transport;)Lcom/alipay/mobile/common/transportext/Transport$Result;

    move-result-object p3

    :cond_0
    iput-object p3, p0, Lcom/alipay/mobile/common/transportext/Transport$Starter;->cb:Lcom/alipay/mobile/common/transportext/Transport$Result;

    .line 280
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 284
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/Transport$Starter;->pmt:Lcom/alipay/mobile/common/transportext/Transport$Activating;

    if-nez v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/Transport$Starter;->cb:Lcom/alipay/mobile/common/transportext/Transport$Result;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transportext/Transport$Result;->notify(Z)V

    .line 330
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/Transport$Starter;->this$0:Lcom/alipay/mobile/common/transportext/Transport;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/Transport;->access$300(Lcom/alipay/mobile/common/transportext/Transport;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/Transport$Starter;->pmt:Lcom/alipay/mobile/common/transportext/Transport$Activating;

    iget-wide v1, v1, Lcom/alipay/mobile/common/transportext/Transport$Activating;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    .line 288
    if-nez v0, :cond_1

    .line 289
    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;-><init>()V

    .line 290
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/Transport$Starter;->this$0:Lcom/alipay/mobile/common/transportext/Transport;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/Transport;->access$300(Lcom/alipay/mobile/common/transportext/Transport;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/Transport$Starter;->pmt:Lcom/alipay/mobile/common/transportext/Transport$Activating;

    iget-wide v2, v2, Lcom/alipay/mobile/common/transportext/Transport$Activating;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/Transport$Starter;->this$0:Lcom/alipay/mobile/common/transportext/Transport;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/Transport;->access$000(Lcom/alipay/mobile/common/transportext/Transport;)Lcom/alipay/mobile/common/transportext/amnet/Notepad;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->register(Lcom/alipay/mobile/common/transportext/amnet/Notepad;)V

    .line 294
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/Transport$Starter;->pmt:Lcom/alipay/mobile/common/transportext/Transport$Activating;

    iget-object v1, v1, Lcom/alipay/mobile/common/transportext/Transport$Activating;->storage:Lcom/alipay/mobile/common/transportext/amnet/Storage;

    if-eqz v1, :cond_2

    .line 295
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/Transport$Starter;->pmt:Lcom/alipay/mobile/common/transportext/Transport$Activating;

    iget-object v1, v1, Lcom/alipay/mobile/common/transportext/Transport$Activating;->storage:Lcom/alipay/mobile/common/transportext/amnet/Storage;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->register(Lcom/alipay/mobile/common/transportext/amnet/Storage;)V

    .line 298
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/Transport$Starter;->pmt:Lcom/alipay/mobile/common/transportext/Transport$Activating;

    iget-object v1, v1, Lcom/alipay/mobile/common/transportext/Transport$Activating;->linkage:Lcom/alipay/mobile/common/transportext/amnet/Linkage;

    if-eqz v1, :cond_3

    .line 299
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/Transport$Starter;->pmt:Lcom/alipay/mobile/common/transportext/Transport$Activating;

    iget-object v1, v1, Lcom/alipay/mobile/common/transportext/Transport$Activating;->linkage:Lcom/alipay/mobile/common/transportext/amnet/Linkage;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->register(Lcom/alipay/mobile/common/transportext/amnet/Linkage;)V

    .line 302
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/Transport$Starter;->pmt:Lcom/alipay/mobile/common/transportext/Transport$Activating;

    iget-object v1, v1, Lcom/alipay/mobile/common/transportext/Transport$Activating;->service:Ljava/util/Map;

    if-eqz v1, :cond_6

    .line 303
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/Transport$Starter;->pmt:Lcom/alipay/mobile/common/transportext/Transport$Activating;

    iget-object v1, v1, Lcom/alipay/mobile/common/transportext/Transport$Activating;->service:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 305
    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 308
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 310
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    .line 311
    if-eqz v2, :cond_4

    .line 312
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/common/transportext/amnet/Channel;

    .line 313
    if-nez v1, :cond_5

    .line 314
    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->unregister(B)V

    goto :goto_1

    .line 316
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->register(BLcom/alipay/mobile/common/transportext/amnet/Channel;)V

    goto :goto_1

    .line 322
    :cond_6
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/Transport$Starter;->this$0:Lcom/alipay/mobile/common/transportext/Transport;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/Transport;->access$400(Lcom/alipay/mobile/common/transportext/Transport;)Lcom/alipay/mobile/common/transportext/Transport$Messenger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->register(Lcom/alipay/mobile/common/transportext/amnet/Mercury;)V

    .line 323
    iget-object v7, p0, Lcom/alipay/mobile/common/transportext/Transport$Starter;->cb:Lcom/alipay/mobile/common/transportext/Transport$Result;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/Transport$Starter;->pmt:Lcom/alipay/mobile/common/transportext/Transport$Activating;

    iget-object v1, v1, Lcom/alipay/mobile/common/transportext/Transport$Activating;->domainLongLink:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/Transport$Starter;->pmt:Lcom/alipay/mobile/common/transportext/Transport$Activating;

    iget-object v2, v2, Lcom/alipay/mobile/common/transportext/Transport$Activating;->domainShortLink:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/Transport$Starter;->pmt:Lcom/alipay/mobile/common/transportext/Transport$Activating;

    iget-object v3, v3, Lcom/alipay/mobile/common/transportext/Transport$Activating;->cfgLongLink:Ljava/util/Map;

    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/Transport$Starter;->pmt:Lcom/alipay/mobile/common/transportext/Transport$Activating;

    iget-object v4, v4, Lcom/alipay/mobile/common/transportext/Transport$Activating;->cfgShortLink:Ljava/util/Map;

    iget-object v5, p0, Lcom/alipay/mobile/common/transportext/Transport$Starter;->pmt:Lcom/alipay/mobile/common/transportext/Transport$Activating;

    iget-object v5, v5, Lcom/alipay/mobile/common/transportext/Transport$Activating;->netMajor:Ljava/lang/String;

    iget-object v6, p0, Lcom/alipay/mobile/common/transportext/Transport$Starter;->pmt:Lcom/alipay/mobile/common/transportext/Transport$Activating;

    iget-object v6, v6, Lcom/alipay/mobile/common/transportext/Transport$Activating;->netMinor:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->activate(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-interface {v7, v0}, Lcom/alipay/mobile/common/transportext/Transport$Result;->notify(Z)V

    goto/16 :goto_0
.end method
