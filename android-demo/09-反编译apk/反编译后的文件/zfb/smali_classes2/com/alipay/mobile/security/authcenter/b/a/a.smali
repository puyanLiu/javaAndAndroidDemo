.class public Lcom/alipay/mobile/security/authcenter/b/a/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/security/authcenter/b/a/a$a;,
        Lcom/alipay/mobile/security/authcenter/b/a/a$b;
    }
.end annotation


# static fields
.field private static a:Lcom/alipay/mobile/security/authcenter/b/a/a;


# instance fields
.field private b:Lcom/ali/user/mobile/login/OnLoginCaller;

.field private c:Lcom/ali/user/mobile/rsa/RSAHandler;

.field private d:Lcom/alipay/mobile/security/authcenter/b/a/a$a;

.field private e:Lcom/ali/user/mobile/common/api/AliUserLogin;

.field private f:Lcom/alipay/mobile/framework/service/ext/security/LoginService;

.field private g:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field private h:Lcom/alipay/mobile/framework/service/common/SchemeService;

.field private i:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private j:Lcom/alipay/mobile/framework/app/MicroApplication;

.field private k:Landroid/os/Bundle;

.field private l:Lcom/alipay/mobile/common/utils/CacheSet;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/b/a/a;->j:Lcom/alipay/mobile/framework/app/MicroApplication;

    iput-object p2, p0, Lcom/alipay/mobile/security/authcenter/b/a/a;->k:Landroid/os/Bundle;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/a;->i:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/a;->i:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/LoginService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/LoginService;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/a;->f:Lcom/alipay/mobile/framework/service/ext/security/LoginService;

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/a;->i:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/a;->g:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/a;->i:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/SchemeService;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/a;->h:Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/CacheSet;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/utils/CacheSet;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/a;->l:Lcom/alipay/mobile/common/utils/CacheSet;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/b/a/a;->c:Lcom/ali/user/mobile/rsa/RSAHandler;

    if-nez v1, :cond_0

    new-instance v1, Lcom/alipay/mobile/security/authcenter/b/a/a$b;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/authcenter/b/a/a$b;-><init>(Lcom/alipay/mobile/security/authcenter/b/a/a;)V

    iput-object v1, p0, Lcom/alipay/mobile/security/authcenter/b/a/a;->c:Lcom/ali/user/mobile/rsa/RSAHandler;

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/b/a/a;->c:Lcom/ali/user/mobile/rsa/RSAHandler;

    invoke-static {v1}, Lcom/ali/user/mobile/context/AliuserLoginContext;->setRsaHandler(Lcom/ali/user/mobile/rsa/RSAHandler;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/b/a/a;->d:Lcom/alipay/mobile/security/authcenter/b/a/a$a;

    if-nez v1, :cond_1

    new-instance v1, Lcom/alipay/mobile/security/authcenter/b/a/a$a;

    invoke-direct {v1}, Lcom/alipay/mobile/security/authcenter/b/a/a$a;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/security/authcenter/b/a/a;->d:Lcom/alipay/mobile/security/authcenter/b/a/a$a;

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/b/a/a;->d:Lcom/alipay/mobile/security/authcenter/b/a/a$a;

    invoke-static {v1}, Lcom/ali/user/mobile/AliUserInit;->setAppDataProvider(Lcom/ali/user/mobile/dataprovider/AppDataProvider;)V

    invoke-static {v0}, Lcom/ali/user/mobile/AliUserInit;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/AppInfo;->getmChannels()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/info/AppInfo;->setChannel(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/b/a/a;->b:Lcom/ali/user/mobile/login/OnLoginCaller;

    if-nez v1, :cond_2

    new-instance v1, Lcom/alipay/mobile/security/authcenter/b/a/i;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/authcenter/b/a/i;-><init>(Lcom/alipay/mobile/security/authcenter/b/a/a;)V

    iput-object v1, p0, Lcom/alipay/mobile/security/authcenter/b/a/a;->b:Lcom/ali/user/mobile/login/OnLoginCaller;

    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/b/a/a;->b:Lcom/ali/user/mobile/login/OnLoginCaller;

    invoke-static {v0, v1}, Lcom/ali/user/mobile/common/api/AliUserLogin;->registOnLoginCaller(Landroid/content/Context;Lcom/ali/user/mobile/login/OnLoginCaller;)V

    new-instance v0, Lcom/alipay/mobile/security/authcenter/b/a/b;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/authcenter/b/a/b;-><init>(Lcom/alipay/mobile/security/authcenter/b/a/a;)V

    invoke-static {v0}, Lcom/ali/user/mobile/context/AliuserLoginContext;->setDexHandler(Lcom/ali/user/mobile/login/dex/DexHandler;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/authcenter/b/a/a;)Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/a;->i:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method

.method public static a(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/os/Bundle;)Lcom/alipay/mobile/security/authcenter/b/a/a;
    .locals 2

    sget-object v0, Lcom/alipay/mobile/security/authcenter/b/a/a;->a:Lcom/alipay/mobile/security/authcenter/b/a/a;

    if-nez v0, :cond_0

    const-class v1, Lcom/alipay/mobile/security/authcenter/b/a/a;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/alipay/mobile/security/authcenter/b/a/a;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/security/authcenter/b/a/a;-><init>(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/os/Bundle;)V

    sput-object v0, Lcom/alipay/mobile/security/authcenter/b/a/a;->a:Lcom/alipay/mobile/security/authcenter/b/a/a;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    sget-object v0, Lcom/alipay/mobile/security/authcenter/b/a/a;->a:Lcom/alipay/mobile/security/authcenter/b/a/a;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    sget-object v0, Lcom/alipay/mobile/security/authcenter/b/a/a;->a:Lcom/alipay/mobile/security/authcenter/b/a/a;

    iput-object p0, v0, Lcom/alipay/mobile/security/authcenter/b/a/a;->j:Lcom/alipay/mobile/framework/app/MicroApplication;

    sget-object v0, Lcom/alipay/mobile/security/authcenter/b/a/a;->a:Lcom/alipay/mobile/security/authcenter/b/a/a;

    iput-object p1, v0, Lcom/alipay/mobile/security/authcenter/b/a/a;->k:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public static a(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;
    .locals 7

    new-instance v1, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;

    invoke-direct {v1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;-><init>()V

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->data:Ljava/lang/String;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "bindCard"

    invoke-static {v2, v0}, Lcom/alipay/mobile/security/authcenter/b/a/a;->b(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->bindCard:Z

    const-string/jumbo v0, "extern_token"

    invoke-static {v2, v0}, Lcom/alipay/mobile/security/authcenter/b/a/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->extern_token:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->headImg:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->headImg:Ljava/lang/String;

    const-string/jumbo v0, "isCertified"

    invoke-static {v2, v0}, Lcom/alipay/mobile/security/authcenter/b/a/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->isCertified:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->alipayLoginId:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->loginId:Ljava/lang/String;

    const-string/jumbo v0, "loginServerTime"

    invoke-static {v2, v0}, Lcom/alipay/mobile/security/authcenter/b/a/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->loginServerTime:Ljava/lang/String;

    const-string/jumbo v0, "loginToken"

    invoke-static {v2, v0}, Lcom/alipay/mobile/security/authcenter/b/a/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->loginToken:Ljava/lang/String;

    const-string/jumbo v0, "mobileNo"

    invoke-static {v2, v0}, Lcom/alipay/mobile/security/authcenter/b/a/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->mobileNo:Ljava/lang/String;

    const-string/jumbo v0, "resultStatus"

    invoke-static {v2, v0}, Lcom/alipay/mobile/security/authcenter/b/a/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->resultStatus:I

    iget-object v0, p0, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->checkCodeId:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->tbCheckCodeId:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->checkCodeUrl:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->tbCheckCodeUrl:Ljava/lang/String;

    const-string/jumbo v0, "userName"

    invoke-static {v2, v0}, Lcom/alipay/mobile/security/authcenter/b/a/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->userName:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->userId:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->userId:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->extMap:Ljava/util/Map;

    const-string/jumbo v3, "sessionId"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->sessionId:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->extMap:Ljava/util/Map;

    const-string/jumbo v3, "customerType"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->customerType:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->extResAttrs:Ljava/util/Map;

    iget-object v0, v1, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->extResAttrs:Ljava/util/Map;

    const-string/jumbo v3, "havanaId"

    iget-wide v4, p0, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->hid:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "extResAttrs"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "memo"

    invoke-static {v2, v0}, Lcom/alipay/mobile/security/authcenter/b/a/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->memo:Ljava/lang/String;

    const-string/jumbo v0, "currentProductVersion"

    invoke-static {v2, v0}, Lcom/alipay/mobile/security/authcenter/b/a/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->currentProductVersion:Ljava/lang/String;

    const-string/jumbo v0, "existNewVersion"

    invoke-static {v2, v0}, Lcom/alipay/mobile/security/authcenter/b/a/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->existNewVersion:Ljava/lang/String;

    const-string/jumbo v0, "downloadURL"

    invoke-static {v2, v0}, Lcom/alipay/mobile/security/authcenter/b/a/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->downloadURL:Ljava/lang/String;

    const-string/jumbo v0, "taobaoSid"

    invoke-static {v2, v0}, Lcom/alipay/mobile/security/authcenter/b/a/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->taobaoSid:Ljava/lang/String;

    const-string/jumbo v0, "barcodePayToken"

    invoke-static {v2, v0}, Lcom/alipay/mobile/security/authcenter/b/a/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->barcodePayToken:Ljava/lang/String;

    const-string/jumbo v0, "iconUrl"

    invoke-static {v2, v0}, Lcom/alipay/mobile/security/authcenter/b/a/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->iconUrl:Ljava/lang/String;

    const-string/jumbo v0, "loginCheckCodeImg"

    invoke-static {v2, v0}, Lcom/alipay/mobile/security/authcenter/b/a/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->loginCheckCodeImg:Ljava/lang/String;

    const-string/jumbo v0, "loginCheckCodeUrl"

    invoke-static {v2, v0}, Lcom/alipay/mobile/security/authcenter/b/a/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->loginCheckCodeUrl:Ljava/lang/String;

    const-string/jumbo v0, "loginContext"

    invoke-static {v2, v0}, Lcom/alipay/mobile/security/authcenter/b/a/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->loginContext:Ljava/lang/String;

    const-string/jumbo v0, "wirelessUser"

    invoke-static {v2, v0}, Lcom/alipay/mobile/security/authcenter/b/a/a;->b(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->wirelessUser:Z

    :goto_1
    return-object v1

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, v1, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->extResAttrs:Ljava/util/Map;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "AliUserSdkLoginBiz"

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AliUserSdkLoginBiz"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "can not get"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/mobile/security/authcenter/b/a/a;Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V
    .locals 8

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/a;->f:Lcom/alipay/mobile/framework/service/ext/security/LoginService;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/a;->g:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v4, "AliUserSdkLoginBiz"

    const-string/jumbo v5, "processSdkLoginResult"

    invoke-interface {v0, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/alipay/mobile/security/authcenter/b/a/a;->a(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;

    move-result-object v4

    new-instance v5, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;

    invoke-direct {v5}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;-><init>()V

    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->alipayLoginId:Ljava/lang/String;

    iput-object v0, v5, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->loginId:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->extMap:Ljava/util/Map;

    const-string/jumbo v6, "lp"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v5, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->loginPassword:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->extMap:Ljava/util/Map;

    const-string/jumbo v6, "loginType"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v5, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->loginType:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->extMap:Ljava/util/Map;

    const-string/jumbo v6, "validateTpye"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v5, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->loginWthPwd:Ljava/lang/String;

    new-instance v6, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;

    invoke-direct {v6}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;-><init>()V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/a;->g:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getLastLoginedUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    iget-object v7, p0, Lcom/alipay/mobile/security/authcenter/b/a/a;->f:Lcom/alipay/mobile/framework/service/ext/security/LoginService;

    invoke-virtual {v7, v4, v6, v5, v2}, Lcom/alipay/mobile/framework/service/ext/security/LoginService;->processLoginResult(Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;Z)Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string/jumbo v5, "AliUserSdkLoginBiz"

    const-string/jumbo v7, "processAlipayLoginResult"

    invoke-interface {v4, v5, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x3e8

    :try_start_0
    invoke-virtual {v6}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->getResultStatus()I

    move-result v5

    if-ne v4, v5, :cond_f

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string/jumbo v5, "AliUserSdkLoginBiz"

    const-string/jumbo v7, "processAlipayLoginSuccess"

    invoke-interface {v4, v5, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v6}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    move v1, v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "AliUserSdkLoginBiz"

    const-string/jumbo v4, "\u767b\u5f55\u6210\u529f\uff0c\u5c06\u624b\u52bfapp\u5f3a\u5236finish\u6389"

    invoke-interface {v0, v2, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/a;->i:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/b/a/a;->j:Lcom/alipay/mobile/framework/app/MicroApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "20000006"

    const/4 v5, 0x0

    invoke-interface {v0, v2, v4, v5}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setNeedAuthGesture(Z)V

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setNeedVerifyGesture(Z)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "AliUserSdkLoginBiz"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "switchUser: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/a;->g:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->notifyUnlockLoginApp(ZZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/a;->l:Lcom/alipay/mobile/common/utils/CacheSet;

    const-string/jumbo v2, "isValidScheme"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/utils/CacheSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    if-eqz v0, :cond_3

    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/CommentHelper;->extractZipComment(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    :goto_2
    :try_start_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "alipays://platformapi/startapp?appId=20000009"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result v2

    if-nez v2, :cond_5

    :try_start_5
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobilesecurity/external/login/ExternalLoginUtils;->isExternalLoginReq(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "switchAccount"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/a;->i:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v4, Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    new-instance v4, Lcom/alipay/mobile/security/authcenter/b/a/g;

    invoke-direct {v4, p0, v1, v2}, Lcom/alipay/mobile/security/authcenter/b/a/g;-><init>(Lcom/alipay/mobile/security/authcenter/b/a/a;ZLandroid/net/Uri;)V

    invoke-virtual {v0, v3, v4}, Lcom/alipay/mobile/framework/service/ext/security/GestureService;->setGesture(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_1
    :goto_3
    return-void

    :cond_2
    move v0, v2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v4, "StackTrace"

    invoke-interface {v2, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_2
    move-exception v0

    :try_start_7
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string/jumbo v5, "StackTrace"

    invoke-interface {v4, v5, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :cond_3
    move-object v0, v3

    goto :goto_2

    :cond_4
    :try_start_8
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/authcenter/b/a/a;->a(Z)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :try_start_9
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/authcenter/b/a/a;->a(Z)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    const-string/jumbo v0, "source_selectAccount"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/authcenter/b/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "source_login"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz v1, :cond_6

    const-string/jumbo v2, "source_switchUser"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    :cond_6
    :try_start_a
    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/b/a/a;->i:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/b/a/a;->j:Lcom/alipay/mobile/framework/app/MicroApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "20000018"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_a
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_3

    :catch_4
    move-exception v0

    :try_start_b
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_7
    const-string/jumbo v0, "registBindToCard"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/authcenter/b/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "AliUserSdkLoginBiz"

    const-string/jumbo v3, "Constants.REGISTBINDTOCARD, false"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "registBindToCard"

    invoke-direct {p0, v1, v0}, Lcom/alipay/mobile/security/authcenter/b/a/a;->a(ZLjava/lang/String;)V

    goto/16 :goto_3

    :cond_8
    const-string/jumbo v0, "source_accountSelectAccount"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/authcenter/b/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "source_login"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz v1, :cond_9

    const-string/jumbo v2, "source_switchUser"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    :cond_9
    :try_start_c
    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/b/a/a;->i:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/b/a/a;->j:Lcom/alipay/mobile/framework/app/MicroApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "20000027"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_c
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    goto/16 :goto_3

    :catch_5
    move-exception v0

    :try_start_d
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :cond_a
    const-string/jumbo v0, "source_gesture"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/authcenter/b/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/alipay/mobile/security/authcenter/b/a/a;->a(ZLjava/lang/String;)V

    goto/16 :goto_3

    :cond_b
    const-string/jumbo v0, "isGoMain"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/authcenter/b/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AliUserSdkLoginBiz"

    const-string/jumbo v2, " goMain()"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/b/a/a;->b()V

    goto/16 :goto_3

    :cond_c
    const-string/jumbo v0, "registbindToFundBao"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/authcenter/b/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "AliUserSdkLoginBiz"

    const-string/jumbo v3, "Constants.REGISTBINDTOFUNDBAO, false()"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "registbindToFundBao"

    invoke-direct {p0, v1, v0}, Lcom/alipay/mobile/security/authcenter/b/a/a;->a(ZLjava/lang/String;)V

    goto/16 :goto_3

    :cond_d
    const-string/jumbo v0, "loginout"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/authcenter/b/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/security/authcenter/b/a/a;->a(ZLjava/lang/String;)V

    goto/16 :goto_3

    :cond_e
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "AliUserSdkLoginBiz"

    const-string/jumbo v3, "toDefaultApp()"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/authcenter/b/a/a;->a(Z)V

    goto/16 :goto_3

    :cond_f
    const/16 v0, 0x7d3

    invoke-virtual {v6}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->getResultStatus()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->d:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->a:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->getMemo()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    const-string/jumbo v0, ""

    :goto_4
    new-instance v3, Lcom/alipay/mobile/security/authcenter/b/a/c;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/security/authcenter/b/a/c;-><init>(Lcom/alipay/mobile/security/authcenter/b/a/a;)V

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->getCurrentProductVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/alipay/mobile/security/authcenter/b/a/d;

    invoke-direct {v0, p0, v6}, Lcom/alipay/mobile/security/authcenter/b/a/d;-><init>(Lcom/alipay/mobile/security/authcenter/b/a/a;Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;)V

    invoke-virtual {v4, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_3

    :cond_10
    const-string/jumbo v3, "\\\\n"

    const-string/jumbo v4, "\n"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    move-result-object v0

    goto :goto_4

    :cond_11
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AliUserSdkLoginBiz"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "loginService:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/security/authcenter/b/a/a;->f:Lcom/alipay/mobile/framework/service/ext/security/LoginService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",authService:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/security/authcenter/b/a/a;->g:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method private a(ZLjava/lang/String;)V
    .locals 3

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "switchAccount"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/a;->i:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    new-instance v2, Lcom/alipay/mobile/security/authcenter/b/a/h;

    invoke-direct {v2, p0, p2, p1}, Lcom/alipay/mobile/security/authcenter/b/a/h;-><init>(Lcom/alipay/mobile/security/authcenter/b/a/a;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/security/GestureService;->setGesture(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)Z

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/b/a/a;->k:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/b/a/a;->k:Landroid/os/Bundle;

    invoke-virtual {v1, p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    return v0
.end method

.method private b()V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "actionType"

    const-string/jumbo v2, "20000002"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/b/a/a;->i:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/b/a/a;->j:Lcom/alipay/mobile/framework/app/MicroApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "20000001"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/mobile/security/authcenter/b/a/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/b/a/a;->b()V

    return-void
.end method

.method private static b(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 4

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AliUserSdkLoginBiz"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "can not get"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/alipay/mobile/security/authcenter/b/a/a;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/a;->i:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/b/a/a;->j:Lcom/alipay/mobile/framework/app/MicroApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "20000008"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/alipay/mobile/security/authcenter/b/a/a;)Lcom/alipay/mobile/framework/service/common/SchemeService;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/a;->h:Lcom/alipay/mobile/framework/service/common/SchemeService;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/mobile/security/authcenter/b/a/a;)Lcom/alipay/mobile/common/utils/CacheSet;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/a;->l:Lcom/alipay/mobile/common/utils/CacheSet;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 5

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AliUserSdkLoginBiz"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startLoginSdk - param:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/security/authcenter/b/a/a;->k:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/a;->k:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AliUserSdkLoginBiz"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "source_accountSelectAccount = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "source_accountSelectAccount"

    invoke-direct {p0, v3}, Lcom/alipay/mobile/security/authcenter/b/a/a;->a(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/a;->k:Landroid/os/Bundle;

    const-string/jumbo v1, "loginInfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/login/bean/LoginInfo;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AliUserSdkLoginBiz"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "has userinfo, account:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/login/bean/LoginInfo;->getAccount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/ali/user/mobile/login/LoginParam;

    invoke-direct {v1}, Lcom/ali/user/mobile/login/LoginParam;-><init>()V

    invoke-virtual {v0}, Lcom/alipay/mobile/login/bean/LoginInfo;->getAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/user/mobile/login/LoginParam;->loginAccount:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/a;->k:Landroid/os/Bundle;

    const-string/jumbo v2, "login_param"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/a;->k:Landroid/os/Bundle;

    const-string/jumbo v1, "logonId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/a;->k:Landroid/os/Bundle;

    const-string/jumbo v1, "logonId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AliUserSdkLoginBiz"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "has logonId:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/ali/user/mobile/login/LoginParam;

    invoke-direct {v1}, Lcom/ali/user/mobile/login/LoginParam;-><init>()V

    iput-object v0, v1, Lcom/ali/user/mobile/login/LoginParam;->loginAccount:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/a;->k:Landroid/os/Bundle;

    const-string/jumbo v2, "login_param"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AliUserSdkLoginBiz"

    const-string/jumbo v2, "registerLoginFragment"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string/jumbo v1, "com.alipay.mobile.security.aliuser.AlipayUserLoginActivity"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/context/AliuserLoginContext;->setLoginActivityClazz(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string/jumbo v1, "com.alipay.mobile.security.aliuser.AlipayUserLoginFragmentEx"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/context/AliuserLoginContext;->setLoginFragmentClazz(Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/a;->e:Lcom/ali/user/mobile/common/api/AliUserLogin;

    if-nez v0, :cond_2

    new-instance v0, Lcom/ali/user/mobile/common/api/AliUserLogin;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ali/user/mobile/common/api/AliUserLogin;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/a;->e:Lcom/ali/user/mobile/common/api/AliUserLogin;

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/a;->e:Lcom/ali/user/mobile/common/api/AliUserLogin;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/b/a/a;->k:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/common/api/AliUserLogin;->setupNormalLogin(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AliUserSdkLoginBiz"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AliUserSdkLoginBiz"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected final a(Z)V
    .locals 5

    new-instance v1, Lcom/alipay/mobile/security/authcenter/b/a/e;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/security/authcenter/b/a/e;-><init>(Lcom/alipay/mobile/security/authcenter/b/a/a;Z)V

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->isNeedNotifyCallBack()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/a;->i:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ext/security/GestureService;->callback(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "switchAccount"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/a;->i:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v3, Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->isNeedNotifyCallBack()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/alipay/mobile/security/authcenter/b/a/f;

    invoke-direct {v4, p0, v0, v2, v1}, Lcom/alipay/mobile/security/authcenter/b/a/f;-><init>(Lcom/alipay/mobile/security/authcenter/b/a/a;Lcom/alipay/mobile/framework/service/ext/security/GestureService;Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)V

    const-wide/16 v0, 0x32

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "StackTrace"

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/framework/service/ext/security/GestureService;->setGesture(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)Z

    goto :goto_1
.end method

.method public final b(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/b/a/a;->j:Lcom/alipay/mobile/framework/app/MicroApplication;

    iput-object p2, p0, Lcom/alipay/mobile/security/authcenter/b/a/a;->k:Landroid/os/Bundle;

    return-void
.end method
