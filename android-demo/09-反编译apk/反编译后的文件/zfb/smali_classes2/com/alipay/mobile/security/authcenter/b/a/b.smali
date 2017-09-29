.class final Lcom/alipay/mobile/security/authcenter/b/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ali/user/mobile/login/dex/DexHandler;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/authcenter/b/a/a;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/b/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/b/a/b;->a:Lcom/alipay/mobile/security/authcenter/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final setDevInfo(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;)V
    .locals 5

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/b;->a:Lcom/alipay/mobile/security/authcenter/b/a/a;

    invoke-static {v0}, Lcom/alipay/mobile/security/authcenter/b/a/a;->a(Lcom/alipay/mobile/security/authcenter/b/a/a;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/DexInfoService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/DexInfoService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/DexInfoService;->getTaobaoBlackBoxInfo()Lcom/alipay/mobile/framework/service/ext/security/DexInfoService$TaobaoBlackBoxInfo;

    move-result-object v1

    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->appData:Ljava/util/Map;

    const-string/jumbo v3, "clientDigest"

    iget-object v4, v1, Lcom/alipay/mobile/framework/service/ext/security/DexInfoService$TaobaoBlackBoxInfo;->clientDigest:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->appData:Ljava/util/Map;

    const-string/jumbo v3, "secTS"

    iget-object v1, v1, Lcom/alipay/mobile/framework/service/ext/security/DexInfoService$TaobaoBlackBoxInfo;->secTS:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "alipaysalt"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/security/DexInfoService;->getDexHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->appData:Ljava/util/Map;

    const-string/jumbo v3, "dexTime"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->appData:Ljava/util/Map;

    const-string/jumbo v2, "dexValue"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
