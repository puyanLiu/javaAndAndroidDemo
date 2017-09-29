.class Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;
.super Ljava/lang/Thread;
.source "ConfigServiceImpl.java"


# instance fields
.field private delayTime:J

.field final synthetic this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;J)V
    .locals 2

    .prologue
    .line 79
    iput-object p1, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 77
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->delayTime:J

    .line 80
    iput-wide p2, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->delayTime:J

    .line 81
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 86
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "delayTime = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->delayTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-wide v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->delayTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 88
    iget-wide v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->delayTime:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 90
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "start to load config"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
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

    .line 92
    const-class v1, Lcom/alipay/mobileapp/biz/rpc/switches/ClientSwitchConfigService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getBgRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileapp/biz/rpc/switches/ClientSwitchConfigService;

    .line 93
    new-instance v2, Lcom/alipay/mobileapp/core/model/switches/SwitchInfoReq;

    invoke-direct {v2}, Lcom/alipay/mobileapp/core/model/switches/SwitchInfoReq;-><init>()V

    .line 94
    iget-object v1, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/info/AppInfo;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v3

    .line 96
    const-string/jumbo v1, "android"

    iput-object v1, v2, Lcom/alipay/mobileapp/core/model/switches/SwitchInfoReq;->systemType:Ljava/lang/String;

    .line 97
    invoke-virtual {v3}, Lcom/alipay/mobile/common/info/AppInfo;->getmProductVersion()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const-string/jumbo v1, ""

    :goto_0
    iput-object v1, v2, Lcom/alipay/mobileapp/core/model/switches/SwitchInfoReq;->clientVersion:Ljava/lang/String;

    .line 98
    iget-object v1, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    invoke-static {v1}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$100(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v4, "reserveConfigKeyUserId"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/alipay/mobileapp/core/model/switches/SwitchInfoReq;->userId:Ljava/lang/String;

    .line 99
    iget-object v1, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    invoke-static {v1}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$100(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v4, "reserveConfigKeyResponseTime"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/alipay/mobileapp/core/model/switches/SwitchInfoReq;->lastResponseTime:Ljava/lang/String;

    .line 100
    invoke-virtual {v3}, Lcom/alipay/mobile/common/info/AppInfo;->getmChannels()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/alipay/mobileapp/core/model/switches/SwitchInfoReq;->channelId:Ljava/lang/String;

    .line 101
    iget-object v1, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getDefImei()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/alipay/mobileapp/core/model/switches/SwitchInfoReq;->imei:Ljava/lang/String;

    .line 102
    iget-object v1, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmDid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/alipay/mobileapp/core/model/switches/SwitchInfoReq;->utdid:Ljava/lang/String;

    .line 104
    invoke-interface {v0, v2}, Lcom/alipay/mobileapp/biz/rpc/switches/ClientSwitchConfigService;->getSwitchesAfterLogin(Lcom/alipay/mobileapp/core/model/switches/SwitchInfoReq;)Lcom/alipay/mobileapp/core/model/switches/SwitchInfoResp;

    move-result-object v2

    .line 105
    iget-boolean v0, v2, Lcom/alipay/mobileapp/core/model/switches/SwitchInfoResp;->success:Z

    if-eqz v0, :cond_8

    .line 107
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    invoke-static {v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$100(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 109
    iget-boolean v0, v2, Lcom/alipay/mobileapp/core/model/switches/SwitchInfoResp;->increment:Z

    if-nez v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    invoke-static {v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$100(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "reserveConfigKeyUserId"

    const/4 v4, 0x0

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 112
    const-string/jumbo v1, "reserveConfigKeyUserId"

    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 113
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 117
    :cond_1
    const-string/jumbo v0, "reserveConfigKeyResponseTime"

    iget-object v1, v2, Lcom/alipay/mobileapp/core/model/switches/SwitchInfoResp;->responseTime:Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 118
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 121
    iget-object v0, v2, Lcom/alipay/mobileapp/core/model/switches/SwitchInfoResp;->switches:Ljava/util/Map;

    if-eqz v0, :cond_5

    iget-object v0, v2, Lcom/alipay/mobileapp/core/model/switches/SwitchInfoResp;->switches:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 122
    iget-object v0, v2, Lcom/alipay/mobileapp/core/model/switches/SwitchInfoResp;->switches:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 123
    iget-object v1, v2, Lcom/alipay/mobileapp/core/model/switches/SwitchInfoResp;->switches:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 124
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "reserveConfigKeyResponseTime"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "reserveConfigKeyUserId"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 127
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    invoke-static {}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 154
    :catch_0
    move-exception v0

    .line 155
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    :goto_2
    return-void

    .line 97
    :cond_3
    :try_start_1
    invoke-virtual {v3}, Lcom/alipay/mobile/common/info/AppInfo;->getmProductVersion()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 131
    :cond_4
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 135
    :cond_5
    iget-object v0, v2, Lcom/alipay/mobileapp/core/model/switches/SwitchInfoResp;->deleteKeys:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, v2, Lcom/alipay/mobileapp/core/model/switches/SwitchInfoResp;->deleteKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 136
    iget-object v0, v2, Lcom/alipay/mobileapp/core/model/switches/SwitchInfoResp;->deleteKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 137
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    invoke-static {}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "delete="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-interface {v3, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_3

    .line 140
    :cond_6
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 144
    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    iget-object v1, v2, Lcom/alipay/mobileapp/core/model/switches/SwitchInfoResp;->switches:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/SharedSwitchUtil;->refreshSharedSwitch(Landroid/content/Context;Ljava/util/Map;)V

    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 149
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.alipay.mobile.client.CONFIG_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_2

    .line 152
    :cond_8
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "fail to load commmon config"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method
