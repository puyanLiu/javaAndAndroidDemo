.class public final Lcom/alipay/mobile/beehive/util/MicroServiceUtil;
.super Ljava/lang/Object;
.source "MicroServiceUtil.java"


# static fields
.field private static microApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getExtServiceByInterface(Ljava/lang/Class;)Lcom/alipay/mobile/framework/service/ext/ExternalService;
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
    .line 77
    invoke-static {}, Lcom/alipay/mobile/beehive/util/MicroServiceUtil;->init()V

    .line 78
    sget-object v0, Lcom/alipay/mobile/beehive/util/MicroServiceUtil;->microApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 79
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    return-object v0
.end method

.method public static final getMicroService(Ljava/lang/Class;)Lcom/alipay/mobile/framework/service/MicroService;
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
    .line 47
    invoke-static {}, Lcom/alipay/mobile/beehive/util/MicroServiceUtil;->init()V

    .line 48
    const-class v0, Lcom/alipay/mobile/framework/service/CommonService;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Lcom/alipay/mobile/beehive/util/MicroServiceUtil;->microApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 50
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/MicroService;

    .line 55
    :goto_0
    return-object v0

    .line 51
    :cond_0
    const-class v0, Lcom/alipay/mobile/framework/service/ext/ExternalService;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    sget-object v0, Lcom/alipay/mobile/beehive/util/MicroServiceUtil;->microApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 53
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    goto :goto_0

    .line 55
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final getServiceByInterface(Ljava/lang/Class;)Lcom/alipay/mobile/framework/service/CommonService;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/alipay/mobile/framework/service/CommonService;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 65
    invoke-static {}, Lcom/alipay/mobile/beehive/util/MicroServiceUtil;->init()V

    .line 66
    sget-object v0, Lcom/alipay/mobile/beehive/util/MicroServiceUtil;->microApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 67
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/CommonService;

    return-object v0
.end method

.method private static final init()V
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/alipay/mobile/beehive/util/MicroServiceUtil;->microApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    if-nez v0, :cond_0

    .line 20
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/beehive/util/MicroServiceUtil;->microApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 23
    :cond_0
    return-void
.end method
