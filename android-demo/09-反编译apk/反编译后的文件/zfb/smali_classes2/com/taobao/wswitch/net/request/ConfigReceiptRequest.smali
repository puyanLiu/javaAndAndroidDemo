.class public Lcom/taobao/wswitch/net/request/ConfigReceiptRequest;
.super Ljava/lang/Object;
.source "ConfigReceiptRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized configReceiptRequest(Lcom/taobao/wswitch/model/ReceiptInfo;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 38
    const-class v6, Lcom/taobao/wswitch/net/request/ConfigReceiptRequest;

    monitor-enter v6

    :try_start_0
    new-instance v0, Lcom/taobao/wswitch/model/ConfigReceiptInputDO;

    invoke-virtual {p0}, Lcom/taobao/wswitch/model/ReceiptInfo;->getG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/wswitch/model/ReceiptInfo;->getV()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/taobao/wswitch/model/ReceiptInfo;->getV()Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {}, Lcom/taobao/wswitch/business/ConfigContainer;->getInstance()Lcom/taobao/wswitch/business/ConfigContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/wswitch/business/ConfigContainer;->getTokenValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/taobao/wswitch/model/ReceiptInfo;->getI()Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/taobao/wswitch/model/ReceiptInfo;->getI()Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :cond_0
    invoke-virtual {p0}, Lcom/taobao/wswitch/model/ReceiptInfo;->getE()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/taobao/wswitch/model/ConfigReceiptInputDO;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-static {v0}, Lmtopsdk/mtop/util/MtopConvert;->inputDoToMtopRequest(Lmtopsdk/mtop/domain/IMTOPDataObject;)Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v0

    .line 42
    new-instance v1, Lmtopsdk/mtop/common/MtopNetworkProp;

    invoke-direct {v1}, Lmtopsdk/mtop/common/MtopNetworkProp;-><init>()V

    .line 43
    sget-object v2, Lmtopsdk/mtop/domain/MethodEnum;->POST:Lmtopsdk/mtop/domain/MethodEnum;

    invoke-virtual {v1, v2}, Lmtopsdk/mtop/common/MtopNetworkProp;->setMethod(Lmtopsdk/mtop/domain/MethodEnum;)V

    .line 44
    new-instance v2, Lmtopsdk/mtop/MtopProxy;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v0, v1, v3, v4}, Lmtopsdk/mtop/MtopProxy;-><init>(Lmtopsdk/mtop/domain/MtopRequest;Lmtopsdk/mtop/common/MtopNetworkProp;Ljava/lang/Object;Lmtopsdk/mtop/common/MtopListener;)V

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v2, v0}, Lmtopsdk/mtop/MtopProxy;->setContext(Ljava/lang/Object;)V

    .line 46
    new-instance v0, Lcom/taobao/wswitch/net/request/ReceiptRequestListener;

    invoke-direct {v0, p0}, Lcom/taobao/wswitch/net/request/ReceiptRequestListener;-><init>(Lcom/taobao/wswitch/model/ReceiptInfo;)V

    .line 47
    invoke-virtual {v2, v0}, Lmtopsdk/mtop/MtopProxy;->setCallback(Lmtopsdk/mtop/common/MtopListener;)V

    .line 48
    invoke-virtual {v2}, Lmtopsdk/mtop/MtopProxy;->asyncApiCall()Lmtopsdk/mtop/common/ApiID;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit v6

    return-void

    :cond_1
    move-object v2, v4

    .line 38
    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public static doReceipt(Lcom/taobao/wswitch/model/ConfigFile;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/taobao/wswitch/model/ConfigFile;->getStatus()I

    move-result v0

    invoke-static {v0}, Lcom/taobao/wswitch/util/EntityHelper;->isReceiptedNeeded(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Lcom/taobao/wswitch/model/ReceiptInfo;

    invoke-virtual {p0}, Lcom/taobao/wswitch/model/ConfigFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/wswitch/model/ConfigFile;->getVersion()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0}, Lcom/taobao/wswitch/model/ConfigFile;->getId()Ljava/lang/Long;

    move-result-object v4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/taobao/wswitch/model/ReceiptInfo;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    .line 61
    invoke-static {v0}, Lcom/taobao/wswitch/net/request/ConfigReceiptRequest;->configReceiptRequest(Lcom/taobao/wswitch/model/ReceiptInfo;)V

    .line 63
    :cond_0
    return-void
.end method

.method public static doReceipt(Lcom/taobao/wswitch/model/XcmdGroupEntity;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/taobao/wswitch/model/XcmdGroupEntity;->getS()I

    move-result v0

    invoke-static {v0}, Lcom/taobao/wswitch/util/EntityHelper;->isReceiptedNeeded(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Lcom/taobao/wswitch/model/ReceiptInfo;

    invoke-virtual {p0}, Lcom/taobao/wswitch/model/XcmdGroupEntity;->getG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/wswitch/model/XcmdGroupEntity;->getV()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/taobao/wswitch/util/EntityHelper;->toLong(Ljava/lang/Object;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0}, Lcom/taobao/wswitch/model/XcmdGroupEntity;->getI()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/taobao/wswitch/model/ReceiptInfo;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    .line 54
    invoke-static {v0}, Lcom/taobao/wswitch/net/request/ConfigReceiptRequest;->configReceiptRequest(Lcom/taobao/wswitch/model/ReceiptInfo;)V

    .line 56
    :cond_0
    return-void
.end method
