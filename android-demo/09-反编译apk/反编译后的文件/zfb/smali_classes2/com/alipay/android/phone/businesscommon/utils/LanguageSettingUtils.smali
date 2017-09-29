.class public Lcom/alipay/android/phone/businesscommon/utils/LanguageSettingUtils;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field public static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/android/phone/businesscommon/utils/LanguageSettingUtils;->a:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/mobileappcommon/biz/rpc/locale/LocaleSetService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileappcommon/biz/rpc/locale/LocaleSetService;

    new-instance v5, Lcom/alipay/mobileappcommon/biz/rpc/locale/model/LocaleSetReq;

    invoke-direct {v5}, Lcom/alipay/mobileappcommon/biz/rpc/locale/model/LocaleSetReq;-><init>()V

    iput-object p0, v5, Lcom/alipay/mobileappcommon/biz/rpc/locale/model/LocaleSetReq;->locale:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-class v6, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    sput-object v1, Lcom/alipay/android/phone/businesscommon/utils/LanguageSettingUtils;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    move v0, v2

    :goto_1
    return v0

    :cond_0
    sget-object v1, Lcom/alipay/android/phone/businesscommon/utils/LanguageSettingUtils;->b:Ljava/lang/String;

    iput-object v1, v5, Lcom/alipay/mobileappcommon/biz/rpc/locale/model/LocaleSetReq;->userId:Ljava/lang/String;

    invoke-interface {v0, v5}, Lcom/alipay/mobileappcommon/biz/rpc/locale/LocaleSetService;->localeSet(Lcom/alipay/mobileappcommon/biz/rpc/locale/model/LocaleSetReq;)Lcom/alipay/mobileappcommon/biz/rpc/locale/model/LocaleSetResp;

    move-result-object v0

    iget-boolean v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/locale/model/LocaleSetResp;->success:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/android/phone/businesscommon/utils/LanguageSettingUtils;->a:Z

    move v0, v3

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u5ba2\u6237\u7aef\u8bed\u8a00\u4e0a\u62a5RPC\u5931\u8d25"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/alipay/mobileappcommon/biz/rpc/locale/model/LocaleSetResp;->reason:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/alipay/mobileappcommon/biz/rpc/locale/model/LocaleSetResp;->locale:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    goto :goto_1

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_1

    :cond_2
    move-object v1, v4

    goto :goto_0
.end method
