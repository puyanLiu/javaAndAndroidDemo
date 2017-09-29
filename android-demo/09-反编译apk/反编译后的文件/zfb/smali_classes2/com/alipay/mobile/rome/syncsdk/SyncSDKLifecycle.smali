.class public Lcom/alipay/mobile/rome/syncsdk/SyncSDKLifecycle;
.super Lcom/alipay/mobile/rome/syncsdk/ILifecycle;
.source "SyncSDKLifecycle.java"

# interfaces
.implements Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelChangedListener;


# static fields
.field private static a:Lcom/alipay/mobile/rome/syncsdk/SyncSDKLifecycle;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Z

.field private d:Lcom/alipay/mobile/rome/syncsdk/service/LongLinkNetInfoReceiver;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/alipay/mobile/rome/syncsdk/ILifecycle;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/rome/syncsdk/SyncSDKLifecycle;->c:Z

    .line 34
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/AppContextHelper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/SyncSDKLifecycle;->b:Landroid/content/Context;

    .line 35
    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/rome/syncsdk/SyncSDKLifecycle;
    .locals 2

    .prologue
    .line 38
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/SyncSDKLifecycle;->a:Lcom/alipay/mobile/rome/syncsdk/SyncSDKLifecycle;

    if-nez v0, :cond_0

    .line 39
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/SyncSDKLifecycle;

    monitor-enter v1

    .line 40
    :try_start_0
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/SyncSDKLifecycle;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/syncsdk/SyncSDKLifecycle;-><init>()V

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/SyncSDKLifecycle;->a:Lcom/alipay/mobile/rome/syncsdk/SyncSDKLifecycle;

    .line 39
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/SyncSDKLifecycle;->a:Lcom/alipay/mobile/rome/syncsdk/SyncSDKLifecycle;

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onFinish()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 69
    iget-boolean v0, p0, Lcom/alipay/mobile/rome/syncsdk/SyncSDKLifecycle;->c:Z

    if-nez v0, :cond_0

    .line 81
    :goto_0
    return-void

    .line 74
    :cond_0
    sput-object v4, Lcom/alipay/mobile/rome/syncsdk/SyncSDKLifecycle;->a:Lcom/alipay/mobile/rome/syncsdk/SyncSDKLifecycle;

    .line 76
    const-string/jumbo v0, "SyncSDKLifecycle"

    const-string/jumbo v1, "unregisterActionReceiver"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/SyncSDKLifecycle;->d:Lcom/alipay/mobile/rome/syncsdk/service/LongLinkNetInfoReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/SyncSDKLifecycle;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/SyncSDKLifecycle;->d:Lcom/alipay/mobile/rome/syncsdk/service/LongLinkNetInfoReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/SyncSDKLifecycle;->d:Lcom/alipay/mobile/rome/syncsdk/service/LongLinkNetInfoReceiver;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkNetInfoReceiver;->unregisterAllNetInfoListener()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iput-object v4, p0, Lcom/alipay/mobile/rome/syncsdk/SyncSDKLifecycle;->d:Lcom/alipay/mobile/rome/syncsdk/service/LongLinkNetInfoReceiver;

    .line 79
    invoke-static {}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->getInstance()Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->removeNetworkTunnelChangedListener(Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelChangedListener;)V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/rome/syncsdk/SyncSDKLifecycle;->c:Z

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    const-string/jumbo v1, "SyncSDKLifecycle"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unregisterActionReceiver: [ Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onInitialize()V
    .locals 4

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/alipay/mobile/rome/syncsdk/SyncSDKLifecycle;->c:Z

    if-eqz v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 56
    :cond_0
    const-string/jumbo v0, "SyncSDKLifecycle"

    const-string/jumbo v1, "registerNetInfoReceiver"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkNetInfoReceiver;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkNetInfoReceiver;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/SyncSDKLifecycle;->d:Lcom/alipay/mobile/rome/syncsdk/service/LongLinkNetInfoReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/SyncSDKLifecycle;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/alipay/mobile/rome/syncsdk/SyncSDKLifecycle;->d:Lcom/alipay/mobile/rome/syncsdk/service/LongLinkNetInfoReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->getInstance()Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->addNetworkTunnelChangedListener(Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelChangedListener;)V

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/rome/syncsdk/SyncSDKLifecycle;->c:Z

    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    const-string/jumbo v1, "SyncSDKLifecycle"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "registerNetInfoReceiver: [ Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public registerNetInfoListener(Lcom/alipay/mobile/rome/syncsdk/service/INetworkInfoNotifier;)V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/SyncSDKLifecycle;->d:Lcom/alipay/mobile/rome/syncsdk/service/LongLinkNetInfoReceiver;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/SyncSDKLifecycle;->d:Lcom/alipay/mobile/rome/syncsdk/service/LongLinkNetInfoReceiver;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkNetInfoReceiver;->addNetInfoListener(Lcom/alipay/mobile/rome/syncsdk/service/INetworkInfoNotifier;)V

    .line 129
    :cond_0
    return-void
.end method

.method public unregisterNetInfoListener(Lcom/alipay/mobile/rome/syncsdk/service/INetworkInfoNotifier;)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/SyncSDKLifecycle;->d:Lcom/alipay/mobile/rome/syncsdk/service/LongLinkNetInfoReceiver;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/SyncSDKLifecycle;->d:Lcom/alipay/mobile/rome/syncsdk/service/LongLinkNetInfoReceiver;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkNetInfoReceiver;->removeNetInfoListener(Lcom/alipay/mobile/rome/syncsdk/service/INetworkInfoNotifier;)V

    .line 141
    :cond_0
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 145
    instance-of v0, p2, Lcom/alipay/mobile/common/transport/strategy/TunnelChangeEventModel;

    if-eqz v0, :cond_2

    .line 146
    check-cast p2, Lcom/alipay/mobile/common/transport/strategy/TunnelChangeEventModel;

    .line 148
    iget v0, p2, Lcom/alipay/mobile/common/transport/strategy/TunnelChangeEventModel;->newTunnelType:I

    .line 149
    const-string/jumbo v1, "SyncSDKLifecycle"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "update newTunnelType="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/SyncSDKLifecycle;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    move-result-object v1

    .line 151
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 152
    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 153
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->getInstance()Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->getLongLinkCallback()Lcom/alipay/mobile/rome/syncsdk/zlink2/ILongLinkCallBack2;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_3

    .line 155
    invoke-interface {v0}, Lcom/alipay/mobile/rome/syncsdk/ICommonCallback;->onTunnelSwitch()V

    .line 164
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->getLongLinkCallback()Lcom/alipay/mobile/rome/syncsdk/ILongLinkCallBack;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_2

    .line 166
    invoke-interface {v0}, Lcom/alipay/mobile/rome/syncsdk/ICommonCallback;->afterTunnelSwitch()V

    .line 188
    :cond_2
    :goto_1
    return-void

    .line 158
    :cond_3
    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->getLongLinkCallback()Lcom/alipay/mobile/rome/syncsdk/ILongLinkCallBack;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_1

    .line 160
    invoke-interface {v0}, Lcom/alipay/mobile/rome/syncsdk/ICommonCallback;->onTunnelSwitch()V

    goto :goto_0

    .line 168
    :cond_4
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 170
    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->getLongLinkCallback()Lcom/alipay/mobile/rome/syncsdk/ILongLinkCallBack;

    move-result-object v0

    .line 171
    if-eqz v0, :cond_6

    .line 172
    invoke-interface {v0}, Lcom/alipay/mobile/rome/syncsdk/ICommonCallback;->onTunnelSwitch()V

    .line 182
    :cond_5
    :goto_2
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->getInstance()Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->getLongLinkCallback()Lcom/alipay/mobile/rome/syncsdk/zlink2/ILongLinkCallBack2;

    move-result-object v0

    .line 183
    if-eqz v0, :cond_2

    .line 184
    invoke-interface {v0}, Lcom/alipay/mobile/rome/syncsdk/ICommonCallback;->afterTunnelSwitch()V

    goto :goto_1

    .line 175
    :cond_6
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->getInstance()Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->getLongLinkCallback()Lcom/alipay/mobile/rome/syncsdk/zlink2/ILongLinkCallBack2;

    move-result-object v0

    .line 176
    if-eqz v0, :cond_5

    .line 177
    invoke-interface {v0}, Lcom/alipay/mobile/rome/syncsdk/ICommonCallback;->onTunnelSwitch()V

    goto :goto_2
.end method
