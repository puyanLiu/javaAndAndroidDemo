.class public final Lcom/alipay/mobile/security/authcenter/b/a/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ali/user/mobile/dataprovider/AppDataProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/security/authcenter/b/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/alipay/mobilesecurity/core/model/Tid;

.field private b:Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

.field private c:Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/a$a;->d:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/a$a;->b:Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    return-void
.end method

.method private a()Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/a$a;->c:Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/a$a;->b:Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;->queryCertification()Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/a$a;->c:Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/a$a;->c:Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;

    return-object v0
.end method

.method private b()Lcom/alipay/mobilesecurity/core/model/Tid;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/a$a;->a:Lcom/alipay/mobilesecurity/core/model/Tid;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/security/tid/TidGetter;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/security/tid/TidGetter;-><init>(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/security/tid/TidGetter;->getClientTid()Lcom/alipay/mobilesecurity/core/model/Tid;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/a$a;->a:Lcom/alipay/mobilesecurity/core/model/Tid;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/a$a;->a:Lcom/alipay/mobilesecurity/core/model/Tid;

    return-object v0
.end method


# virtual methods
.method public final getAppKey()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/a$a;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/taobao/securityjni/tools/DataContext;

    invoke-direct {v0}, Lcom/taobao/securityjni/tools/DataContext;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/taobao/securityjni/tools/DataContext;->index:I

    new-instance v1, Lcom/taobao/securityjni/StaticDataStore;

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/taobao/securityjni/StaticDataStore;-><init>(Landroid/content/ContextWrapper;)V

    invoke-virtual {v1, v0}, Lcom/taobao/securityjni/StaticDataStore;->getAppKey(Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AliUserSdkLoginBiz"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u4ece\u65e0\u7ebf\u4fdd\u9556\u83b7\u53d6\u5230\u7684appkey\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, "4272"

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/a$a;->d:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/a$a;->d:Ljava/lang/String;

    :goto_1
    return-object v0

    :cond_1
    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/a$a;->d:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "12501616"

    goto :goto_1
.end method

.method public final getAppName()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->b:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->getInstance()Lcom/alipay/mobile/framework/locale/LocaleHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->getAlipayLocaleFlag()I

    move-result v2

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getDeviceId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getClientId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getEnvInfo()Ljava/lang/Object;
    .locals 1

    const-string/jumbo v0, ""

    return-object v0
.end method

.method public final getMspClientKey()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/b/a/a$a;->getMspTid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/b/a/a$a;->a()Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getMspkey()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AliUserSdkLoginBiz"

    const-string/jumbo v2, "can not getMspClientKey cause getMspTid() = null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public final getMspImei()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/b/a/a$a;->getMspTid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/b/a/a$a;->a()Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getImei()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AliUserSdkLoginBiz"

    const-string/jumbo v2, "can not getMspImei cause getMspTid() = null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public final getMspImsi()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/b/a/a$a;->getMspTid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/b/a/a$a;->a()Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getImsi()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AliUserSdkLoginBiz"

    const-string/jumbo v2, "can not getMspImsi cause getMspTid() = null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public final getMspTid()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/b/a/a$a;->a()Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/b/a/a$a;->a()Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getTid()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AliUserSdkLoginBiz"

    const-string/jumbo v2, "can not getMspTid cause getMspDeviceInfoBean() = null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getProductId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->getProductID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getProductVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->getmProductVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSsoRequestParam()Lcom/ali/user/mobile/login/sso/SSORequestParam;
    .locals 1

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->getSsoRequestParam(Landroid/content/Context;)Lcom/ali/user/mobile/login/sso/SSORequestParam;

    move-result-object v0

    return-object v0
.end method

.method public final getTid()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/b/a/a$a;->getMspTid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getVImei()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/b/a/a$a;->getMspTid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/b/a/a$a;->a()Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getVimei()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AliUserSdkLoginBiz"

    const-string/jumbo v2, "can not getVImei cause getMspTid() = null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public final getVImsi()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/b/a/a$a;->getMspTid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/b/a/a$a;->a()Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getVimsi()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AliUserSdkLoginBiz"

    const-string/jumbo v2, "can not getVImsi cause getMspTid() = null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public final getWalletClientKey()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/b/a/a$a;->b()Lcom/alipay/mobilesecurity/core/model/Tid;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/b/a/a$a;->b()Lcom/alipay/mobilesecurity/core/model/Tid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/Tid;->getClientKey()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AliUserSdkLoginBiz"

    const-string/jumbo v2, "can not getWalletClientKey cause getTidGetter() = null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public final getWalletTid()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/b/a/a$a;->b()Lcom/alipay/mobilesecurity/core/model/Tid;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/b/a/a$a;->b()Lcom/alipay/mobilesecurity/core/model/Tid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/Tid;->getTid()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AliUserSdkLoginBiz"

    const-string/jumbo v2, "can not getWalletTid cause getTidGetter() = null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public final isAlipayApp()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final isUseSso()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
