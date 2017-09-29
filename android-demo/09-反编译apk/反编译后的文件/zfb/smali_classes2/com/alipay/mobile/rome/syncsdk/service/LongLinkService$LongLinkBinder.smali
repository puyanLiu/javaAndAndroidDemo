.class Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService$LongLinkBinder;
.super Landroid/os/Binder;
.source "LongLinkService.java"

# interfaces
.implements Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService$LongLinkBinder;->this$0:Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService$LongLinkBinder;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService$LongLinkBinder;-><init>(Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;)V

    return-void
.end method


# virtual methods
.method public connect()V
    .locals 1

    .prologue
    .line 89
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->resetFailCount()V

    .line 91
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->access$0()Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->access$0()Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->connect()V

    .line 94
    :cond_0
    return-void
.end method

.method public disConnect()V
    .locals 1

    .prologue
    .line 114
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->resetFailCount()V

    .line 116
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->access$0()Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->disconnect()V

    .line 117
    return-void
.end method

.method public initConnect()V
    .locals 1

    .prologue
    .line 198
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->access$0()Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->toInitState()V

    .line 199
    return-void
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 123
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->access$0()Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->isConnected()Z

    move-result v0

    return v0
.end method

.method public reconnect()V
    .locals 1

    .prologue
    .line 101
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->resetFailCount()V

    .line 104
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->getInstance()Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->clearAllTimers()V

    .line 106
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->access$0()Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->reconnect()V

    .line 107
    return-void
.end method

.method public sendPacketUplink(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 174
    const-string/jumbo v0, "LongLinkService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendPacketUplink[ data="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->getInstance()Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    const-string/jumbo v0, "LongLinkService"

    const-string/jumbo v1, "sendPacketUplink: [ userId=null or empty ] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :goto_0
    return-void

    .line 184
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->access$0()Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->sendLinkDefaultData(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendPacketUplinkSync(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 193
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->access$0()Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->sendLinkSyncData(Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public setLonkLinkNotifer(Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkNotifer;)V
    .locals 2

    .prologue
    .line 162
    const-string/jumbo v0, "LongLinkService"

    const-string/jumbo v1, "setPacketNotifer"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->access$0()Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService$LongLinkBinder;->this$0:Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;-><init>(Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;)V

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->access$1(Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;)V

    .line 167
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->access$0()Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->setLinkNotifier(Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkNotifer;)V

    .line 168
    return-void
.end method

.method public setUserInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 131
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->resetFailCount()V

    .line 133
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->getInstance()Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;

    move-result-object v0

    .line 134
    const-string/jumbo v1, "LongLinkService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setUserInfo**userId || sessionId\uff1a "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " || "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 135
    const-string/jumbo v3, "LongLinkAppInfo userId || sessionId["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "||"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 136
    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->getSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] UserBinded:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->access$0()Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->isUserBinded()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 134
    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 142
    :cond_0
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->setUserId(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->setSessionId(Ljava/lang/String;)V

    .line 144
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->access$0()Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->isUserBinded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->access$0()Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->sendUnBindUerPacket()V

    .line 156
    :cond_1
    :goto_0
    return-void

    .line 148
    :cond_2
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->DEVICE_BINDED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->access$0()Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getCurrState()Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 149
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->access$0()Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->sendBindUerPacket()V

    goto :goto_0

    .line 154
    :cond_3
    const-string/jumbo v0, "LongLinkService"

    const-string/jumbo v1, "setAppUserInfo: [ userId and sessionID is equals with current userId and sessionId ] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
