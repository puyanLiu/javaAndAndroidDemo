.class Lcom/alipay/mobile/about/service/UpdateBroadcastReceiver$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Landroid/content/Intent;

.field final synthetic this$0:Lcom/alipay/mobile/about/service/UpdateBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/about/service/UpdateBroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/about/service/UpdateBroadcastReceiver$1;->this$0:Lcom/alipay/mobile/about/service/UpdateBroadcastReceiver;

    iput-object p2, p0, Lcom/alipay/mobile/about/service/UpdateBroadcastReceiver$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/alipay/mobile/about/service/UpdateBroadcastReceiver$1;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateBroadcastReceiver$1;->this$0:Lcom/alipay/mobile/about/service/UpdateBroadcastReceiver;

    iget-object v1, p0, Lcom/alipay/mobile/about/service/UpdateBroadcastReceiver$1;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/alipay/mobile/about/service/UpdateBroadcastReceiver;->access$0(Lcom/alipay/mobile/about/service/UpdateBroadcastReceiver;Landroid/content/Context;)Lcom/alipay/mobile/framework/service/ext/about/UpdateServices;

    move-result-object v3

    const-string/jumbo v0, "com.alipay.mobile.about.UPDATE_CHECK_VERSION"

    iget-object v1, p0, Lcom/alipay/mobile/about/service/UpdateBroadcastReceiver$1;->b:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateBroadcastReceiver$1;->b:Landroid/content/Intent;

    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/framework/service/ext/about/UpdateServices;->checkUpdate(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v0, "com.alipay.mobile.about.UPDATE_CLIENT"

    iget-object v1, p0, Lcom/alipay/mobile/about/service/UpdateBroadcastReceiver$1;->b:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateBroadcastReceiver$1;->b:Landroid/content/Intent;

    const-string/jumbo v1, "_updateInfo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;

    if-eqz v0, :cond_6

    sget v1, Lcom/alipay/mobile/security/securitycommon/ErrMsgConstants;->ABOUT_UPDATE_NONEED:I

    sget-object v2, Lcom/alipay/mobile/security/securitycommon/ErrMsgConstants;->LOGIN_UPDATE_NONEED:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getExistNewVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getExistNewVersion()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/alipay/mobile/security/securitycommon/ErrMsgConstants;->LOGIN_UPDATE_OPTIONAL:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget v1, Lcom/alipay/mobile/security/securitycommon/ErrMsgConstants;->ABOUT_UPDATE_OPTIONAL:I

    move v2, v1

    :goto_0
    new-instance v4, Lcom/alipay/mobile/framework/service/ext/about/UpdateInfo;

    invoke-direct {v4}, Lcom/alipay/mobile/framework/service/ext/about/UpdateInfo;-><init>()V

    invoke-virtual {v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getDownloadURL()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/alipay/mobile/framework/service/ext/about/UpdateInfo;->downloadURL:Ljava/lang/String;

    iget-object v1, v0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->memo:Ljava/lang/String;

    iput-object v1, v4, Lcom/alipay/mobile/framework/service/ext/about/UpdateInfo;->memo:Ljava/lang/String;

    iget-object v1, v0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->memo:Ljava/lang/String;

    iput-object v1, v4, Lcom/alipay/mobile/framework/service/ext/about/UpdateInfo;->guideMemo:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getCurrentProductVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/alipay/mobile/framework/service/ext/about/UpdateInfo;->newestVersion:Ljava/lang/String;

    iput v2, v4, Lcom/alipay/mobile/framework/service/ext/about/UpdateInfo;->resultStatus:I

    invoke-virtual {v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getExtResAttrs()Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_1

    const-string/jumbo v1, "fullMd5"

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v4, Lcom/alipay/mobile/framework/service/ext/about/UpdateInfo;->fullMd5:Ljava/lang/String;

    const-string/jumbo v1, "lightUpgradeURL"

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v4, Lcom/alipay/mobile/framework/service/ext/about/UpdateInfo;->lightUpgradeURL:Ljava/lang/String;

    const-string/jumbo v1, "lightUpgradeMd5"

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v4, Lcom/alipay/mobile/framework/service/ext/about/UpdateInfo;->lightUpgradeMd5:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/about/service/UpdateBroadcastReceiver$1;->b:Landroid/content/Intent;

    const-string/jumbo v5, "justUpdateRetryCache"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/framework/service/ext/about/UpdateServices;->updateCacheJustForRetry(Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    sget-object v4, Lcom/alipay/mobile/security/securitycommon/ErrMsgConstants;->LOGIN_UPDATE_MUST:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget v1, Lcom/alipay/mobile/security/securitycommon/ErrMsgConstants;->ABOUT_UPDATE_MUST:I

    move v2, v1

    goto :goto_0

    :cond_4
    sget-object v4, Lcom/alipay/mobile/security/securitycommon/ErrMsgConstants;->LOGIN_UPDATE_NOTICE:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget v1, Lcom/alipay/mobile/security/securitycommon/ErrMsgConstants;->ABOUT_UPDATE_NOTICE:I

    move v2, v1

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v5, "UpdateBroadcastReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "UPDATE args: downloadUrl="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getDownloadURL()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v5, "UpdateBroadcastReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "UPDATE args: memo="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getMemo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v5, "UpdateBroadcastReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "UPDATE args: currentProductVersion="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getCurrentProductVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v5, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "UpdateBroadcastReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "UPDATE args: resultStatus="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "UpdateBroadcastReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "UPDATE args:fullMd5="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v4, Lcom/alipay/mobile/framework/service/ext/about/UpdateInfo;->fullMd5:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "UpdateBroadcastReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "UPDATE args:lightUpgradeURL="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v4, Lcom/alipay/mobile/framework/service/ext/about/UpdateInfo;->lightUpgradeURL:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "UpdateBroadcastReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "UPDATE args:lightUpgradeMd5="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v4, Lcom/alipay/mobile/framework/service/ext/about/UpdateInfo;->lightUpgradeMd5:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/framework/service/ext/about/UpdateServices;->update(Lcom/alipay/mobile/framework/service/ext/about/UpdateInfo;)V

    :cond_6
    const-string/jumbo v0, "com.alipay.mobile.LAUNCHER_STATUS_CHANGED"

    iget-object v1, p0, Lcom/alipay/mobile/about/service/UpdateBroadcastReceiver$1;->b:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateBroadcastReceiver$1;->b:Landroid/content/Intent;

    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "state=onResume"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/alipay/mobile/about/service/UpdateUtils;->initMainActivity()V

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/service/ext/about/UpdateServices;->updateImmediately()V

    goto/16 :goto_1

    :cond_7
    move v2, v1

    goto/16 :goto_0
.end method
