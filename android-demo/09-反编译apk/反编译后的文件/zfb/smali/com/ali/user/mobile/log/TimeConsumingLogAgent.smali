.class public Lcom/ali/user/mobile/log/TimeConsumingLogAgent;
.super Ljava/lang/Object;
.source "TimeConsumingLogAgent.java"


# instance fields
.field private a:Lcom/ali/user/mobile/log/BehaviourIdEnum;

.field private b:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

.field private c:J

.field private d:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ali/user/mobile/log/BehaviourIdEnum;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p2, p0, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->a:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    .line 19
    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->b:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    .line 20
    iget-object v0, p0, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->b:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-virtual {v0, p3}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setUserCaseID(Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->b:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/info/AppInfo;->getSdkId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setAppID(Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->b:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/info/AppInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setAppVersion(Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->b:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    const-string/jumbo v1, "s"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setBehaviourPro(Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->b:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    const-string/jumbo v1, "c"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setLogPro(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static logRpcException(Lcom/ali/user/mobile/log/TimeConsumingLogAgent;Lcom/alipay/mobile/common/rpc/RpcException;)V
    .locals 3

    .prologue
    .line 28
    const-string/jumbo v0, "N"

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatus(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v1, "netException"

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatusMsg(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    .line 29
    const-string/jumbo v1, "code"

    invoke-virtual {p1}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->addExtParam(Ljava/lang/String;Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v1, "msg"

    invoke-virtual {p1}, Lcom/alipay/mobile/common/rpc/RpcException;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->addExtParam(Ljava/lang/String;Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    .line 30
    return-void
.end method


# virtual methods
.method public addExtParam(Ljava/lang/String;Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->b:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-object p0
.end method

.method public commit()V
    .locals 3

    .prologue
    .line 84
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->a:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    invoke-virtual {v1}, Lcom/ali/user/mobile/log/BehaviourIdEnum;->getDes()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->b:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->event(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 85
    return-void
.end method

.method public logEnd()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;
    .locals 4

    .prologue
    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->c:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->d:J

    .line 39
    iget-object v0, p0, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->b:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    const-string/jumbo v1, "timespan"

    iget-wide v2, p0, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->d:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-object p0
.end method

.method public logFacade(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->b:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    const-string/jumbo v1, "facade"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-object p0
.end method

.method public logSeedID(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->b:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 65
    return-object p0
.end method

.method public logStart()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;
    .locals 2

    .prologue
    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->c:J

    .line 34
    return-object p0
.end method

.method public logStatus(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->b:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setStatus(Ljava/lang/String;)V

    .line 45
    return-object p0
.end method

.method public logStatusMsg(I)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->b:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setStatusMsg(Ljava/lang/String;)V

    .line 50
    return-object p0
.end method

.method public logStatusMsg(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->b:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setStatusMsg(Ljava/lang/String;)V

    .line 55
    return-object p0
.end method

.method public logToken(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->b:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    const-string/jumbo v1, "token"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-object p0
.end method

.method public logViewID(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->b:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setViewID(Ljava/lang/String;)V

    .line 60
    return-object p0
.end method
