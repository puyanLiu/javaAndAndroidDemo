.class Lcom/alipay/android/app/template/util/RpcHelper$1;
.super Ljava/lang/Object;
.source "RpcHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lcom/alipay/android/app/template/util/RpcHelper$RpcCallback;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/template/util/RpcHelper$RpcCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/util/RpcHelper$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/template/util/RpcHelper$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/android/app/template/util/RpcHelper$1;->c:Lcom/alipay/android/app/template/util/RpcHelper$RpcCallback;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 25
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 26
    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 24
    const-class v1, Lcom/alipay/mobile/framework/service/ext/SimpleRpcService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/SimpleRpcService;

    .line 28
    iget-object v1, p0, Lcom/alipay/android/app/template/util/RpcHelper$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/app/template/util/RpcHelper$1;->b:Ljava/lang/String;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/service/ext/SimpleRpcService;->executeRPC(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/alipay/android/app/template/util/RpcHelper$1;->c:Lcom/alipay/android/app/template/util/RpcHelper$RpcCallback;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/android/app/template/util/RpcHelper$RpcCallback;->onRpcResponse(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    const-string/jumbo v1, "DynamicApp"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    iget-object v1, p0, Lcom/alipay/android/app/template/util/RpcHelper$1;->c:Lcom/alipay/android/app/template/util/RpcHelper$RpcCallback;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0, v4}, Lcom/alipay/android/app/template/util/RpcHelper$RpcCallback;->onRpcResponse(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
