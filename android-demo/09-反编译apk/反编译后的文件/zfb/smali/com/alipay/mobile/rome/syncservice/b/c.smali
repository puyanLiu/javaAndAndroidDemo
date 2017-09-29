.class public final Lcom/alipay/mobile/rome/syncservice/b/c;
.super Ljava/lang/Object;
.source "LongLinkCallbackImpl2.java"

# interfaces
.implements Lcom/alipay/mobile/rome/syncsdk/zlink2/ILongLinkCallBack2;


# static fields
.field private static synthetic d:[I


# instance fields
.field private final a:Ljava/lang/String;

.field private volatile b:Landroid/content/Context;

.field private c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string/jumbo v0, "LongLinkCallbackImpl2"

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncservice/b/c;->a:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncservice/b/c;->b:Landroid/content/Context;

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/rome/syncservice/b/c;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/b/c;->c:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/rome/syncservice/b/c;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncservice/b/c;->c:Ljava/lang/Object;

    return-void
.end method

.method private static synthetic a()[I
    .locals 3

    .prologue
    .line 29
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/b/c;->d:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;->values()[Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;->CONNECTED:Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;->CONNECTING:Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;->CONNECT_FAILED:Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;->CONNECT_TIMEOUT:Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;->NOT_AVAILABLE:Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/alipay/mobile/rome/syncservice/b/c;->d:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final afterTunnelSwitch()V
    .locals 2

    .prologue
    .line 160
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/rome/syncservice/b/d;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/rome/syncservice/b/d;-><init>(Lcom/alipay/mobile/rome/syncservice/b/c;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 183
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 184
    return-void
.end method

.method public final getInitMsg()Ljava/lang/String;
    .locals 3

    .prologue
    .line 101
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getInstance()Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getInitMsg()Ljava/lang/String;

    move-result-object v0

    .line 102
    const-string/jumbo v1, "LongLinkCallbackImpl2"

    const-string/jumbo v2, "getInitMsg"

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-object v0
.end method

.method public final onLinkOk()V
    .locals 1

    .prologue
    .line 112
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getInstance()Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->sendSync1001()V

    .line 115
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/d/a;->a()Lcom/alipay/mobile/rome/syncservice/d/a;

    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/d/a;->b()V

    .line 116
    return-void
.end method

.method public final onLinkState(Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;)V
    .locals 3

    .prologue
    .line 122
    const/4 v0, 0x0

    .line 124
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/b/c;->a()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 144
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/alipay/mobile/rome/syncservice/c/a;->a(Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;)V

    .line 150
    return-void

    .line 126
    :pswitch_0
    sget-object v0, Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;->CONNECTED:Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;

    .line 127
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/b/c;->c:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/b/c;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 130
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/rome/syncservice/b/c;->c:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 131
    iget-object v2, p0, Lcom/alipay/mobile/rome/syncservice/b/c;->c:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 128
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 137
    :pswitch_1
    sget-object v0, Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;->CONNECTING:Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;

    goto :goto_0

    .line 140
    :pswitch_2
    sget-object v0, Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;->CONNECT_FAILED:Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;

    goto :goto_0

    .line 143
    :pswitch_3
    sget-object v0, Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;->NOT_AVAILABLE:Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;

    goto :goto_0

    .line 124
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final onTunnelSwitch()V
    .locals 1

    .prologue
    .line 154
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->getInstance()Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->tunnelSwitch()V

    .line 155
    return-void
.end method

.method public final processPacket(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 52
    const-string/jumbo v0, "LongLinkCallbackImpl2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "processPacket: [ default channel ] [ appId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ appData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 53
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const-string/jumbo v0, "LongLinkCallbackImpl2"

    const-string/jumbo v1, "processPacket:  [ default channel ] [ appId=null or empty ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/b/c;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "com.alipay.longlink.TRANSFER_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 63
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 64
    const-string/jumbo v1, "payload"

    invoke-virtual {v2, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    invoke-virtual {v0, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 68
    return-void
.end method

.method public final processPacketSync([B)V
    .locals 3

    .prologue
    .line 81
    const-string/jumbo v0, "LongLinkCallbackImpl2"

    const-string/jumbo v1, "processPacketSync"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiver2;->getInstance()Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiver2;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiver2;->recvSyncMsg([BZLjava/lang/String;)V

    .line 83
    return-void
.end method

.method public final processPacketSyncDirect([B)V
    .locals 2

    .prologue
    .line 91
    const-string/jumbo v0, "LongLinkCallbackImpl2"

    const-string/jumbo v1, "processPacketSyncDirect"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiverDirect;->getInstance()Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiverDirect;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiverDirect;->recvSyncDirectMsg([B)V

    .line 93
    return-void
.end method
