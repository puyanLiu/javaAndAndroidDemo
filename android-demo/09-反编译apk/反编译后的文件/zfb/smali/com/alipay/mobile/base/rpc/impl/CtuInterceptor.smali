.class public Lcom/alipay/mobile/base/rpc/impl/CtuInterceptor;
.super Ljava/lang/Object;
.source "CtuInterceptor.java"

# interfaces
.implements Lcom/alipay/mobile/common/rpc/RpcInterceptor;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/alipay/mobile/base/rpc/impl/CtuInterceptor;->a:Landroid/content/Context;

    .line 22
    return-void
.end method


# virtual methods
.method public exceptionHandle(Ljava/lang/Object;Ljava/lang/ThreadLocal;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/alipay/mobile/common/rpc/RpcException;Ljava/lang/annotation/Annotation;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Object;",
            ">;[B",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            "Lcom/alipay/mobile/common/rpc/RpcException;",
            "Ljava/lang/annotation/Annotation;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public postHandle(Ljava/lang/Object;Ljava/lang/ThreadLocal;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/annotation/Annotation;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Object;",
            ">;[B",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/lang/annotation/Annotation;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public preHandle(Ljava/lang/Object;Ljava/lang/ThreadLocal;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/annotation/Annotation;Ljava/lang/ThreadLocal;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Object;",
            ">;[B",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/lang/annotation/Annotation;",
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 28
    invoke-virtual {p8}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p8, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 32
    :cond_0
    new-instance v1, Lcom/alipay/mobile/base/rpc/impl/RpcDeviceInfo;

    invoke-direct {v1}, Lcom/alipay/mobile/base/rpc/impl/RpcDeviceInfo;-><init>()V

    .line 33
    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getCellInfo()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobile/base/rpc/impl/RpcDeviceInfo;->a:Ljava/lang/String;

    .line 35
    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getImei()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobile/base/rpc/impl/RpcDeviceInfo;->g:Ljava/lang/String;

    .line 36
    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getImsi()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobile/base/rpc/impl/RpcDeviceInfo;->f:Ljava/lang/String;

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmScreenHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobile/base/rpc/impl/RpcDeviceInfo;->d:Ljava/lang/String;

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmScreenWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobile/base/rpc/impl/RpcDeviceInfo;->c:Ljava/lang/String;

    .line 39
    const-string/jumbo v2, "android"

    iput-object v2, v1, Lcom/alipay/mobile/base/rpc/impl/RpcDeviceInfo;->b:Ljava/lang/String;

    .line 40
    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobile/base/rpc/impl/RpcDeviceInfo;->e:Ljava/lang/String;

    .line 42
    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->ismRooted()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobile/base/rpc/impl/RpcDeviceInfo;->j:Ljava/lang/String;

    .line 46
    iget-object v2, p0, Lcom/alipay/mobile/base/rpc/impl/CtuInterceptor;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getInstance(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    move-result-object v2

    .line 47
    invoke-virtual {v2}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getTokenResult()Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;

    move-result-object v2

    iget-object v2, v2, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdid:Ljava/lang/String;

    .line 49
    if-eqz v2, :cond_1

    .line 50
    iput-object v2, v1, Lcom/alipay/mobile/base/rpc/impl/RpcDeviceInfo;->k:Ljava/lang/String;

    .line 53
    :cond_1
    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobile/base/rpc/impl/RpcDeviceInfo;->h:Ljava/lang/String;

    .line 54
    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobile/base/rpc/impl/RpcDeviceInfo;->i:Ljava/lang/String;

    .line 55
    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getLatitude()Ljava/lang/String;

    move-result-object v2

    .line 56
    if-eqz v2, :cond_2

    .line 57
    iput-object v2, v1, Lcom/alipay/mobile/base/rpc/impl/RpcDeviceInfo;->l:Ljava/lang/String;

    .line 59
    :cond_2
    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getLongitude()Ljava/lang/String;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_3

    .line 61
    iput-object v0, v1, Lcom/alipay/mobile/base/rpc/impl/RpcDeviceInfo;->m:Ljava/lang/String;

    .line 64
    :cond_3
    invoke-virtual {p8}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string/jumbo v2, "updateDeviceInfo"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const/4 v0, 0x1

    return v0
.end method
