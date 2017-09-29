.class public Lcom/alipay/mobile/common/rpc/RpcInvoker;
.super Ljava/lang/Object;
.source "RpcInvoker.java"


# static fields
.field private static final EXT_PARAM:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final MODE_BATCH:B = 0x1t

.field private static final MODE_DEFAULT:B

.field private static final RETURN_VALUE:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static mScene:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mMode:B

.field private mRpcFactory:Lcom/alipay/mobile/common/rpc/RpcFactory;

.field private rpcSequence:Ljava/util/concurrent/atomic/AtomicInteger;

.field private serializerFactory:Lcom/alipay/mobile/common/rpc/protocol/util/SerializerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->RETURN_VALUE:Ljava/lang/ThreadLocal;

    .line 62
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->EXT_PARAM:Ljava/lang/ThreadLocal;

    .line 90
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->mScene:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/common/rpc/RpcFactory;)V
    .locals 2

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->mMode:B

    .line 103
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->mRpcFactory:Lcom/alipay/mobile/common/rpc/RpcFactory;

    .line 104
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->rpcSequence:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 105
    new-instance v0, Lcom/alipay/mobile/common/rpc/protocol/util/SerializerFactory;

    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->mRpcFactory:Lcom/alipay/mobile/common/rpc/RpcFactory;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/rpc/protocol/util/SerializerFactory;-><init>(Lcom/alipay/mobile/common/rpc/RpcFactory;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->serializerFactory:Lcom/alipay/mobile/common/rpc/protocol/util/SerializerFactory;

    .line 106
    return-void
.end method

.method static synthetic access$000()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->RETURN_VALUE:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->EXT_PARAM:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method private addInfo2Caller(Ljava/lang/reflect/Method;Lcom/alipay/mobile/common/rpc/protocol/Serializer;Lcom/alipay/mobile/common/rpc/transport/RpcCaller;Ljava/lang/String;[BLcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;)V
    .locals 2

    .prologue
    .line 408
    instance-of v0, p3, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;

    if-nez v0, :cond_1

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    check-cast p3, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;

    .line 415
    instance-of v0, p2, Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer;

    if-nez v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 418
    :cond_2
    instance-of v0, p2, Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer;

    if-eqz v0, :cond_3

    .line 419
    check-cast p2, Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer;

    .line 420
    invoke-virtual {p2}, Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer;->getRequestDataDigest()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->setReqDataDigest(Ljava/lang/String;)V

    .line 426
    :goto_1
    const-string/jumbo v0, "application/x-www-form-urlencoded"

    invoke-virtual {p3, v0}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->setContentType(Ljava/lang/String;)V

    .line 427
    const-string/jumbo v0, "1"

    invoke-virtual {p3, v0}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->setRpcVersion(Ljava/lang/String;)V

    goto :goto_0

    .line 422
    :cond_3
    check-cast p2, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;

    .line 423
    invoke-virtual {p2}, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;->getRequestDataDigest()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->setReqDataDigest(Ljava/lang/String;)V

    goto :goto_1

    .line 431
    :cond_4
    instance-of v0, p2, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializerV2;

    if-eqz v0, :cond_6

    .line 432
    check-cast p2, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializerV2;

    .line 433
    invoke-virtual {p2}, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializerV2;->getRequestDataDigest()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->setReqDataDigest(Ljava/lang/String;)V

    .line 434
    const-string/jumbo v0, "application/json"

    invoke-virtual {p3, v0}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->setContentType(Ljava/lang/String;)V

    .line 442
    :cond_5
    :goto_2
    sget-object v0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->EXT_PARAM:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p3, v0}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->setExtObjectParam(Ljava/util/Map;)V

    .line 443
    const-string/jumbo v0, "2"

    invoke-virtual {p3, v0}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->setRpcVersion(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p0}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->getScene()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->setScene(Ljava/lang/String;)V

    .line 447
    invoke-static {}, Lcom/alipay/mobile/common/utils/GtsUtils;->get64HexCurrentTimeMillis()Ljava/lang/String;

    move-result-object v0

    .line 448
    invoke-virtual {p3, v0}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->setTimeStamp(Ljava/lang/String;)V

    .line 449
    invoke-static {p1}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->isNeedSign(Ljava/lang/reflect/Method;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 450
    invoke-direct {p0, p4, p5, v0, p6}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->getSignData(Ljava/lang/String;[BLjava/lang/String;Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;)Ljava/lang/String;

    move-result-object v0

    .line 451
    invoke-virtual {p3, v0}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->setSignData(Ljava/lang/String;)V

    goto :goto_0

    .line 435
    :cond_6
    instance-of v0, p2, Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBSerializer;

    if-eqz v0, :cond_5

    .line 436
    check-cast p2, Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBSerializer;

    .line 437
    const-string/jumbo v0, "application/protobuf"

    invoke-virtual {p3, v0}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->setContentType(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p2}, Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBSerializer;->getRequestDataDigest()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->setReqDataDigest(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static addProtocolArgs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 483
    sget-object v0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->EXT_PARAM:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 484
    sget-object v0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->EXT_PARAM:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 486
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->EXT_PARAM:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    return-void
.end method

.method private checkLogin(Ljava/lang/reflect/Method;Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;)V
    .locals 4

    .prologue
    .line 372
    :try_start_0
    const-class v0, Lcom/alipay/mobile/framework/service/annotation/OperationType;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/annotation/OperationType;

    .line 373
    if-nez v0, :cond_1

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    iget-object v1, p2, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->gwUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/TransportStrategy;->isAlipayUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->bgRpc:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 382
    const-class v1, Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;

    .line 383
    if-eqz v1, :cond_0

    .line 387
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    .line 388
    iget-object v2, p2, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->gwUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 389
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 390
    const-string/jumbo v1, "RpcInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "CheckLogin_prejudge: cookie is empty  API=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/alipay/mobile/framework/service/annotation/OperationType;->value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    new-instance v0, Lcom/alipay/mobile/common/rpc/RpcException;

    const/16 v1, 0x7d0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "\u767b\u5f55\u8d85\u65f6\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55:\u767b\u5f55\u8d85\u65f6\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    .line 403
    :catch_0
    move-exception v0

    goto :goto_0

    .line 394
    :cond_2
    const-string/jumbo v2, "ALIPAYJSESSIONID"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 395
    const-string/jumbo v1, "RpcInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "CheckLogin_prejudge: cookie not contains ALIPAYJSESSIONID!  API=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/alipay/mobile/framework/service/annotation/OperationType;->value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    new-instance v0, Lcom/alipay/mobile/common/rpc/RpcException;

    const/16 v1, 0x7d0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "\u767b\u5f55\u8d85\u65f6\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55:\u767b\u5f55\u8d85\u65f6\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
.end method

.method private exceptionHandle(Ljava/lang/Object;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;[Ljava/lang/annotation/Annotation;Lcom/alipay/mobile/common/rpc/RpcException;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[B",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lcom/alipay/mobile/common/rpc/RpcException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 270
    new-instance v0, Lcom/alipay/mobile/common/rpc/RpcInvoker$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/alipay/mobile/common/rpc/RpcInvoker$2;-><init>(Lcom/alipay/mobile/common/rpc/RpcInvoker;Ljava/lang/Object;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/alipay/mobile/common/rpc/RpcException;)V

    invoke-direct {p0, p6, v0}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->handleAnnotations([Ljava/lang/annotation/Annotation;Lcom/alipay/mobile/common/rpc/RpcInvoker$Handle;)Z

    move-result v0

    .line 285
    if-eqz v0, :cond_0

    .line 286
    throw p7

    .line 288
    :cond_0
    return-void
.end method

.method private getSerializer(Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/String;ILcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;)Lcom/alipay/mobile/common/rpc/protocol/Serializer;
    .locals 8

    .prologue
    .line 458
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->serializerFactory:Lcom/alipay/mobile/common/rpc/protocol/util/SerializerFactory;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->getScene()Ljava/lang/String;

    move-result-object v5

    move v1, p4

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/mobile/common/rpc/protocol/util/SerializerFactory;->getSerializer(ILjava/lang/String;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/String;Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;)Lcom/alipay/mobile/common/rpc/protocol/Serializer;

    move-result-object v0

    return-object v0
.end method

.method private getSignData(Ljava/lang/String;[BLjava/lang/String;Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;)Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 361
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 362
    const-string/jumbo v1, "Operation-Type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 363
    const-string/jumbo v1, "Request-Data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {p2, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 364
    const-string/jumbo v1, "Ts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 365
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 366
    const-string/jumbo v1, "JsonSerializer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sign content: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->mRpcFactory:Lcom/alipay/mobile/common/rpc/RpcFactory;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/rpc/RpcFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p4, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->appKey:Ljava/lang/String;

    invoke-virtual {p0, p4}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->isReq2Online(Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;)Z

    move-result v3

    invoke-static {v1, v2, v3, v0}, Lcom/alipay/mobile/common/transport/utils/RpcSignUtil;->signature(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleAnnotations([Ljava/lang/annotation/Annotation;Lcom/alipay/mobile/common/rpc/RpcInvoker$Handle;)Z
    .locals 7

    .prologue
    .line 210
    const/4 v1, 0x1

    .line 211
    array-length v2, p1

    const/4 v0, 0x0

    move v6, v0

    move v0, v1

    move v1, v6

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p1, v1

    .line 212
    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    .line 213
    iget-object v5, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->mRpcFactory:Lcom/alipay/mobile/common/rpc/RpcFactory;

    invoke-virtual {v5, v4}, Lcom/alipay/mobile/common/rpc/RpcFactory;->findRpcInterceptor(Ljava/lang/Class;)Lcom/alipay/mobile/common/rpc/RpcInterceptor;

    move-result-object v4

    .line 214
    if-eqz v4, :cond_0

    .line 215
    invoke-interface {p2, v4, v3}, Lcom/alipay/mobile/common/rpc/RpcInvoker$Handle;->handle(Lcom/alipay/mobile/common/rpc/RpcInterceptor;Ljava/lang/annotation/Annotation;)Z

    move-result v0

    .line 221
    if-eqz v0, :cond_0

    .line 222
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 225
    :cond_0
    return v0
.end method

.method public static isNeedSign(Ljava/lang/reflect/Method;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 560
    const-class v0, Lcom/alipay/mobile/framework/service/annotation/SignCheck;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/annotation/SignCheck;

    .line 561
    if-nez v0, :cond_0

    move v0, v1

    .line 564
    :goto_0
    return v0

    :cond_0
    invoke-interface {v0}, Lcom/alipay/mobile/framework/service/annotation/SignCheck;->value()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "no"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private postHandle(Ljava/lang/Object;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[B",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")V"
        }
    .end annotation

    .prologue
    .line 241
    new-instance v0, Lcom/alipay/mobile/common/rpc/RpcInvoker$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/common/rpc/RpcInvoker$1;-><init>(Lcom/alipay/mobile/common/rpc/RpcInvoker;Ljava/lang/Object;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    invoke-direct {p0, p6, v0}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->handleAnnotations([Ljava/lang/annotation/Annotation;Lcom/alipay/mobile/common/rpc/RpcInvoker$Handle;)Z

    .line 253
    return-void
.end method

.method private preHandle(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")V"
        }
    .end annotation

    .prologue
    .line 302
    new-instance v0, Lcom/alipay/mobile/common/rpc/RpcInvoker$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/common/rpc/RpcInvoker$3;-><init>(Lcom/alipay/mobile/common/rpc/RpcInvoker;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    invoke-direct {p0, p5, v0}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->handleAnnotations([Ljava/lang/annotation/Annotation;Lcom/alipay/mobile/common/rpc/RpcInvoker$Handle;)Z

    .line 314
    return-void
.end method

.method private printReturnObjLog(Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->getRpcFactory()Lcom/alipay/mobile/common/rpc/RpcFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    if-eqz p2, :cond_1

    .line 176
    const-string/jumbo v0, "RpcInvoker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ThreadId=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] methodName=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] returnObj=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    const-string/jumbo v0, "RpcInvoker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ThreadId=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] methodName=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] returnObj=[ is null ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processResponse(Ljava/lang/reflect/Method;Lcom/alipay/mobile/common/transport/Response;Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 185
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->serializerFactory:Lcom/alipay/mobile/common/rpc/protocol/util/SerializerFactory;

    invoke-virtual {v1, v0, p2, p3}, Lcom/alipay/mobile/common/rpc/protocol/util/SerializerFactory;->getDeserializer(Ljava/lang/reflect/Type;Lcom/alipay/mobile/common/transport/Response;Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;)Lcom/alipay/mobile/common/rpc/protocol/Deserializer;

    move-result-object v1

    .line 187
    invoke-interface {v1}, Lcom/alipay/mobile/common/rpc/protocol/Deserializer;->parser()Ljava/lang/Object;

    move-result-object v1

    .line 188
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_0

    .line 189
    sget-object v0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->RETURN_VALUE:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 191
    :cond_0
    return-object v1
.end method

.method private singleCall(Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/String;ILcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;)Lcom/alipay/mobile/common/transport/Response;
    .locals 14

    .prologue
    .line 329
    move-object/from16 v0, p5

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->checkLogin(Ljava/lang/reflect/Method;Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;)V

    .line 331
    invoke-direct/range {p0 .. p6}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->getSerializer(Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/String;ILcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;)Lcom/alipay/mobile/common/rpc/protocol/Serializer;

    move-result-object v10

    .line 333
    const-string/jumbo v1, "RpcInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "operationType="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".serializerClass="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    sget-object v1, Lcom/alipay/mobile/common/rpc/RpcInvoker;->EXT_PARAM:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 340
    sget-object v1, Lcom/alipay/mobile/common/rpc/RpcInvoker;->EXT_PARAM:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v10, v1}, Lcom/alipay/mobile/common/rpc/protocol/Serializer;->setExtParam(Ljava/lang/Object;)V

    .line 343
    :cond_0
    invoke-interface {v10}, Lcom/alipay/mobile/common/rpc/protocol/Serializer;->packet()[B

    move-result-object v6

    .line 344
    new-instance v1, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;

    iget-object v2, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->mRpcFactory:Lcom/alipay/mobile/common/rpc/RpcFactory;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/rpc/RpcFactory;->getConfig()Lcom/alipay/mobile/common/rpc/Config;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->serializerFactory:Lcom/alipay/mobile/common/rpc/protocol/util/SerializerFactory;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/common/rpc/protocol/util/SerializerFactory;->getContentType(Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;)Ljava/lang/String;

    move-result-object v7

    iget-object v3, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->mRpcFactory:Lcom/alipay/mobile/common/rpc/RpcFactory;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/rpc/RpcFactory;->getContext()Landroid/content/Context;

    move-result-object v8

    move-object v3, p1

    move/from16 v4, p4

    move-object/from16 v5, p3

    move-object/from16 v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;-><init>(Lcom/alipay/mobile/common/rpc/Config;Ljava/lang/reflect/Method;ILjava/lang/String;[BLjava/lang/String;Landroid/content/Context;Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;)V

    move-object v7, p0

    move-object v8, p1

    move-object v9, v10

    move-object v10, v1

    move-object/from16 v11, p3

    move-object v12, v6

    move-object/from16 v13, p5

    .line 347
    invoke-direct/range {v7 .. v13}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->addInfo2Caller(Ljava/lang/reflect/Method;Lcom/alipay/mobile/common/rpc/protocol/Serializer;Lcom/alipay/mobile/common/rpc/transport/RpcCaller;Ljava/lang/String;[BLcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;)V

    .line 349
    invoke-virtual {v1}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->call()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/common/transport/Response;

    .line 351
    sget-object v2, Lcom/alipay/mobile/common/rpc/RpcInvoker;->EXT_PARAM:Ljava/lang/ThreadLocal;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 353
    const-string/jumbo v2, "RpcInvoker"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, " operationType = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    return-object v1
.end method


# virtual methods
.method public batchBegin()V
    .locals 1

    .prologue
    .line 465
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->mMode:B

    .line 466
    return-void
.end method

.method public batchCommit()Ljava/util/concurrent/FutureTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/FutureTask",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 472
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->mMode:B

    .line 473
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRpcFactory()Lcom/alipay/mobile/common/rpc/RpcFactory;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->mRpcFactory:Lcom/alipay/mobile/common/rpc/RpcFactory;

    return-object v0
.end method

.method public getScene()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    sget-object v0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->mScene:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            "Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 122
    const-string/jumbo v1, "RpcInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ThreadId=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]  invoke. object=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]  methodName=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-static {}, Lcom/alipay/mobile/common/utils/ThreadUtil;->checkMainThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    new-instance v1, Ljava/lang/IllegalThreadStateException;

    const-string/jumbo v2, "can\'t call rpc in main thread."

    invoke-direct {v1, v2}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 127
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 129
    sget-object v1, Lcom/alipay/mobile/common/rpc/RpcInvoker;->RETURN_VALUE:Ljava/lang/ThreadLocal;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 130
    sget-object v1, Lcom/alipay/mobile/common/rpc/RpcInvoker;->EXT_PARAM:Ljava/lang/ThreadLocal;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 132
    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->rpcSequence:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v13

    .line 135
    invoke-static/range {p3 .. p4}, Lcom/alipay/mobile/common/rpc/util/RpcInvokerUtil;->getOperationTypeValue(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v13, v11, v12}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->recordInvokeStartTime(Ljava/lang/String;IJ)V

    .line 137
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->preHandle(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    .line 141
    const/4 v8, 0x0

    .line 142
    const/4 v9, 0x0

    .line 144
    :try_start_0
    iget-byte v1, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->mMode:B

    if-nez v1, :cond_4

    .line 145
    new-instance v7, Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;

    invoke-direct {v7}, Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;-><init>()V

    .line 146
    invoke-static/range {p3 .. p4}, Lcom/alipay/mobile/common/rpc/util/RpcInvokerUtil;->getOperationTypeValue(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move v5, v13

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->singleCall(Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/String;ILcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;)Lcom/alipay/mobile/common/transport/Response;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 147
    :try_start_1
    move-object/from16 v0, p3

    invoke-direct {p0, v0, v2, v7}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->processResponse(Ljava/lang/reflect/Method;Lcom/alipay/mobile/common/transport/Response;Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 156
    :goto_0
    invoke-static/range {p3 .. p4}, Lcom/alipay/mobile/common/rpc/util/RpcInvokerUtil;->getOperationTypeValue(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v13}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->removeInvokeStartTime(Ljava/lang/String;I)V

    move-object v8, v1

    .line 159
    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/Response;->getResData()[B

    move-result-object v3

    :goto_2
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->postHandle(Ljava/lang/Object;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v11

    .line 163
    const-string/jumbo v3, "RpcInvoker"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ThreadId=["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] methodName=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] invokeTiming=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    sget-object v1, Lcom/alipay/mobile/common/rpc/RpcInvoker;->RETURN_VALUE:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 167
    sget-object v1, Lcom/alipay/mobile/common/rpc/RpcInvoker;->RETURN_VALUE:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    .line 169
    :goto_3
    move-object/from16 v0, p3

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->printReturnObjLog(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    .line 170
    return-object v1

    .line 152
    :catch_0
    move-exception v1

    move-object v10, v8

    move-object v8, v1

    .line 153
    :goto_4
    :try_start_2
    invoke-static/range {p3 .. p4}, Lcom/alipay/mobile/common/rpc/util/RpcInvokerUtil;->getOperationTypeValue(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/alipay/mobile/common/rpc/RpcException;->setOperationType(Ljava/lang/String;)V

    .line 154
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Lcom/alipay/mobile/common/transport/Response;->getResData()[B

    move-result-object v3

    :goto_5
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v8}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->exceptionHandle(Ljava/lang/Object;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;[Ljava/lang/annotation/Annotation;Lcom/alipay/mobile/common/rpc/RpcException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    invoke-static/range {p3 .. p4}, Lcom/alipay/mobile/common/rpc/util/RpcInvokerUtil;->getOperationTypeValue(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v13}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->removeInvokeStartTime(Ljava/lang/String;I)V

    move-object v8, v9

    move-object v2, v10

    .line 157
    goto/16 :goto_1

    .line 154
    :cond_1
    const/4 v3, 0x0

    goto :goto_5

    .line 156
    :catchall_0
    move-exception v1

    invoke-static/range {p3 .. p4}, Lcom/alipay/mobile/common/rpc/util/RpcInvokerUtil;->getOperationTypeValue(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v13}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->removeInvokeStartTime(Ljava/lang/String;I)V

    throw v1

    .line 159
    :cond_2
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 152
    :catch_1
    move-exception v8

    move-object v10, v2

    goto :goto_4

    :cond_3
    move-object v1, v8

    goto :goto_3

    :cond_4
    move-object v1, v9

    move-object v2, v8

    goto/16 :goto_0
.end method

.method public isReq2Online(Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 533
    iget-object v1, p1, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->gwUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 534
    const-string/jumbo v1, "rpc"

    const-string/jumbo v2, "handler.getConfig().getUrl() is null"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    :cond_0
    :goto_0
    return v0

    .line 539
    :cond_1
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p1, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->gwUrl:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 540
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "mobilegw"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "alipay"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 541
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "alipay.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 544
    const/4 v0, 0x1

    goto :goto_0

    .line 547
    :catch_0
    move-exception v1

    .line 548
    const-string/jumbo v2, "rpc"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public recordInvokeStartTime(Ljava/lang/String;IJ)V
    .locals 5

    .prologue
    .line 505
    const-string/jumbo v0, "RpcInvoker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "recordInvokeStartTime. API=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;->getInstance()Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;

    move-result-object v0

    .line 508
    const-string/jumbo v1, "rpc"

    const-string/jumbo v2, "rpc"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "rpc#"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public removeInvokeStartTime(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 521
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;->getInstance()Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "rpc#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setScene(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 195
    sget-object v0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->mScene:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 196
    return-void
.end method
