.class public final Lcom/alipay/android/phone/businesscommon/advertisement/h/b;
.super Ljava/lang/Object;
.source "MicroServiceUtil.java"


# static fields
.field private static a:Lcom/alipay/mobile/framework/service/common/RpcService;

.field private static b:Lcom/alipay/mobile/framework/MicroApplicationContext;


# direct methods
.method public static final a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 42
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/h/b;->a()V

    .line 43
    sget-object v0, Lcom/alipay/android/phone/businesscommon/advertisement/h/b;->a:Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/service/common/RpcService;->getBgRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static final a()V
    .locals 2

    .prologue
    .line 20
    sget-object v0, Lcom/alipay/android/phone/businesscommon/advertisement/h/b;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/phone/businesscommon/advertisement/h/b;->a:Lcom/alipay/mobile/framework/service/common/RpcService;

    if-nez v0, :cond_1

    .line 21
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 22
    sput-object v0, Lcom/alipay/android/phone/businesscommon/advertisement/h/b;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    sput-object v0, Lcom/alipay/android/phone/businesscommon/advertisement/h/b;->a:Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 24
    :cond_1
    return-void
.end method

.method public static final b(Ljava/lang/Class;)Lcom/alipay/mobile/framework/service/MicroService;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/alipay/mobile/framework/service/MicroService;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 49
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/h/b;->a()V

    .line 50
    const-class v0, Lcom/alipay/mobile/framework/service/CommonService;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    sget-object v0, Lcom/alipay/android/phone/businesscommon/advertisement/h/b;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 52
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/MicroService;

    .line 57
    :goto_0
    return-object v0

    .line 53
    :cond_0
    const-class v0, Lcom/alipay/mobile/framework/service/ext/ExternalService;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    sget-object v0, Lcom/alipay/android/phone/businesscommon/advertisement/h/b;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 55
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    goto :goto_0

    .line 57
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final c(Ljava/lang/Class;)Lcom/alipay/mobile/framework/service/ext/ExternalService;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/alipay/mobile/framework/service/ext/ExternalService;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 79
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/h/b;->a()V

    .line 80
    sget-object v0, Lcom/alipay/android/phone/businesscommon/advertisement/h/b;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 81
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    return-object v0
.end method
