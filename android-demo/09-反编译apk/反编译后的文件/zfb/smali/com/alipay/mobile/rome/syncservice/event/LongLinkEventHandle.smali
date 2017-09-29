.class public Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;
.super Ljava/lang/Object;
.source "LongLinkEventHandle.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static e:Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;


# instance fields
.field private b:Z

.field private c:Lcom/alipay/mobile/rome/syncservice/control/ControlCenter;

.field private d:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->a:Ljava/lang/String;

    .line 23
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->b:Z

    .line 35
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;)Lcom/alipay/mobile/rome/syncservice/control/ControlCenter;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->c:Lcom/alipay/mobile/rome/syncservice/control/ControlCenter;

    return-object v0
.end method

.method public static getInstance()Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;
    .locals 2

    .prologue
    .line 38
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->e:Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;

    if-nez v0, :cond_1

    .line 39
    const-class v1, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;

    monitor-enter v1

    .line 40
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->e:Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;-><init>()V

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->e:Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;

    .line 39
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_1
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->e:Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public appBackToForeground()V
    .locals 4

    .prologue
    .line 188
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils;->SCREEN_STATUS:Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$ScreenStatus;

    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$ScreenStatus;->SCREEN_OFF:Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$ScreenStatus;

    if-ne v0, v1, :cond_0

    .line 189
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->a:Ljava/lang/String;

    const-string/jumbo v1, "appBackToForeground: [ screen off ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->c:Lcom/alipay/mobile/rome/syncservice/control/ControlCenter;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncservice/control/ControlCenter;->doResume()Z

    .line 194
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "appBackToForeground [link is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/LinkSelector;->getLinkType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;->FOREGROUND:Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils;->updateAppStatus(Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;)V

    .line 198
    const-string/jumbo v0, "EVENT_FIRST_RESUME"

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/LinkSelector;->getConnectType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    .line 198
    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/rome/syncservice/e/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->c:Lcom/alipay/mobile/rome/syncservice/control/ControlCenter;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncservice/control/ControlCenter;->doStartLinkOnResume()V

    goto :goto_0
.end method

