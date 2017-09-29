.class public Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;
.super Ljava/lang/Object;
.source "OutEventNotifyServiceImpl.java"

# interfaces
.implements Lcom/alipay/mobile/common/amnet/ipcapi/pushproc/OutEventNotifyService;


# static fields
.field private static OUT_EVENT_NOTIFY_MANAGER:Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;


# instance fields
.field private appResume:Z

.field private mainProcExist:Z

.field private seceenOn:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean v0, p0, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->appResume:Z

    .line 22
    iput-boolean v0, p0, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->seceenOn:Z

    .line 24
    iput-boolean v0, p0, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->mainProcExist:Z

    .line 46
    return-void
.end method

.method private getAmnetManager()Lcom/alipay/mobile/common/amnet/api/AmnetManager;
    .locals 1

    .prologue
    .line 204
    invoke-static {}, Lcom/alipay/pushsdk/util/a;->a()Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance()Lcom/alipay/mobile/common/amnet/ipcapi/pushproc/OutEventNotifyService;
    .locals 2

    .prologue
    .line 28
    sget-object v0, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->OUT_EVENT_NOTIFY_MANAGER:Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;

    if-eqz v0, :cond_0

    .line 29
    sget-object v0, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->OUT_EVENT_NOTIFY_MANAGER:Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;

    .line 40
    :goto_0
    return-object v0

    .line 32
    :cond_0
    const-class v1, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;

    monitor-enter v1

    .line 33
    :try_start_0
    sget-object v0, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->OUT_EVENT_NOTIFY_MANAGER:Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;

    if-eqz v0, :cond_1

    .line 34
    sget-object v0, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->OUT_EVENT_NOTIFY_MANAGER:Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 37
    :cond_1
    :try_start_1
    new-instance v0, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;

    invoke-direct {v0}, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;-><init>()V

    sput-object v0, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->OUT_EVENT_NOTIFY_MANAGER:Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;

    .line 32
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    sget-object v0, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->OUT_EVENT_NOTIFY_MANAGER:Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;

    goto :goto_0
.end method


# virtual methods
.method public notifyAppLeaveEvent()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->getAmnetManager()Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/amnet/api/AmnetManager;->isActivated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    iget-boolean v0, p0, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->appResume:Z

    if-eqz v0, :cond_0

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->appResume:Z

    .line 60
    invoke-direct {p0}, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->getAmnetManager()Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/amnet/api/AmnetManager;->getOutEventNotifyManager()Lcom/alipay/mobile/common/amnet/api/OutEventNotifyManager;

    move-result-object v0

    .line 61
    invoke-interface {v0}, Lcom/alipay/mobile/common/amnet/api/OutEventNotifyManager;->notifyAppLeaveEvent()V

    goto :goto_0
.end method

.method public notifyAppResumeEvent()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->getAmnetManager()Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/amnet/api/AmnetManager;->isActivated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-boolean v0, p0, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->appResume:Z

    if-nez v0, :cond_0

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->appResume:Z

    .line 76
    invoke-direct {p0}, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->getAmnetManager()Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/amnet/api/AmnetManager;->getOutEventNotifyManager()Lcom/alipay/mobile/common/amnet/api/OutEventNotifyManager;

    move-result-object v0

    .line 77
    invoke-interface {v0}, Lcom/alipay/mobile/common/amnet/api/OutEventNotifyManager;->notifyAppResumeEvent()V

    goto :goto_0
.end method

.method public notifyLoginOrLogoutEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->getAmnetManager()Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/amnet/api/AmnetManager;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-static {}, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->getInstance()Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->updateUserInfoForInitInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-direct {p0}, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->getAmnetManager()Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/amnet/api/AmnetManager;->getOutEventNotifyManager()Lcom/alipay/mobile/common/amnet/api/OutEventNotifyManager;

    move-result-object v0

    .line 121
    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/common/amnet/api/OutEventNotifyManager;->notifyLoginOrLogoutEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public notifyMainProcExistStateChanged(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 150
    invoke-direct {p0}, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->getAmnetManager()Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/amnet/api/AmnetManager;->isActivated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    if-ne p1, v1, :cond_2

    .line 155
    iget-boolean v0, p0, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->mainProcExist:Z

    if-nez v0, :cond_0

    .line 158
    iput-boolean v1, p0, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->mainProcExist:Z

    .line 166
    :goto_1
    invoke-direct {p0}, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->getAmnetManager()Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/amnet/api/AmnetManager;->getOutEventNotifyManager()Lcom/alipay/mobile/common/amnet/api/OutEventNotifyManager;

    move-result-object v0

    .line 167
    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/amnet/api/OutEventNotifyManager;->notifyMainProcExistStateChanged(I)V

    goto :goto_0

    .line 160
    :cond_2
    iget-boolean v0, p0, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->mainProcExist:Z

    if-eqz v0, :cond_0

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->mainProcExist:Z

    goto :goto_1
.end method

.method public notifySeceenOffEvent()V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->getAmnetManager()Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/amnet/api/AmnetManager;->isActivated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-boolean v0, p0, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->seceenOn:Z

    if-eqz v0, :cond_0

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->seceenOn:Z

    .line 108
    invoke-direct {p0}, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->getAmnetManager()Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/amnet/api/AmnetManager;->getOutEventNotifyManager()Lcom/alipay/mobile/common/amnet/api/OutEventNotifyManager;

    move-result-object v0

    .line 109
    invoke-interface {v0}, Lcom/alipay/mobile/common/amnet/api/OutEventNotifyManager;->notifySeceenOffEvent()V

    goto :goto_0
.end method

.method public notifySeceenOnEvent()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->getAmnetManager()Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/amnet/api/AmnetManager;->isActivated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-boolean v0, p0, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->seceenOn:Z

    if-nez v0, :cond_0

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->seceenOn:Z

    .line 92
    invoke-direct {p0}, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->getAmnetManager()Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/amnet/api/AmnetManager;->getOutEventNotifyManager()Lcom/alipay/mobile/common/amnet/api/OutEventNotifyManager;

    move-result-object v0

    .line 93
    invoke-interface {v0}, Lcom/alipay/mobile/common/amnet/api/OutEventNotifyManager;->notifySeceenOnEvent()V

    goto :goto_0
.end method

.method public notifySwitchDelayHandshake(I)V
    .locals 1

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->getAmnetManager()Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/amnet/api/AmnetManager;->getOutEventNotifyManager()Lcom/alipay/mobile/common/amnet/api/OutEventNotifyManager;

    move-result-object v0

    .line 194
    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/amnet/api/OutEventNotifyManager;->notifySwitchDelayHandshake(I)V

    .line 195
    return-void
.end method

.method public notifySwitchOrtt(I)V
    .locals 1

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->getAmnetManager()Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/amnet/api/AmnetManager;->getOutEventNotifyManager()Lcom/alipay/mobile/common/amnet/api/OutEventNotifyManager;

    move-result-object v0

    .line 185
    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/amnet/api/OutEventNotifyManager;->notifySwitchOrtt(I)V

    .line 186
    return-void
.end method

.method public notifySwitchSmartHeartBeat(I)V
    .locals 1

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->getAmnetManager()Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/amnet/api/AmnetManager;->getOutEventNotifyManager()Lcom/alipay/mobile/common/amnet/api/OutEventNotifyManager;

    move-result-object v0

    .line 176
    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/amnet/api/OutEventNotifyManager;->notifySwitchSmartHeartBeat(I)V

    .line 177
    return-void
.end method

.method public notifyUpdateDnsInfo(BLjava/lang/String;)V
    .locals 1

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->getAmnetManager()Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/amnet/api/AmnetManager;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-direct {p0}, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->getAmnetManager()Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/amnet/api/AmnetManager;->getOutEventNotifyManager()Lcom/alipay/mobile/common/amnet/api/OutEventNotifyManager;

    move-result-object v0

    .line 131
    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/common/amnet/api/OutEventNotifyManager;->notifyUpdateDnsInfo(BLjava/lang/String;)V

    goto :goto_0
.end method

.method public onSyncInitChanged(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    invoke-static {}, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->getInstance()Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->updateSyncInitInfo(Ljava/util/Map;)V

    .line 137
    return-void
.end method

.method public resetEventStates()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 198
    iput-boolean v0, p0, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->appResume:Z

    .line 199
    iput-boolean v0, p0, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->seceenOn:Z

    .line 200
    iput-boolean v0, p0, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->mainProcExist:Z

    .line 201
    return-void
.end method
