.class public Lcom/ali/user/mobile/account/bind/BindManager;
.super Ljava/lang/Object;
.source "BindManager.java"


# static fields
.field public static final ACTION_ALIPAY_BIND_TAOBAO:Ljava/lang/String; = "com.ali.user.mobile.account.bind.alipay_bind_taobao"

.field public static final CODE_RPC_EXCEPTION:I = -0x3

.field public static final CODE_USER_CANCEL:I = -0x1

.field public static final CODE_USER_GRANT:I = 0x1

.field public static final MSG_SHOW_WAITING_ACTIVITY:I = 0x1

.field public static final RET_BIND_PHONE_FAIL:Ljava/lang/String; = "2002"

.field public static final RET_RPC_EXCEPTION:Ljava/lang/String; = "2003"

.field public static final RET_USER_CANCEL:Ljava/lang/String; = "2001"

.field private static a:Lcom/ali/user/mobile/account/bind/BindManager;


# instance fields
.field private b:I

.field private c:I

.field private d:Landroid/content/Context;

.field private e:Lcom/ali/user/mobile/service/AccountBindService;

.field private f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private h:Ljava/lang/Object;

.field private i:Ljava/lang/Object;

.field private j:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput v1, p0, Lcom/ali/user/mobile/account/bind/BindManager;->b:I

    .line 45
    iput v1, p0, Lcom/ali/user/mobile/account/bind/BindManager;->c:I

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ali/user/mobile/account/bind/BindManager;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ali/user/mobile/account/bind/BindManager;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/account/bind/BindManager;->h:Ljava/lang/Object;

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/account/bind/BindManager;->i:Ljava/lang/Object;

    .line 65
    new-instance v0, Lcom/ali/user/mobile/account/bind/BindManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ali/user/mobile/account/bind/BindManager$1;-><init>(Lcom/ali/user/mobile/account/bind/BindManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ali/user/mobile/account/bind/BindManager;->j:Landroid/os/Handler;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/account/bind/BindManager;->d:Landroid/content/Context;

    .line 55
    invoke-static {}, Lcom/ali/user/mobile/context/AliuserLoginContext;->getAccountBindService()Lcom/ali/user/mobile/service/AccountBindService;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/account/bind/BindManager;->e:Lcom/ali/user/mobile/service/AccountBindService;

    .line 56
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 164
    const-string/jumbo v0, "BindManager"

    const-string/jumbo v1, "removeWaitingMessage"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/ali/user/mobile/account/bind/BindManager;->j:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 166
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/os/Bundle;Lcom/ali/user/mobile/account/bind/OnBindCaller;Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoRes;)V
    .locals 4

    .prologue
    .line 273
    const-string/jumbo v0, "BindManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "open bind pohone h5\uff0cthread:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ali/user/mobile/account/bind/AliuserBindActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "bindToken"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    instance-of v1, p1, Landroid/app/Activity;

    if-nez v1, :cond_0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 277
    iget-object v1, p0, Lcom/ali/user/mobile/account/bind/BindManager;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/account/bind/BindManager;->h:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    iget v0, p0, Lcom/ali/user/mobile/account/bind/BindManager;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 286
    const-string/jumbo v0, "BindManager"

    const-string/jumbo v1, "start bind phone"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ali/user/mobile/account/bind/BindManager;->toBindPhone(Landroid/content/Context;Landroid/os/Bundle;Lcom/ali/user/mobile/account/bind/OnBindCaller;Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoRes;)V

    .line 294
    :goto_1
    return-void

    .line 280
    :catch_0
    move-exception v0

    .line 281
    :try_start_2
    const-string/jumbo v2, "BindManager"

    invoke-static {v2, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 288
    :cond_1
    iget v0, p0, Lcom/ali/user/mobile/account/bind/BindManager;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 289
    const-string/jumbo v0, "BindManager"

    const-string/jumbo v1, "cancel bind phone"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string/jumbo v0, "2001"

    invoke-static {p2, p3, v0}, Lcom/ali/user/mobile/account/bind/BindManager;->a(Landroid/os/Bundle;Lcom/ali/user/mobile/account/bind/OnBindCaller;Ljava/lang/String;)V

    goto :goto_1

    .line 292
    :cond_2
    iget-object v0, p4, Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoRes;->resultCode:Ljava/lang/String;

    invoke-static {p2, p3, v0}, Lcom/ali/user/mobile/account/bind/BindManager;->a(Landroid/os/Bundle;Lcom/ali/user/mobile/account/bind/OnBindCaller;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 221
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.ali.user.mobile.account.bind.alipay_bind_taobao"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 222
    const-string/jumbo v1, "flag"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 224
    return-void
.end method

.method private static a(Landroid/os/Bundle;Lcom/ali/user/mobile/account/bind/OnBindCaller;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 387
    if-eqz p1, :cond_0

    .line 388
    const-string/jumbo v0, "resultCode"

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    invoke-interface {p1, p0}, Lcom/ali/user/mobile/account/bind/OnBindCaller;->onBindError(Landroid/os/Bundle;)V

    .line 391
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/os/Bundle;Lcom/ali/user/mobile/account/bind/OnBindCaller;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 169
    const-string/jumbo v0, "BindManager"

    const-string/jumbo v1, "startWaitingActivityPending"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string/jumbo v0, "BindManager"

    const-string/jumbo v1, "startWaitingActivity"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/account/bind/BindManager;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ali/user/mobile/account/bind/BindManager;->d:Landroid/content/Context;

    const-class v2, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "flag"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/ali/user/mobile/account/bind/BindManager;->d:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lcom/ali/user/mobile/account/bind/BindManager;->d:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 172
    iget-object v1, p0, Lcom/ali/user/mobile/account/bind/BindManager;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/account/bind/BindManager;->i:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    iget v0, p0, Lcom/ali/user/mobile/account/bind/BindManager;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 181
    const-string/jumbo v0, "2001"

    invoke-static {p2, p3, v0}, Lcom/ali/user/mobile/account/bind/BindManager;->a(Landroid/os/Bundle;Lcom/ali/user/mobile/account/bind/OnBindCaller;Ljava/lang/String;)V

    .line 191
    :cond_1
    :goto_1
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 176
    :try_start_2
    const-string/jumbo v2, "BindManager"

    invoke-static {v2, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 182
    :cond_2
    iget v0, p0, Lcom/ali/user/mobile/account/bind/BindManager;->c:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_3

    .line 183
    const-string/jumbo v0, "2003"

    invoke-static {p2, p3, v0}, Lcom/ali/user/mobile/account/bind/BindManager;->a(Landroid/os/Bundle;Lcom/ali/user/mobile/account/bind/OnBindCaller;Ljava/lang/String;)V

    goto :goto_1

    .line 184
    :cond_3
    iget v0, p0, Lcom/ali/user/mobile/account/bind/BindManager;->c:I

    if-eq v0, v3, :cond_1

    .line 189
    iget v0, p0, Lcom/ali/user/mobile/account/bind/BindManager;->c:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/ali/user/mobile/account/bind/BindManager;->a(Landroid/os/Bundle;Lcom/ali/user/mobile/account/bind/OnBindCaller;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic access$0(Lcom/ali/user/mobile/account/bind/BindManager;Ljava/lang/String;Landroid/os/Bundle;Lcom/ali/user/mobile/account/bind/OnBindCaller;)V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0, p1, p2, p3}, Lcom/ali/user/mobile/account/bind/BindManager;->a(Ljava/lang/String;Landroid/os/Bundle;Lcom/ali/user/mobile/account/bind/OnBindCaller;)V

    return-void
.end method

.method static synthetic access$1(Lcom/ali/user/mobile/account/bind/BindManager;Landroid/os/Bundle;Lcom/ali/user/mobile/account/bind/OnBindCaller;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 386
    invoke-static {p1, p2, p3}, Lcom/ali/user/mobile/account/bind/BindManager;->a(Landroid/os/Bundle;Lcom/ali/user/mobile/account/bind/OnBindCaller;Ljava/lang/String;)V

    return-void
.end method

.method private b(Landroid/content/Context;Landroid/os/Bundle;Lcom/ali/user/mobile/account/bind/OnBindCaller;Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoRes;)V
    .locals 3

    .prologue
    .line 351
    const-string/jumbo v0, "BindManager"

    const-string/jumbo v1, "need to active taobao"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    new-instance v0, Lcom/ali/user/mobile/account/bind/BindManager$3;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/ali/user/mobile/account/bind/BindManager$3;-><init>(Lcom/ali/user/mobile/account/bind/BindManager;Landroid/os/Bundle;Lcom/ali/user/mobile/account/bind/OnBindCaller;Landroid/content/Context;)V

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p4, Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoRes;->h5Url:Ljava/lang/String;

    invoke-static {v2}, Lcom/ali/user/mobile/utils/StringUtil;->addCallbackToUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "&__webview_options__=ssoLoginEnabled%3DNO"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ali/user/mobile/h5/H5Wrapper;->startPage(Ljava/lang/String;Lcom/ali/user/mobile/h5/AUH5Plugin;)V

    .line 384
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/ali/user/mobile/account/bind/BindManager;
    .locals 2

    .prologue
    .line 59
    const-class v1, Lcom/ali/user/mobile/account/bind/BindManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ali/user/mobile/account/bind/BindManager;->a:Lcom/ali/user/mobile/account/bind/BindManager;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/ali/user/mobile/account/bind/BindManager;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/account/bind/BindManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ali/user/mobile/account/bind/BindManager;->a:Lcom/ali/user/mobile/account/bind/BindManager;

    .line 62
    :cond_0
    sget-object v0, Lcom/ali/user/mobile/account/bind/BindManager;->a:Lcom/ali/user/mobile/account/bind/BindManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public alipayAccountBind(Landroid/content/Context;Landroid/os/Bundle;Lcom/ali/user/mobile/account/bind/OnBindCaller;)V
    .locals 6

    .prologue
    .line 227
    const-string/jumbo v0, "BindManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "alipayAccountBind - param:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    if-eqz p2, :cond_0

    const-string/jumbo v0, "userId"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    if-eqz p3, :cond_2

    .line 234
    :try_start_0
    invoke-interface {p3}, Lcom/ali/user/mobile/account/bind/OnBindCaller;->onPreRpc()V

    .line 236
    :cond_2
    iget-object v0, p0, Lcom/ali/user/mobile/account/bind/BindManager;->e:Lcom/ali/user/mobile/service/AccountBindService;

    const-string/jumbo v1, "userId"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ali/user/mobile/service/AccountBindService;->alipayAccountBinding(Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoRes;

    move-result-object v0

    .line 237
    const-string/jumbo v1, "BindManager"

    const-string/jumbo v2, "bind taobao result: %s, %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoRes;->resultCode:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v0, Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoRes;->memo:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    if-eqz p3, :cond_3

    .line 239
    invoke-interface {p3}, Lcom/ali/user/mobile/account/bind/OnBindCaller;->onPostRpc()V

    .line 242
    :cond_3
    const-string/jumbo v1, "1000"

    iget-object v2, v0, Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoRes;->resultCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 243
    if-eqz p3, :cond_0

    .line 244
    const-string/jumbo v1, "taobaoId"

    iget-object v0, v0, Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoRes;->taobaoId:Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-interface {p3, p2}, Lcom/ali/user/mobile/account/bind/OnBindCaller;->onBindSuccess(Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    .line 257
    const-string/jumbo v1, "BindManager"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 258
    const-string/jumbo v1, "2003"

    invoke-static {p2, p3, v1}, Lcom/ali/user/mobile/account/bind/BindManager;->a(Landroid/os/Bundle;Lcom/ali/user/mobile/account/bind/OnBindCaller;Ljava/lang/String;)V

    .line 259
    throw v0

    .line 247
    :cond_4
    :try_start_1
    const-string/jumbo v1, "1002"

    iget-object v2, v0, Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoRes;->resultCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 248
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ali/user/mobile/account/bind/BindManager;->a(Landroid/content/Context;Landroid/os/Bundle;Lcom/ali/user/mobile/account/bind/OnBindCaller;Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoRes;)V

    goto :goto_0

    .line 249
    :cond_5
    const-string/jumbo v1, "1003"

    iget-object v2, v0, Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoRes;->resultCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 250
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ali/user/mobile/account/bind/BindManager;->b(Landroid/content/Context;Landroid/os/Bundle;Lcom/ali/user/mobile/account/bind/OnBindCaller;Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoRes;)V

    goto :goto_0

    .line 251
    :cond_6
    const-string/jumbo v1, "1001"

    iget-object v2, v0, Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoRes;->resultCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 252
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ali/user/mobile/account/bind/BindManager;->a(Landroid/content/Context;Landroid/os/Bundle;Lcom/ali/user/mobile/account/bind/OnBindCaller;Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoRes;)V

    goto/16 :goto_0

    .line 254
    :cond_7
    iget-object v0, v0, Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoRes;->resultCode:Ljava/lang/String;

    invoke-static {p2, p3, v0}, Lcom/ali/user/mobile/account/bind/BindManager;->a(Landroid/os/Bundle;Lcom/ali/user/mobile/account/bind/OnBindCaller;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public alipayBindTaobao(Landroid/content/Context;Landroid/os/Bundle;Lcom/ali/user/mobile/account/bind/OnBindCaller;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 90
    const-string/jumbo v0, "BindManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "alipayAccountBind - param:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    if-eqz p2, :cond_0

    const-string/jumbo v0, "userId"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/account/bind/BindManager;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 97
    iget-object v0, p0, Lcom/ali/user/mobile/account/bind/BindManager;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 99
    if-eqz p3, :cond_2

    .line 100
    invoke-interface {p3}, Lcom/ali/user/mobile/account/bind/OnBindCaller;->onPreRpc()V

    .line 103
    :cond_2
    iget-object v0, p0, Lcom/ali/user/mobile/account/bind/BindManager;->j:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Lcom/ali/user/mobile/account/bind/BindManager$BindWarp;

    invoke-direct {v1, p0, p2, p3}, Lcom/ali/user/mobile/account/bind/BindManager$BindWarp;-><init>(Lcom/ali/user/mobile/account/bind/BindManager;Landroid/os/Bundle;Lcom/ali/user/mobile/account/bind/OnBindCaller;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/ali/user/mobile/account/bind/BindManager;->j:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 104
    iget-object v0, p0, Lcom/ali/user/mobile/account/bind/BindManager;->e:Lcom/ali/user/mobile/service/AccountBindService;

    const-string/jumbo v1, "userId"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ali/user/mobile/service/AccountBindService;->alipayAccountBinding(Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoRes;

    move-result-object v0

    .line 105
    invoke-direct {p0}, Lcom/ali/user/mobile/account/bind/BindManager;->a()V

    .line 107
    const-string/jumbo v1, "BindManager"

    const-string/jumbo v2, "bind taobao result: %s, %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoRes;->resultCode:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v0, Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoRes;->memo:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    if-eqz p3, :cond_3

    .line 109
    invoke-interface {p3}, Lcom/ali/user/mobile/account/bind/OnBindCaller;->onPostRpc()V

    .line 112
    :cond_3
    iget-object v1, p0, Lcom/ali/user/mobile/account/bind/BindManager;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 113
    const-string/jumbo v0, "BindManager"

    const-string/jumbo v1, "user already canceled, do not process bind result"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/ali/user/mobile/account/bind/BindManager;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    const-string/jumbo v1, "BindManager"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    invoke-direct {p0}, Lcom/ali/user/mobile/account/bind/BindManager;->a()V

    .line 140
    iget-object v1, p0, Lcom/ali/user/mobile/account/bind/BindManager;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 141
    const-string/jumbo v0, "BindManager"

    const-string/jumbo v1, "user already canceled, do not toast rpc exception"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/ali/user/mobile/account/bind/BindManager;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 118
    :cond_4
    :try_start_1
    iget-object v1, v0, Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoRes;->resultCode:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/ali/user/mobile/account/bind/BindManager;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 120
    const-string/jumbo v1, "1000"

    iget-object v2, v0, Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoRes;->resultCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 121
    if-eqz p3, :cond_0

    .line 122
    const-string/jumbo v1, "taobaoId"

    iget-object v0, v0, Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoRes;->taobaoId:Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-interface {p3, p2}, Lcom/ali/user/mobile/account/bind/OnBindCaller;->onBindSuccess(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 125
    :cond_5
    const-string/jumbo v1, "1002"

    iget-object v2, v0, Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoRes;->resultCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 126
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ali/user/mobile/account/bind/BindManager;->a(Landroid/content/Context;Landroid/os/Bundle;Lcom/ali/user/mobile/account/bind/OnBindCaller;Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoRes;)V

    goto/16 :goto_0

    .line 127
    :cond_6
    const-string/jumbo v1, "1003"

    iget-object v2, v0, Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoRes;->resultCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 128
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ali/user/mobile/account/bind/BindManager;->b(Landroid/content/Context;Landroid/os/Bundle;Lcom/ali/user/mobile/account/bind/OnBindCaller;Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoRes;)V

    goto/16 :goto_0

    .line 129
    :cond_7
    const-string/jumbo v1, "1001"

    iget-object v2, v0, Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoRes;->resultCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 130
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ali/user/mobile/account/bind/BindManager;->a(Landroid/content/Context;Landroid/os/Bundle;Lcom/ali/user/mobile/account/bind/OnBindCaller;Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoRes;)V

    goto/16 :goto_0

    .line 132
    :cond_8
    iget-object v1, p0, Lcom/ali/user/mobile/account/bind/BindManager;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 133
    iget-object v0, v0, Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoRes;->resultCode:Ljava/lang/String;

    invoke-direct {p0, v0, p2, p3}, Lcom/ali/user/mobile/account/bind/BindManager;->a(Ljava/lang/String;Landroid/os/Bundle;Lcom/ali/user/mobile/account/bind/OnBindCaller;)V
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 144
    :cond_9
    iget-object v1, p0, Lcom/ali/user/mobile/account/bind/BindManager;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 145
    const-string/jumbo v0, "BindManager"

    const-string/jumbo v1, "waiting activity started, notify to toast"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string/jumbo v0, "2003"

    invoke-static {p1, v0}, Lcom/ali/user/mobile/account/bind/BindManager;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 148
    :cond_a
    const-string/jumbo v1, "BindManager"

    const-string/jumbo v2, "waiting activity not started, thorw e to framework"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string/jumbo v1, "2003"

    invoke-static {p2, p3, v1}, Lcom/ali/user/mobile/account/bind/BindManager;->a(Landroid/os/Bundle;Lcom/ali/user/mobile/account/bind/OnBindCaller;Ljava/lang/String;)V

    .line 150
    throw v0
.end method

.method public notifyBindPhone(I)V
    .locals 3

    .prologue
    .line 340
    iput p1, p0, Lcom/ali/user/mobile/account/bind/BindManager;->b:I

    .line 341
    iget-object v1, p0, Lcom/ali/user/mobile/account/bind/BindManager;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 343
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/account/bind/BindManager;->h:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    .line 344
    :catch_0
    move-exception v0

    .line 345
    const-string/jumbo v2, "BindManager"

    invoke-static {v2, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 341
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public notifyUserWaiting(I)V
    .locals 3

    .prologue
    .line 205
    iput p1, p0, Lcom/ali/user/mobile/account/bind/BindManager;->c:I

    .line 206
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/ali/user/mobile/account/bind/BindManager;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 208
    const-string/jumbo v0, "BindManager"

    const-string/jumbo v1, "user cancel when waiting binding taobao rpc"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_0
    iget-object v1, p0, Lcom/ali/user/mobile/account/bind/BindManager;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/account/bind/BindManager;->i:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    .line 214
    :catch_0
    move-exception v0

    .line 215
    const-string/jumbo v2, "BindManager"

    invoke-static {v2, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public toBindPhone(Landroid/content/Context;Landroid/os/Bundle;Lcom/ali/user/mobile/account/bind/OnBindCaller;Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoRes;)V
    .locals 3

    .prologue
    .line 297
    new-instance v0, Lcom/ali/user/mobile/account/bind/BindManager$2;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/ali/user/mobile/account/bind/BindManager$2;-><init>(Lcom/ali/user/mobile/account/bind/BindManager;Landroid/os/Bundle;Lcom/ali/user/mobile/account/bind/OnBindCaller;Landroid/content/Context;)V

    .line 336
    iget-object v1, p4, Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoRes;->h5Url:Ljava/lang/String;

    const-string/jumbo v2, "%3Faction%3DcontinueLogin"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/utils/StringUtil;->addCallbackToUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ali/user/mobile/h5/H5Wrapper;->startPage(Ljava/lang/String;Lcom/ali/user/mobile/h5/AUH5Plugin;)V

    .line 337
    return-void
.end method
