.class public Lcom/alipay/android/phone/home/manager/BindTaobaoHelper;
.super Ljava/lang/Object;
.source "BindTaobaoHelper.java"


# static fields
.field private static a:Lcom/alipay/mobile/base/config/ConfigService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    .line 28
    sput-object v0, Lcom/alipay/android/phone/home/manager/BindTaobaoHelper;->a:Lcom/alipay/mobile/base/config/ConfigService;

    .line 21
    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 49
    sget-object v0, Lcom/alipay/android/phone/home/manager/BindTaobaoHelper;->a:Lcom/alipay/mobile/base/config/ConfigService;

    if-nez v0, :cond_0

    .line 51
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 53
    const-class v1, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    .line 51
    sput-object v0, Lcom/alipay/android/phone/home/manager/BindTaobaoHelper;->a:Lcom/alipay/mobile/base/config/ConfigService;

    .line 55
    :cond_0
    const/4 v0, 0x0

    .line 57
    :try_start_0
    sget-object v1, Lcom/alipay/android/phone/home/manager/BindTaobaoHelper;->a:Lcom/alipay/mobile/base/config/ConfigService;

    const-string/jumbo v2, "APPCENTER_APP_LOGIN_BIND_SWITCH"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 60
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)Z
    .locals 4

    .prologue
    .line 38
    invoke-static {}, Lcom/alipay/android/phone/home/manager/BindTaobaoHelper;->a()Ljava/lang/String;

    move-result-object v0

    .line 39
    const-string/jumbo v1, "BindTaobaoHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "switchKey :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppInfo()Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppSource()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/AppSourceEnum;->ALIBABA:Lcom/alipay/mobileappconfig/biz/rpc/model/app/AppSourceEnum;

    invoke-virtual {v1}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/AppSourceEnum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    const/4 v0, 0x1

    .line 44
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
