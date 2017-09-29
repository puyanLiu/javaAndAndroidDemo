.class public Lcom/alipay/mobile/common/rpc/protocol/json/JsonDeserializerV2;
.super Lcom/alipay/mobile/common/rpc/protocol/AbstractDeserializer;
.source "JsonDeserializerV2.java"


# instance fields
.field private response:Lcom/alipay/mobile/common/transport/Response;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;Lcom/alipay/mobile/common/transport/Response;)V
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/Response;->getResData()[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/common/rpc/protocol/AbstractDeserializer;-><init>(Ljava/lang/reflect/Type;[B)V

    .line 34
    iput-object p2, p0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonDeserializerV2;->response:Lcom/alipay/mobile/common/transport/Response;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Type;[B)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/rpc/protocol/AbstractDeserializer;-><init>(Ljava/lang/reflect/Type;[B)V

    .line 30
    return-void
.end method

.method private logResult(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 69
    const-string/jumbo v1, "JsonDeserializerV2"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "threadid = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "; rpc response:  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " mType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonDeserializerV2;->mType:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonDeserializerV2;->mType:Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void

    .line 69
    :cond_0
    const-string/jumbo v0, " is null "

    goto :goto_0
.end method


# virtual methods
.method public parser()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 41
    const-string/jumbo v1, ""

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonDeserializerV2;->response:Lcom/alipay/mobile/common/transport/Response;

    invoke-static {v0}, Lcom/alipay/mobile/common/rpc/util/RpcInvokerUtil;->preProcessResponse(Lcom/alipay/mobile/common/transport/Response;)V

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonDeserializerV2;->mType:Ljava/lang/reflect/Type;

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_0

    .line 49
    const/4 v0, 0x0

    .line 55
    :goto_0
    return-object v0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonDeserializerV2;->mData:[B

    const-string/jumbo v2, "UTF-8"

    invoke-static {v0, v2}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonDeserializerV2;->mType:Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {v1, v0, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    .line 58
    new-instance v3, Lcom/alipay/mobile/common/rpc/RpcException;

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "response  ="

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    :goto_1
    invoke-direct {v3, v4, v0}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v3, v1}, Lcom/alipay/mobile/common/rpc/RpcException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 63
    invoke-direct {p0, v2}, Lcom/alipay/mobile/common/rpc/protocol/json/JsonDeserializerV2;->logResult(Ljava/lang/String;)V

    .line 64
    throw v3

    .line 58
    :cond_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
