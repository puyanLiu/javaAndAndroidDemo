.class public Lmtopsdk/mtop/transform/converter/Api4NetworkConverter;
.super Lmtopsdk/mtop/transform/converter/NetworkConverter;
.source "Api4NetworkConverter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.Api4NetworkConverter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lmtopsdk/mtop/transform/converter/NetworkConverter;-><init>()V

    return-void
.end method

.method private prepareRequestHeaders(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lmtopsdk/mtop/protocol/ParamReader;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    if-nez p2, :cond_0

    .line 115
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 120
    :cond_0
    invoke-static {}, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->values()[Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    .line 121
    invoke-virtual {v4}, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->getXstateKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmtopsdk/mtop/protocol/ParamReader;

    .line 122
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lmtopsdk/mtop/protocol/ParamReader;->getValue()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 124
    :try_start_0
    invoke-virtual {v4}, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->getHeadField()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Lmtopsdk/mtop/protocol/ParamReader;->getValue()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "utf-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 126
    :catch_0
    move-exception v5

    const-string/jumbo v5, "mtopsdk.Api4NetworkConverter"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "urlencode "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->getHeadField()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Lmtopsdk/mtop/protocol/ParamReader;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "error"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 132
    :cond_2
    const-string/jumbo v0, "lng"

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmtopsdk/mtop/protocol/ParamReader;

    .line 133
    const-string/jumbo v1, "lat"

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmtopsdk/mtop/protocol/ParamReader;

    .line 134
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    invoke-interface {v0}, Lmtopsdk/mtop/protocol/ParamReader;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    const-string/jumbo v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-interface {v1}, Lmtopsdk/mtop/protocol/ParamReader;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    :try_start_1
    const-string/jumbo v0, "m-location"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "utf-8"

    invoke-static {v1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 147
    :cond_3
    :goto_2
    return-object p2

    .line 142
    :catch_1
    move-exception v0

    const-string/jumbo v0, "mtopsdk.Api4NetworkConverter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "urlencode m-location="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public convert(Lmtopsdk/mtop/MtopProxy;Ljava/util/Map;)Lanetwork/channel/Request;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmtopsdk/mtop/MtopProxy;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lmtopsdk/mtop/protocol/ParamReader;",
            ">;)",
            "Lanetwork/channel/Request;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 37
    new-instance v2, Lanetwork/channel/entity/RequestImpl;

    invoke-direct {v2}, Lanetwork/channel/entity/RequestImpl;-><init>()V

    .line 38
    invoke-virtual {p1}, Lmtopsdk/mtop/MtopProxy;->getProperty()Lmtopsdk/mtop/common/MtopNetworkProp;

    move-result-object v0

    .line 40
    iget v3, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->connTimeout:I

    invoke-virtual {v2, v3}, Lanetwork/channel/entity/RequestImpl;->a(I)V

    .line 41
    iget v3, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->socketTimeout:I

    invoke-virtual {v2, v3}, Lanetwork/channel/entity/RequestImpl;->b(I)V

    .line 42
    invoke-virtual {v0}, Lmtopsdk/mtop/common/MtopNetworkProp;->getRetryTime()I

    move-result v3

    invoke-virtual {v2, v3}, Lanetwork/channel/entity/RequestImpl;->setRetryTime(I)V

    .line 44
    invoke-virtual {v0}, Lmtopsdk/mtop/common/MtopNetworkProp;->isAutoRedirect()Z

    move-result v3

    invoke-virtual {v2, v3}, Lanetwork/channel/entity/RequestImpl;->a(Z)V

    .line 47
    invoke-virtual {v0}, Lmtopsdk/mtop/common/MtopNetworkProp;->getMethod()Lmtopsdk/mtop/domain/MethodEnum;

    move-result-object v3

    .line 48
    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MethodEnum;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lanetwork/channel/entity/RequestImpl;->setMethod(Ljava/lang/String;)V

    .line 51
    :try_start_0
    invoke-virtual {v0}, Lmtopsdk/mtop/common/MtopNetworkProp;->getRequestHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lmtopsdk/mtop/transform/converter/Api4NetworkConverter;->prepareRequestHeaders(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    .line 54
    invoke-virtual {p0, v4}, Lmtopsdk/mtop/transform/converter/Api4NetworkConverter;->addApiUnitVersionHeader(Ljava/util/Map;)V

    .line 56
    invoke-virtual {p0, p2}, Lmtopsdk/mtop/transform/converter/Api4NetworkConverter;->appendMtopSdkProperty(Ljava/util/Map;)V

    .line 59
    const-string/jumbo v0, "api"

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmtopsdk/mtop/protocol/ParamReader;

    invoke-interface {v0}, Lmtopsdk/mtop/protocol/ParamReader;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 60
    const-string/jumbo v0, "v"

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmtopsdk/mtop/protocol/ParamReader;

    invoke-interface {v0}, Lmtopsdk/mtop/protocol/ParamReader;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 62
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmtopsdk/mtop/MtopProxy;->getFullBaseUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    const-string/jumbo v0, "/"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v8, "/"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v8, "/"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-static {p2}, Lmtopsdk/mtop/transform/converter/Api4NetworkConverter;->createRequestParams(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 71
    sget-object v8, Lmtopsdk/mtop/domain/MethodEnum;->POST:Lmtopsdk/mtop/domain/MethodEnum;

    invoke-virtual {v8}, Lmtopsdk/mtop/domain/MethodEnum;->getMethod()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MethodEnum;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 73
    const-string/jumbo v3, "content-type"

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 74
    const-string/jumbo v3, "content-type"

    const-string/jumbo v8, "application/x-www-form-urlencoded;charset=UTF-8"

    invoke-interface {v4, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_0
    const-string/jumbo v3, "utf-8"

    invoke-virtual {p0, v0, v3}, Lmtopsdk/mtop/transform/converter/Api4NetworkConverter;->createParamPostData(Ljava/util/List;Ljava/lang/String;)[B

    move-result-object v0

    .line 79
    if-eqz v0, :cond_1

    .line 80
    new-instance v3, Lmtopsdk/mtop/transform/bodyhandler/MtopGzipBodyHandlerFactory;

    invoke-virtual {p0}, Lmtopsdk/mtop/transform/converter/Api4NetworkConverter;->getGzipThreshold()I

    move-result v8

    invoke-direct {v3, v0, v8, v4}, Lmtopsdk/mtop/transform/bodyhandler/MtopGzipBodyHandlerFactory;-><init>([BILjava/util/Map;)V

    invoke-virtual {v3}, Lmtopsdk/mtop/transform/bodyhandler/MtopGzipBodyHandlerFactory;->createBodyHandler()Lanetwork/channel/IBodyHandler;

    move-result-object v0

    .line 81
    invoke-virtual {v2, v0}, Lanetwork/channel/entity/RequestImpl;->setBodyHandler(Lanetwork/channel/IBodyHandler;)V

    :cond_1
    move-object v0, v1

    .line 91
    :cond_2
    :goto_0
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lmtopsdk/mtop/transform/converter/Api4NetworkConverter;->initUrl(Ljava/lang/String;Ljava/util/List;)Ljava/net/URL;

    move-result-object v1

    .line 92
    invoke-static {v1, v5, v6}, Lmtopsdk/mtop/transform/converter/Api4NetworkConverter;->replaceApiUnitUrl(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v2, v1}, Lanetwork/channel/entity/RequestImpl;->a(Ljava/net/URL;)V

    .line 94
    invoke-virtual {p0, v4}, Lmtopsdk/mtop/transform/converter/Api4NetworkConverter;->createRequestHeaders(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Lanetwork/channel/entity/RequestImpl;->setHeaders(Ljava/util/List;)V

    .line 96
    invoke-virtual {v2, v0}, Lanetwork/channel/entity/RequestImpl;->setParams(Ljava/util/List;)V

    .line 98
    invoke-static {v2, p1}, Lmtopsdk/mtop/transform/converter/Api4NetworkConverter;->decideSpdySSL(Lanetwork/channel/Request;Lmtopsdk/mtop/MtopProxy;)V

    .line 103
    :goto_1
    return-object v2

    .line 86
    :cond_3
    invoke-virtual {p0, p1}, Lmtopsdk/mtop/transform/converter/Api4NetworkConverter;->isUseCache(Lmtopsdk/mtop/MtopProxy;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 87
    const-string/jumbo v1, "cache-control"

    const-string/jumbo v3, "no-cache"

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    const-string/jumbo v1, "mtopsdk.Api4NetworkConverter"

    const-string/jumbo v3, "[Api4NetworkConverter] convert Request failed!"

    invoke-static {v1, v3, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
