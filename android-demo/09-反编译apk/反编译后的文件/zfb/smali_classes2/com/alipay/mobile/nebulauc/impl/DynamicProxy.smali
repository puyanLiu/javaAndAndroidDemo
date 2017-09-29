.class Lcom/alipay/mobile/nebulauc/impl/DynamicProxy;
.super Ljava/lang/Object;
.source "DynamicProxy.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dynamicProxy(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 48
    new-instance v0, Lcom/alipay/mobile/nebulauc/impl/DynamicProxy$1;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/nebulauc/impl/DynamicProxy$1;-><init>(Ljava/lang/Object;)V

    .line 60
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
