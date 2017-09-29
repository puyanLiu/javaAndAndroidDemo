.class public final Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;
.super Ljava/lang/Object;
.source "LongLinkServiceManager.java"


# static fields
.field private static volatile a:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;


# instance fields
.field private volatile b:Landroid/content/Context;

.field private volatile c:Z

.field private volatile d:Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;

.field private volatile e:Landroid/content/ServiceConnection;

.field private volatile f:Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkNotifer;

.field private volatile g:Lcom/alipay/mobile/rome/syncsdk/ILongLinkCallBack;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->b:Landroid/content/Context;

    .line 63
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager$ILongLinkNotiferImpl;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager$ILongLinkNotiferImpl;-><init>(Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;)V

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->f:Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkNotifer;

    .line 66
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager$ServiceConnectionImpl;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager$ServiceConnectionImpl;-><init>(Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;)V

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->e:Landroid/content/ServiceConnection;

    .line 67
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->d:Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;

    return-void
.end method

.method static synthetic access$1(Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;)Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->d:Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;)Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkNotifer;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->f:Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkNotifer;

    return-object v0
.end method

.method static synthetic access$3(Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;Z)V
    .locals 0

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->c:Z

    return-void
.end method

.method static synthetic access$4(Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;)Lcom/alipay/mobile/rome/syncsdk/ILongLinkCallBack;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->g:Lcom/alipay/mobile/rome/syncsdk/ILongLinkCallBack;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;
    .locals 3

    .prologue
    .line 73
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->a:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    if-nez v0, :cond_1

    .line 74
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    monitor-enter v1

    .line 75
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->a:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->a:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    .line 74
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :cond_1
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->a:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    return-object v0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final declared-synchronized finish()V
    .locals 4

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->d:Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;

    if-nez v0, :cond_0

    .line 118
    const-string/jumbo v0, "LongLinkServiceManager"

    const-string/jumbo v1, "finish longLinkService is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :goto_0
    monitor-exit p0

    return-void

    .line 122
    :cond_0
    :try_start_1
    const-string/jumbo v0, "LongLinkServiceManager"

    const-string/jumbo v1, "finish longlink [ unBindService ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->stopLink()V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->g:Lcom/alipay/mobile/rome/syncsdk/ILongLinkCallBack;

    .line 130
    iget-boolean v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->c:Z

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->e:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->c:Z

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->b:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->b:Landroid/content/Context;

    const-class v3, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->d:Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getCdid()Ljava/lang/String;
    .locals 4

    .prologue
    .line 242
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->getInstance()Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->getCdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 243
    const-string/jumbo v1, "LongLinkServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getCdid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    monitor-exit p0

    return-object v0

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getLongLinkCallback()Lcom/alipay/mobile/rome/syncsdk/ILongLinkCallBack;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->g:Lcom/alipay/mobile/rome/syncsdk/ILongLinkCallBack;

    return-object v0
.end method

