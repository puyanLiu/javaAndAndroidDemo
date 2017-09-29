.class public Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/MRpcClient;
.super Ljava/lang/Object;
.source "MRpcClient.java"

# interfaces
.implements Lcom/alipay/mobile/common/transport/ext/ExtTransportClient;


# static fields
.field private static MRPC_CLIENT:Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/MRpcClient; = null

.field private static final TAG:Ljava/lang/String; = "MRpcClient"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/MRpcClient;->mContext:Landroid/content/Context;

    .line 85
    return-void
.end method

.method private add2CookieStore(Lorg/apache/http/HeaderIterator;Lorg/apache/http/cookie/CookieSpec;Lorg/apache/http/cookie/CookieOrigin;Lorg/apache/http/client/CookieStore;)V
    .locals 3

    .prologue
    .line 352
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    invoke-interface {p1}, Lorg/apache/http/HeaderIterator;->nextHeader()Lorg/apache/http/Header;

    move-result-object v0

    .line 355
    :try_start_0
    invoke-interface {p2, v0, p3}, Lorg/apache/http/cookie/CookieSpec;->parse(Lorg/apache/http/Header;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v0

    .line 356
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 358
    :try_start_1
    invoke-interface {p2, v0, p3}, Lorg/apache/http/cookie/CookieSpec;->validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V

    .line 359
    invoke-interface {p4, v0}, Lorg/apache/http/client/CookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 360
    :catch_0
    move-exception v0

    .line 361
    :try_start_2
    const-string/jumbo v2, "MRpcClient"

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 364
    :catch_1
    move-exception v0

    .line 365
    const-string/jumbo v1, "MRpcClient"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 368
    :cond_1
    return-void
.end method

.method private constructRequest(Lorg/apache/http/HttpRequest;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 5

    .prologue
    .line 312
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    .line 313
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 314
    aget-object v2, v1, v0

    .line 315
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 316
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 317
    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2, v3}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 322
    :cond_1
    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getReqData()[B

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcRequest;->setDatas([B)V

    .line 325
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportEnv;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/TransportStrategy;->getReadTimeout(Landroid/content/Context;)I

    move-result v0

    iput v0, p3, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcRequest;->readTimeout:I

    .line 326
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportEnv;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/TransportStrategy;->getConnTimeout(Landroid/content/Context;)I

    move-result v0

    iput v0, p3, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcRequest;->connTimeout:I

    .line 327
    invoke-static {}, Lcom/alipay/mobile/common/transport/TransportStrategy;->getHandshakTimeout()I

    move-result v0

    iput v0, p3, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcRequest;->sslTimeout:I

    .line 330
    invoke-virtual {p3}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcRequest;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "Operation-Type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 331
    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportStrategy;->isSupportAmnetResend(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 332
    const/4 v0, 0x1

    iput-boolean v0, p3, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcRequest;->important:Z

    .line 335
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/MRpcClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 336
    const-string/jumbo v0, "MRpcClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "AMTP Transport REQUEST START! operationType="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "opererationType"

    invoke-virtual {p2, v2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".requestline="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    :cond_3
    return-void
.end method

.method private createBasicHttpResponse(Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;)Lorg/apache/http/message/BasicHttpResponse;
    .locals 4

    .prologue
    .line 241
    const-string/jumbo v2, "OK"

    .line 242
    const/16 v1, 0xc8

    .line 243
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;->getHeaders()Ljava/util/Map;

    move-result-object v0

    .line 244
    if-eqz v0, :cond_0

    const-string/jumbo v3, "Result-Status"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v3, "8001"

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    const/16 v0, 0x130

    .line 248
    const-string/jumbo v1, "Not Modified"

    .line 251
    :goto_0
    new-instance v2, Lorg/apache/http/message/BasicHttpResponse;

    sget-object v3, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-direct {v2, v3, v0, v1}, Lorg/apache/http/message/BasicHttpResponse;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    return-object v2

    :cond_0
    move v0, v1

    move-object v1, v2

    goto :goto_0
.end method

.method private execute(Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcRequest;Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/MRpcTransport;)Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p2, p1}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/MRpcTransport;->execute(Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcRequest;)Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;

    move-result-object v0

    return-object v0
.end method

.method private fillLogDataItem(Lcom/alipay/mobile/common/transport/context/TransportContext;Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;I)V
    .locals 4

    .prologue
    .line 141
    const-string/jumbo v0, "MRpcClient"

    const-string/jumbo v1, "fillLogDataItem start."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :try_start_0
    iget-object v0, p2, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;->targetHost:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    const-string/jumbo v1, "TARGET_HOST"

    iget-object v2, p2, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;->targetHost:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->putDataItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_0
    const/4 v0, 0x0

    .line 152
    iget v1, p2, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;->dnsTiming:I

    if-lez v1, :cond_1

    .line 153
    const-string/jumbo v0, "MRpcClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "dnsTiming:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p2, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;->dnsTiming:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget v0, p2, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;->dnsTiming:I

    add-int/lit8 v0, v0, 0x0

    .line 155
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v1

    const-string/jumbo v2, "DNS_TIME"

    iget v3, p2, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;->dnsTiming:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->putDataItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_1
    iget v1, p2, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;->tcpTiming:I

    if-lez v1, :cond_2

    .line 160
    const-string/jumbo v1, "MRpcClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "tcpTiming:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p2, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;->tcpTiming:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget v1, p2, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;->tcpTiming:I

    add-int/2addr v0, v1

    .line 162
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v1

    const-string/jumbo v2, "TCP_TIME"

    iget v3, p2, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;->tcpTiming:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->putDataItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_2
    iget v1, p2, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;->sslTiming:I

    if-lez v1, :cond_3

    .line 167
    const-string/jumbo v1, "MRpcClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sslTiming:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p2, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;->sslTiming:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget v1, p2, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;->sslTiming:I

    add-int/2addr v0, v1

    .line 169
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v1

    const-string/jumbo v2, "SSL_TIME"

    iget v3, p2, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;->sslTiming:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->putDataItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_3
    iget v1, p2, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;->readTiming:I

    if-lez v1, :cond_4

    .line 174
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v1

    const-string/jumbo v2, "READ_TIME"

    iget v3, p2, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;->readTiming:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->putDataItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_4
    const-string/jumbo v1, "MRpcClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sentTime:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    if-le p3, v0, :cond_5

    .line 182
    sub-int/2addr p3, v0

    .line 184
    :cond_5
    const-string/jumbo v0, "MRpcClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "dataTime:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    const-string/jumbo v1, "DATA_TIME"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->putDataItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget v0, p2, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;->readTiming:I

    if-lez v0, :cond_6

    iget v0, p2, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;->readTiming:I

    if-le p3, v0, :cond_6

    .line 189
    iget v0, p2, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;->readTiming:I

    sub-int v0, p3, v0

    .line 190
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v1

    const-string/jumbo v2, "WAIT_TIME"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->putDataItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_6
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    const-string/jumbo v1, "REQ_SIZE"

    iget v2, p2, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;->reqSize:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->putDataItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    const-string/jumbo v1, "RES_SIZE"

    iget v2, p2, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;->respSize:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->putDataItem(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :goto_0
    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 196
    const-string/jumbo v1, "MRpcClient"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getCookieSpec(Lorg/apache/http/HttpResponse;)Lorg/apache/http/cookie/CookieSpec;
    .locals 3

    .prologue
    .line 295
    const-string/jumbo v0, "Set-Cookie"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 296
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Version=1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "version=1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    :cond_0
    new-instance v0, Lorg/apache/http/impl/cookie/RFC2109Spec;

    invoke-direct {v0}, Lorg/apache/http/impl/cookie/RFC2109Spec;-><init>()V

    .line 300
    const-string/jumbo v1, "domain"

    new-instance v2, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/cookie/MRFC2109DomainHandler;

    invoke-direct {v2}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/cookie/MRFC2109DomainHandler;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/cookie/RFC2109Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 304
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lorg/apache/http/impl/cookie/BestMatchSpec;

    invoke-direct {v0}, Lorg/apache/http/impl/cookie/BestMatchSpec;-><init>()V

    goto :goto_0
.end method

.method public static final getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/MRpcClient;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/MRpcClient;->MRPC_CLIENT:Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/MRpcClient;

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/MRpcClient;->MRPC_CLIENT:Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/MRpcClient;

    .line 80
    :goto_0
    return-object v0

    .line 79
    :cond_0
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/MRpcClient;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/MRpcClient;-><init>(Landroid/content/Context;)V

    .line 80
    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/MRpcClient;->MRPC_CLIENT:Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/MRpcClient;

    goto :goto_0
.end method

.method private getRequestURI(Lorg/apache/http/HttpRequest;)Ljava/net/URI;
    .locals 4

    .prologue
    .line 377
    instance-of v0, p1, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_0

    .line 379
    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    .line 388
    :goto_0
    return-object v0

    .line 382
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 383
    :catch_0
    move-exception v0

    .line 384
    new-instance v1, Lorg/apache/http/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Invalid request URI: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private handleResponse(Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;)Lorg/apache/http/HttpResponse;
    .locals 5

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/MRpcClient;->createBasicHttpResponse(Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;)Lorg/apache/http/message/BasicHttpResponse;

    move-result-object v2

    .line 212
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;->getHeaders()Ljava/util/Map;

    move-result-object v0

    .line 213
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 214
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 215
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 216
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lorg/apache/http/message/BasicHttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 224
    :cond_1
    invoke-virtual {v2}, Lorg/apache/http/message/BasicHttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0x130

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;->body:[B

    array-length v0, v0

    if-lez v0, :cond_3

    .line 227
    :cond_2
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p1, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;->body:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 229
    new-instance v1, Lorg/apache/http/entity/InputStreamEntity;

    iget-object v3, p1, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;->body:[B

    array-length v3, v3

    int-to-long v3, v3

    invoke-direct {v1, v0, v3, v4}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 232
    invoke-virtual {v2, v1}, Lorg/apache/http/message/BasicHttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 236
    :cond_3
    return-object v2
.end method

.method private mockSucResponse()Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;
    .locals 4

    .prologue
    .line 397
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;-><init>()V

    .line 398
    const/16 v1, 0x7d0

    iput v1, v0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;->resultCode:I

    .line 399
    const/4 v1, 0x0

    new-array v1, v1, [B

    iput-object v1, v0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;->body:[B

    .line 401
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 402
    const-string/jumbo v2, "Result-Status"

    const-string/jumbo v3, "1000"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    return-object v0
.end method


# virtual methods
.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 10

    .prologue
    .line 92
    const-string/jumbo v0, "MRpcClient"

    const-string/jumbo v1, "MRPCClient execute."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string/jumbo v0, "NET_CONTEXT"

    invoke-interface {p3, v0}, Lorg/apache/http/protocol/HttpContext;->removeAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/alipay/mobile/common/transport/context/TransportContext;

    .line 99
    invoke-direct {p0, p2}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/MRpcClient;->getRequestURI(Lorg/apache/http/HttpRequest;)Ljava/net/URI;

    move-result-object v2

    .line 100
    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    .line 101
    new-instance v1, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcRequest;

    invoke-direct {v1, v3}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcRequest;-><init>(Ljava/lang/String;)V

    .line 102
    const-string/jumbo v0, "originRequest"

    invoke-interface {p3, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-direct {p0, p2, v0, v1, p3}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/MRpcClient;->constructRequest(Lorg/apache/http/HttpRequest;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcRequest;Lorg/apache/http/protocol/HttpContext;)V

    .line 105
    new-instance v7, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/MRpcTransport;

    invoke-direct {v7}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/MRpcTransport;-><init>()V

    .line 108
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 109
    invoke-direct {p0, v1, v7}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/MRpcClient;->execute(Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcRequest;Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/MRpcTransport;)Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;

    move-result-object v0

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v4, v8, v4

    long-to-int v4, v4

    .line 111
    const-string/jumbo v5, "MRpcClient"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "AMTP Transport RESPONSE_notimeout.  request="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v8, ".response="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-direct {p0, v6, v0, v4}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/MRpcClient;->fillLogDataItem(Lcom/alipay/mobile/common/transport/context/TransportContext;Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;I)V

    .line 117
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/MRpcClient;->handleResponse(Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    .line 120
    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/MRpcClient;->extractCookiesFromResponse(Lorg/apache/http/HttpHost;Ljava/net/URI;Ljava/lang/String;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    return-object v4

    .line 123
    :catch_0
    move-exception v0

    .line 124
    invoke-virtual {v7}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/MRpcTransport;->getTargetHost()Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 126
    invoke-virtual {v6}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v2

    const-string/jumbo v3, "TARGET_HOST"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->putDataItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_0
    invoke-virtual {v6}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v1

    const-string/jumbo v2, "ERROR"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->putDataItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {v6}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getNetType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportStrategy;->setNetTypeAmtpBizError(Ljava/lang/String;)V

    .line 130
    throw v0
.end method

.method public extractCookiesFromResponse(Lorg/apache/http/HttpHost;Ljava/net/URI;Ljava/lang/String;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 6

    .prologue
    .line 269
    const-string/jumbo v0, "http.cookie-store"

    invoke-interface {p5, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/CookieStore;

    .line 272
    if-nez v0, :cond_0

    .line 292
    :goto_0
    return-void

    .line 277
    :cond_0
    new-instance v1, Lorg/apache/http/cookie/CookieOrigin;

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v3

    invoke-virtual {p2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/http/cookie/CookieOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 280
    const-string/jumbo v2, "MRpcClient"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, " set Coookie. host="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",port="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string/jumbo v2, "Set-Cookie"

    invoke-interface {p4, v2}, Lorg/apache/http/HttpResponse;->headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;

    move-result-object v2

    .line 288
    invoke-direct {p0, p4}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/MRpcClient;->getCookieSpec(Lorg/apache/http/HttpResponse;)Lorg/apache/http/cookie/CookieSpec;

    move-result-object v3

    .line 291
    invoke-direct {p0, v2, v3, v1, v0}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/MRpcClient;->add2CookieStore(Lorg/apache/http/HeaderIterator;Lorg/apache/http/cookie/CookieSpec;Lorg/apache/http/cookie/CookieOrigin;Lorg/apache/http/client/CookieStore;)V

    goto :goto_0
.end method

.method public getModuleCategory()I
    .locals 1

    .prologue
    .line 393
    const/4 v0, 0x1

    return v0
.end method