.method public clearAccount(Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 118
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->a:Ljava/lang/String;

    const-string/jumbo v1, "clearAccount"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :try_start_0
    const-string/jumbo v0, "userId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    const-string/jumbo v1, "logonId"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    const-string/jumbo v2, "EVENT_CLEAR_ACCOUNT"

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "logonId:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " userId:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/LinkSelector;->getConnectType()Ljava/lang/String;

    move-result-object v4

    .line 124
    invoke-static {v2, v3, v1, v4}, Lcom/alipay/mobile/rome/syncservice/e/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/e/a;->a()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    .line 131
    sget-object v2, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onReceive: [ curUserId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ][ delUserId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->c:Lcom/alipay/mobile/rome/syncservice/control/ControlCenter;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/rome/syncservice/control/ControlCenter;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->c:Lcom/alipay/mobile/rome/syncservice/control/ControlCenter;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncservice/control/ControlCenter;->doStartLink()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    sget-object v1, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Exception e: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public finish()V
    .locals 4

    .prologue
    .line 88
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "finish: mInitialized="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-boolean v0, p0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->b:Z

    if-nez v0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->b:Z

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->c:Lcom/alipay/mobile/rome/syncservice/control/ControlCenter;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncservice/control/ControlCenter;->finish()V

    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->d:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/AppContextHelper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->d:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unregisterScreenListener  [ Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public forceLogout(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 231
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->a:Ljava/lang/String;

    const-string/jumbo v1, "forceLogout, ssl will unbinduser"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->clearAccount(Landroid/content/Intent;)V

    .line 233
    return-void
.end method

.method public frameworkActivityUserleavehint()V
    .locals 4

    .prologue
    .line 171
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;->BACKGROUND:Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils;->getCurrentAppStatus()Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 172
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->a:Ljava/lang/String;

    const-string/jumbo v1, "frameworkActivityUserleavehint: already background!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :goto_0
    return-void

    .line 176
    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->a:Ljava/lang/String;

    const-string/jumbo v1, "frameworkActivityUserleavehint: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string/jumbo v0, "EVENT_USER_LEAVE"

    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/LinkSelector;->getConnectType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    .line 178
    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/rome/syncservice/e/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;->BACKGROUND:Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils;->updateAppStatus(Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;)V

    .line 183
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->c:Lcom/alipay/mobile/rome/syncservice/control/ControlCenter;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncservice/control/ControlCenter;->doUserLeaveHint()V

    goto :goto_0
.end method

.method public gestureSuccess(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 164
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->a:Ljava/lang/String;

    const-string/jumbo v1, "gestureSuccess: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->c:Lcom/alipay/mobile/rome/syncservice/control/ControlCenter;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncservice/control/ControlCenter;->doStartLink()V

    .line 167
    return-void
.end method

.method public init()V
    .locals 3

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->b:Z

    if-eqz v0, :cond_0

    .line 61
    :goto_0
    return-void

    .line 56
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->b:Z

    .line 58
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->initControlCenter()V

    .line 60
    new-instance v0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle$1;-><init>(Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;)V

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->d:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/AppContextHelper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public initControlCenter()V
    .locals 2

    .prologue
    .line 78
    const-string/jumbo v0, "mmtp"

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/LinkSelector;->getLinkType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter2;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/ControlCenter;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->c:Lcom/alipay/mobile/rome/syncservice/control/ControlCenter;

    .line 84
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->c:Lcom/alipay/mobile/rome/syncservice/control/ControlCenter;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncservice/control/ControlCenter;->init()V

    .line 85
    return-void

    .line 81
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/ControlCenter;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->c:Lcom/alipay/mobile/rome/syncservice/control/ControlCenter;

    goto :goto_0
.end method

.method public login(Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 101
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->a:Ljava/lang/String;

    const-string/jumbo v1, "login"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    if-eqz p1, :cond_0

    .line 105
    const-string/jumbo v0, "userId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    const-string/jumbo v1, "logonId"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    const-string/jumbo v2, "EVENT_LOGIN"

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "logonId:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " userId:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/LinkSelector;->getConnectType()Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-static {v2, v3, v0, v1}, Lcom/alipay/mobile/rome/syncservice/e/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->refreshUserInfo()V

    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->c:Lcom/alipay/mobile/rome/syncservice/control/ControlCenter;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncservice/control/ControlCenter;->doLogin()V

    .line 114
    return-void
.end method

.method public logout(Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 150
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->a:Ljava/lang/String;

    const-string/jumbo v1, "logout: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string/jumbo v0, "userId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    const-string/jumbo v1, "logonId"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 155
    const-string/jumbo v2, "EVENT_LOGOUT"

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "logonId:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " userId:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/LinkSelector;->getConnectType()Ljava/lang/String;

    move-result-object v1

    .line 155
    invoke-static {v2, v3, v0, v1}, Lcom/alipay/mobile/rome/syncservice/e/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->refreshUserInfo()V

    .line 160
    return-void
.end method

.method public refreshUserInfo()V
    .locals 3

    .prologue
    .line 214
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/e/a;->a()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    .line 215
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 216
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 217
    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->a:Ljava/lang/String;

    const-string/jumbo v1, "refreshUserInfo [ userInfo is null ] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->c:Lcom/alipay/mobile/rome/syncservice/control/ControlCenter;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/rome/syncservice/control/ControlCenter;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :goto_0
    return-void

    .line 223
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->c:Lcom/alipay/mobile/rome/syncservice/control/ControlCenter;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/rome/syncservice/control/ControlCenter;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public tunnelSwitch()V
    .locals 2

    .prologue
    .line 67
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->a:Ljava/lang/String;

    const-string/jumbo v1, "tunnelSwitch"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->c:Lcom/alipay/mobile/rome/syncservice/control/ControlCenter;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncservice/control/ControlCenter;->finish()V

    .line 72
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/LinkSelector;->setReinitFlag()V

    .line 74
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->initControlCenter()V

    .line 75
    return-void
.end method

.method public uplinkData(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->c:Lcom/alipay/mobile/rome/syncservice/control/ControlCenter;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/rome/syncservice/control/ControlCenter;->doUplinkData(Landroid/content/Intent;)V

    .line 208
    return-void
.end method
