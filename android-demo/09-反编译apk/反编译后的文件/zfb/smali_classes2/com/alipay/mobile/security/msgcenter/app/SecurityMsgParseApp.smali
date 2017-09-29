.class public Lcom/alipay/mobile/security/msgcenter/app/SecurityMsgParseApp;
.super Lcom/alipay/mobile/framework/app/ActivityApplication;


# instance fields
.field private final TAG:Ljava/lang/String;

.field startParams:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;-><init>()V

    const-string/jumbo v0, "SecurityMsgParseApp"

    iput-object v0, p0, Lcom/alipay/mobile/security/msgcenter/app/SecurityMsgParseApp;->TAG:Ljava/lang/String;

    return-void
.end method

.method private sendMsg()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/security/msgcenter/app/SecurityMsgParseApp;->startParams:Landroid/os/Bundle;

    const-string/jumbo v1, "syncToPushDone"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SecurityMsgParseApp"

    const-string/jumbo v2, "[\u5b89\u5168\u786e\u8ba4]Sync\u6d88\u606f\u8d70Push\u65b9\u5f0f\u542f\u52a8"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/security/msgcenter/SecurityMsgCenter;->getInstance()Lcom/alipay/mobile/security/msgcenter/SecurityMsgCenter;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->BizKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/security/msgcenter/app/SecurityMsgParseApp;->startParams:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/security/msgcenter/SecurityMsgCenter;->sendSyncMsg(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SecurityMsgParseApp"

    const-string/jumbo v2, "[\u5b89\u5168\u786e\u8ba4]Push\u6d88\u606f\u6b63\u5e38\u542f\u52a8"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/security/msgcenter/SecurityMsgCenter;->getInstance()Lcom/alipay/mobile/security/msgcenter/SecurityMsgCenter;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->BizKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/security/msgcenter/app/SecurityMsgParseApp;->startParams:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/security/msgcenter/SecurityMsgCenter;->sendPushMsg(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method


# virtual methods
.method public getEntryClassName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/msgcenter/app/SecurityMsgParseApp;->startParams:Landroid/os/Bundle;

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SecurityMsgParseApp"

    const-string/jumbo v2, "SecurityMsgParseApp:onDestroy()"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onRestart(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/msgcenter/app/SecurityMsgParseApp;->startParams:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/msgcenter/app/SecurityMsgParseApp;->onStart()V

    return-void
.end method

.method protected onStart()V
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/security/msgcenter/app/SecurityMsgParseApp;->startParams:Landroid/os/Bundle;

    const-string/jumbo v1, "testSource"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "sync"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SecurityMsgParseApp"

    const-string/jumbo v2, "[\u5b89\u5168\u786e\u8ba4\u6d4b\u8bd5]\u672c\u6b21\u6267\u884cSYNC\u7684\u903b\u8f91"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/security/msgcenter/SecurityMsgCenter;->getInstance()Lcom/alipay/mobile/security/msgcenter/SecurityMsgCenter;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->BizKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/security/msgcenter/app/SecurityMsgParseApp;->startParams:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/security/msgcenter/SecurityMsgCenter;->sendSyncMsg(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SecurityMsgParseApp"

    const-string/jumbo v2, "[\u5b89\u5168\u786e\u8ba4\u6d4b\u8bd5]\u672c\u6b21\u6267\u884cPUSH\u7684\u903b\u8f91"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/security/msgcenter/SecurityMsgCenter;->getInstance()Lcom/alipay/mobile/security/msgcenter/SecurityMsgCenter;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->BizKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/security/msgcenter/app/SecurityMsgParseApp;->startParams:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/security/msgcenter/SecurityMsgCenter;->sendPushMsg(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/security/msgcenter/app/SecurityMsgParseApp;->sendMsg()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/security/msgcenter/app/SecurityMsgParseApp;->sendMsg()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    return-void
.end method