.method public final declared-synchronized init(Lcom/alipay/mobile/rome/syncsdk/ILongLinkCallBack;)V
    .locals 4

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->g:Lcom/alipay/mobile/rome/syncsdk/ILongLinkCallBack;

    .line 92
    if-nez p1, :cond_0

    .line 93
    const-string/jumbo v0, "LongLinkServiceManager"

    const-string/jumbo v1, "init: [ callback=null ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :goto_0
    monitor-exit p0

    return-void

    .line 97
    :cond_0
    :try_start_1
    const-string/jumbo v0, "ssl"

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/LinkSelector;->getLinkType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    const-string/jumbo v0, "LongLinkServiceManager"

    const-string/jumbo v1, "init current is mmtp,so return."

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 102
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->d:Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;

    if-nez v0, :cond_2

    .line 103
    const-string/jumbo v0, "LongLinkServiceManager"

    const-string/jumbo v1, "init and  to bind LongLinkService"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->b:Landroid/content/Context;

    const-class v2, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->e:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0

    .line 107
    :cond_2
    const-string/jumbo v0, "LongLinkServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "bindService: already binded [ longLinkService="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    iget-object v2, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->d:Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized initConnect()V
    .locals 1

    .prologue
    .line 303
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->d:Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->d:Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;

    invoke-interface {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;->initConnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    :cond_0
    monitor-exit p0

    return-void

    .line 303
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final isConnected()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 251
    const-string/jumbo v1, "ssl"

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/LinkSelector;->getLinkType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 263
    :goto_0
    return v0

    .line 257
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->d:Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;

    if-nez v1, :cond_1

    .line 258
    const-string/jumbo v1, "LongLinkServiceManager"

    const-string/jumbo v2, "isConnected\uff1a [ longLinkService=null ]"

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->d:Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;

    invoke-interface {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;->isConnected()Z

    move-result v0

    goto :goto_0
.end method

.method public final onLinkState(Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;)V
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->g:Lcom/alipay/mobile/rome/syncsdk/ILongLinkCallBack;

    if-nez v0, :cond_0

    .line 421
    const-string/jumbo v0, "LongLinkServiceManager"

    const-string/jumbo v1, "onLinkState\uff1a [ longLinkCallback=null ] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :goto_0
    return-void

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->g:Lcom/alipay/mobile/rome/syncsdk/ILongLinkCallBack;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/rome/syncsdk/ILongLinkCallBack;->onLinkState(Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;)V

    goto :goto_0
.end method

.method public final declared-synchronized sendPacketUplink(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 338
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "LongLinkServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendPacketUplink\uff1a [ biz="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "][ appData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 339
    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 338
    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->d:Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;

    if-nez v0, :cond_0

    .line 342
    const-string/jumbo v0, "LongLinkServiceManager"

    const-string/jumbo v1, "sendPacketUplink\uff1a [ longLinkService=null ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    :goto_0
    monitor-exit p0

    return-void

    .line 348
    :cond_0
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 350
    const-string/jumbo v1, "appId"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 352
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 353
    const-string/jumbo v2, "payload"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 355
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->d:Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;->sendPacketUplink(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 356
    :catch_0
    move-exception v0

    .line 357
    :try_start_2
    const-string/jumbo v1, "LongLinkServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendPacketUplink: [ JSONException="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 338
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized sendPacketUplinkSync(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 367
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "LongLinkServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendPacketUplinkSync\uff1a [ data="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->d:Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;

    if-nez v0, :cond_0

    .line 370
    const-string/jumbo v0, "LongLinkServiceManager"

    const-string/jumbo v1, "sendPacketUplinkSync\uff1a [ longLinkService=null ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    :goto_0
    monitor-exit p0

    return-void

    .line 374
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->d:Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;->sendPacketUplinkSync(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 367
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setAppName(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 188
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "LongLinkServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setAppName:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->getInstance()Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->setAppName(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    monitor-exit p0

    return-void

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setConnActionActive()V
    .locals 2

    .prologue
    .line 224
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "LongLinkServiceManager"

    const-string/jumbo v1, "setConnActionActive: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->setConnActionActive()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    monitor-exit p0

    return-void

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setDebugMode(Z)V
    .locals 3

    .prologue
    .line 233
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "LongLinkServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setDebugMode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    monitor-exit p0

    return-void

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setDeviceId(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 215
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "LongLinkServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setDeviceId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->getInstance()Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->setDeviceId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    monitor-exit p0

    return-void

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setHostAddr(Ljava/lang/String;IZ)V
    .locals 3

    .prologue
    .line 178
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "LongLinkServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setHostAddr\uff1a [ host="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "][ port="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ sslFlag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 179
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 178
    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkHostAddr;->getInstance()Lcom/alipay/mobile/rome/syncsdk/config/LongLinkHostAddr;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkHostAddr;->setLongLinkAddr(Ljava/lang/String;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    monitor-exit p0

    return-void

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setProductId(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 206
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "LongLinkServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setProductId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->getInstance()Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->setProductId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    monitor-exit p0

    return-void

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setProductVersion(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 197
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "LongLinkServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setProductVersion:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->getInstance()Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->setProductVersion(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    monitor-exit p0

    return-void

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setUserInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 154
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 155
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 157
    if-eq v0, v1, :cond_0

    .line 158
    const-string/jumbo v0, "LongLinkServiceManager"

    const-string/jumbo v1, "setUserInfo\uff1a [ userId sessionId need to be accordant]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    :goto_0
    monitor-exit p0

    return-void

    .line 162
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->d:Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;

    if-nez v0, :cond_1

    .line 163
    const-string/jumbo v0, "LongLinkServiceManager"

    const-string/jumbo v1, "setUserInfo\uff1a [ longLinkService=null ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->getInstance()Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->setUserId(Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->getInstance()Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->setSessionId(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 171
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->d:Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized startLink()V
    .locals 2

    .prologue
    .line 284
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "ssl"

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/LinkSelector;->getLinkType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    const-string/jumbo v0, "LongLinkServiceManager"

    const-string/jumbo v1, "startLink\uff1acurrent link is mmtp. needn\'t start ssl link."

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    :goto_0
    monitor-exit p0

    return-void

    .line 290
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->d:Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;

    if-nez v0, :cond_1

    .line 291
    const-string/jumbo v0, "LongLinkServiceManager"

    const-string/jumbo v1, "startLink\uff1a [ longLinkService=null ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 295
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->d:Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;

    invoke-interface {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 296
    const-string/jumbo v0, "LongLinkServiceManager"

    const-string/jumbo v1, "startLink: [ already connected ] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 299
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->d:Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;

    invoke-interface {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;->connect()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized startLinkOnResume()V
    .locals 2

    .prologue
    .line 270
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "ssl"

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/LinkSelector;->getLinkType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    const-string/jumbo v0, "LongLinkServiceManager"

    const-string/jumbo v1, "startLinkOnResume link is mmtp. needn\'t start ssl link."

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    :goto_0
    monitor-exit p0

    return-void

    .line 274
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/transport/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "spdy"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->initConnect()V

    .line 277
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->startLink()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized stopLink()V
    .locals 2

    .prologue
    .line 312
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "LongLinkServiceManager"

    const-string/jumbo v1, "stopLink"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string/jumbo v0, "ssl"

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/LinkSelector;->getLinkType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 327
    :goto_0
    monitor-exit p0

    return-void

    .line 318
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->d:Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;

    if-nez v0, :cond_1

    .line 319
    const-string/jumbo v0, "LongLinkServiceManager"

    const-string/jumbo v1, "stopLink\uff1a [ longLinkService=null ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 324
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->resetConnSeq()V

    .line 326
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->d:Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;

    invoke-interface {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;->disConnect()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
