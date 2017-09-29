.class final Lcom/alipay/mobile/rome/syncservice/b/d;
.super Ljava/lang/Object;
.source "LongLinkCallbackImpl2.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/rome/syncservice/b/c;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/rome/syncservice/b/c;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncservice/b/d;->a:Lcom/alipay/mobile/rome/syncservice/b/c;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 164
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/b/d;->a:Lcom/alipay/mobile/rome/syncservice/b/c;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/b/c;->a(Lcom/alipay/mobile/rome/syncservice/b/c;Ljava/lang/Object;)V

    .line 165
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/b/d;->a:Lcom/alipay/mobile/rome/syncservice/b/c;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncservice/b/c;->a(Lcom/alipay/mobile/rome/syncservice/b/c;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 167
    :try_start_0
    const-string/jumbo v0, "LongLinkCallbackImpl2"

    const-string/jumbo v2, "wait lock"

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/b/d;->a:Lcom/alipay/mobile/rome/syncservice/b/c;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncservice/b/c;->a(Lcom/alipay/mobile/rome/syncservice/b/c;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/b/d;->a:Lcom/alipay/mobile/rome/syncservice/b/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/b/c;->a(Lcom/alipay/mobile/rome/syncservice/b/c;Ljava/lang/Object;)V

    .line 176
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/a/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/a/b;->b()Ljava/lang/String;

    move-result-object v1

    .line 179
    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/control/ReflectNotifyMmtp;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Lcom/alipay/mobile/rome/syncservice/sync2/UserInfoManager2;->handleUserInfoEvent(ZLjava/lang/String;Ljava/lang/String;)V

    .line 182
    return-void

    .line 170
    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v0, "LongLinkCallbackImpl2"

    const-string/jumbo v2, "wait InterruptedException"

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
