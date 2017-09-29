.class Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$AmnetLinkageListener;
.super Ljava/lang/Object;
.source "AmnetGeneralEventManagerImpl.java"

# interfaces
.implements Lcom/alipay/mobile/common/transportext/amnet/Linkage;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$AmnetLinkageListener;->this$0:Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private logInitInfo(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 404
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/amnet/api/AmnetEnvHelper;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 405
    if-nez v0, :cond_1

    .line 406
    const-string/jumbo v0, "amnet_AmnetGeneralEventManager"

    const-string/jumbo v1, "appContext is null. don\'t print init log"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 409
    :cond_1
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    const-string/jumbo v0, "amnet_AmnetGeneralEventManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "all init info = ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 412
    :catch_0
    move-exception v0

    .line 413
    const-string/jumbo v1, "amnet_AmnetGeneralEventManager"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public change(I)V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$AmnetLinkageListener;->this$0:Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;->notifyConnStateChange(I)V

    .line 274
    return-void
.end method

.method public collect(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 295
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$AmnetLinkageListener;->this$0:Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;->notifyCollectInitInfo(Ljava/util/Map;)V

    .line 296
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$AmnetLinkageListener;->logInitInfo(Ljava/util/Map;)V

    .line 297
    return-void
.end method

.method public command(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/transportext/amnet/Linkage$Cmd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 331
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Cmd;

    .line 337
    iget v2, v0, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Cmd;->type:I

    sget-object v3, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;->ConnectionDowngrade:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;

    invoke-virtual {v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 339
    :try_start_0
    new-instance v2, Lcom/squareup/wire/Wire;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-direct {v2, v3}, Lcom/squareup/wire/Wire;-><init>([Ljava/lang/Class;)V

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Cmd;->data:[B

    const-class v3, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdMap;

    invoke-virtual {v2, v0, v3}, Lcom/squareup/wire/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdMap;

    .line 340
    iget-object v2, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdMap;->map:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdMap;->map:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 343
    new-instance v2, Ljava/util/HashMap;

    iget-object v3, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdMap;->map:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 344
    iget-object v0, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdMap;->map:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdKeyValue;

    .line 345
    iget-object v4, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdKeyValue;->key:Ljava/lang/String;

    iget-object v0, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdKeyValue;->value:Ljava/lang/String;

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 348
    :catch_0
    move-exception v0

    .line 349
    const-string/jumbo v2, "amnet_AmnetGeneralEventManager"

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 347
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$AmnetLinkageListener;->this$0:Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;->notifyUpdateConfig(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 351
    :cond_4
    iget v2, v0, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Cmd;->type:I

    sget-object v3, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;->ReConnect:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;

    invoke-virtual {v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_5

    .line 352
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$AmnetLinkageListener;->this$0:Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;->notifyReconnect()V

    goto :goto_1

    .line 353
    :cond_5
    iget v2, v0, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Cmd;->type:I

    sget-object v3, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;->IpListUpdate:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;

    invoke-virtual {v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 355
    :try_start_2
    new-instance v2, Lcom/squareup/wire/Wire;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-direct {v2, v3}, Lcom/squareup/wire/Wire;-><init>([Ljava/lang/Class;)V

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Cmd;->data:[B

    const-class v3, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpListCmdData;

    invoke-virtual {v2, v0, v3}, Lcom/squareup/wire/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpListCmdData;

    .line 356
    iget-object v2, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpListCmdData;->code:Ljava/lang/Integer;

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpListCmdData;->code:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_6

    .line 357
    const-string/jumbo v2, "amnet_AmnetGeneralEventManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "result code = ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpListCmdData;->code:Ljava/lang/Integer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 393
    :catch_1
    move-exception v0

    .line 394
    const-string/jumbo v2, "amnet_AmnetGeneralEventManager"

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 360
    :cond_6
    :try_start_3
    iget-object v2, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpListCmdData;->dns:Ljava/util/List;

    if-eqz v2, :cond_7

    iget-object v2, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpListCmdData;->dns:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 361
    :cond_7
    const-string/jumbo v0, "amnet_AmnetGeneralEventManager"

    const-string/jumbo v2, "result dns is empty!"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 365
    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpListCmdData;->dns:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 366
    iget-object v0, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpListCmdData;->dns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/DNSResponse;

    .line 368
    iget-object v4, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/DNSResponse;->ips:Ljava/util/List;

    if-eqz v4, :cond_9

    iget-object v4, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/DNSResponse;->ips:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    .line 369
    new-instance v4, Lcom/alipay/mobile/common/amnet/api/model/DnsInfo;

    invoke-direct {v4}, Lcom/alipay/mobile/common/amnet/api/model/DnsInfo;-><init>()V

    .line 373
    iget-object v5, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/DNSResponse;->domain:Ljava/lang/String;

    iput-object v5, v4, Lcom/alipay/mobile/common/amnet/api/model/DnsInfo;->domain:Ljava/lang/String;

    .line 374
    iget-object v5, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/DNSResponse;->ttl:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcom/alipay/mobile/common/amnet/api/model/DnsInfo;->ttl:I

    .line 375
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/DNSResponse;->ips:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, v4, Lcom/alipay/mobile/common/amnet/api/model/DnsInfo;->dnsAddressInfoList:Ljava/util/List;

    .line 377
    iget-object v0, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/DNSResponse;->ips:Ljava/util/List;

    .line 378
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdIpAddress;

    .line 379
    new-instance v6, Lcom/alipay/mobile/common/amnet/api/model/DnsAddressInfo;

    invoke-direct {v6}, Lcom/alipay/mobile/common/amnet/api/model/DnsAddressInfo;-><init>()V

    .line 380
    iget-object v7, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdIpAddress;->ip:Ljava/lang/String;

    iput-object v7, v6, Lcom/alipay/mobile/common/amnet/api/model/DnsAddressInfo;->ip:Ljava/lang/String;

    .line 381
    iget-object v0, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdIpAddress;->port:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v6, Lcom/alipay/mobile/common/amnet/api/model/DnsAddressInfo;->port:I

    .line 382
    iget-object v0, v4, Lcom/alipay/mobile/common/amnet/api/model/DnsInfo;->dnsAddressInfoList:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 384
    :cond_a
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 387
    :cond_b
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 388
    const-string/jumbo v0, "amnet_AmnetGeneralEventManager"

    const-string/jumbo v2, "dnsInfos is empty!"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 392
    :cond_c
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$AmnetLinkageListener;->this$0:Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;->notifyUpdateDnsInfo(Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1
.end method

.method public establish()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$AmnetLinkageListener;->this$0:Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;->notifyInitOk()V

    .line 302
    return-void
.end method

.method public panic(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$AmnetLinkageListener;->this$0:Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;->notifyError(ILjava/lang/String;)V

    .line 279
    return-void
.end method

.method public reactivate()V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$AmnetLinkageListener;->this$0:Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;->notifySessionInvalid()V

    .line 310
    return-void
.end method

.method public report(Ljava/lang/String;D)V
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$AmnetLinkageListener;->this$0:Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;->notifyReport(Ljava/lang/String;D)V

    .line 326
    return-void
.end method

.method public restrict(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$AmnetLinkageListener;->this$0:Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;->notifyRestrict(ILjava/lang/String;)V

    .line 321
    return-void
.end method

.method public separate(Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;Lcom/alipay/mobile/common/transportext/amnet/Linkage$Separating;)V
    .locals 1

    .prologue
    .line 289
    const-class v0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/BeanFactory;->getBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener;

    .line 290
    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener;->notifyReportOnDisconnect(Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;Lcom/alipay/mobile/common/transportext/amnet/Linkage$Separating;)V

    .line 291
    return-void
.end method

.method public touch(Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;)V
    .locals 1

    .prologue
    .line 283
    const-class v0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/BeanFactory;->getBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener;

    .line 284
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener;->notifyReportOnConnect(Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;)V

    .line 285
    return-void
.end method
