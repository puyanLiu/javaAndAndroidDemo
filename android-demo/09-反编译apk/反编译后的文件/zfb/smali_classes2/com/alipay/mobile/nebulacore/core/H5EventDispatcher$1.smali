.class Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$1;
.super Ljava/lang/Object;
.source "H5EventDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;

.field private final synthetic b:Lcom/alipay/mobile/h5container/api/H5Event;

.field private final synthetic c:Lcom/alipay/mobile/h5container/api/H5BridgeContext;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$1;->a:Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$1;->b:Lcom/alipay/mobile/h5container/api/H5Event;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$1;->c:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 85
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$1;->a:Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$1;->b:Lcom/alipay/mobile/h5container/api/H5Event;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$1;->c:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;->a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 87
    sget-boolean v2, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 88
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$1;->b:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 89
    const-string/jumbo v3, "H5EventDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "] dispatch elapse "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_0
    return-void
.end method
