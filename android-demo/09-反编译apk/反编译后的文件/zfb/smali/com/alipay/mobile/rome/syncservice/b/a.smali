.class public final Lcom/alipay/mobile/rome/syncservice/b/a;
.super Ljava/lang/Object;
.source "LongLinkCallbackImpl.java"

# interfaces
.implements Lcom/alipay/mobile/rome/syncsdk/ILongLinkCallBack;


# static fields
.field private static synthetic c:[I


# instance fields
.field private final a:Ljava/lang/String;

.field private volatile b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string/jumbo v0, "LongLinkCallbackImpl"

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncservice/b/a;->a:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncservice/b/a;->b:Landroid/content/Context;

    .line 38
    return-void
.end method

.method private static synthetic a()[I
    .locals 3

    .prologue
    .line 29
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/b/a;->c:[I

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
    sput-object v0, Lcom/alipay/mobile/rome/syncservice/b/a;->c:[I

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
    .locals 3

    .prologue
    .line 144
    const-string/jumbo v0, "switch"

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->setConnAction(Ljava/lang/String;)V

    .line 146
    new-instance v0, Lcom/alipay/mobile/rome/syncservice/b/b;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/rome/syncservice/b/b;-><init>(Lcom/alipay/mobile/rome/syncservice/b/a;)V

    .line 154
    const-wide/16 v1, 0x64

    .line 146
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->submitDelayed(Ljava/lang/Runnable;J)V

    .line 156
    return-void
.end method

.method public final onLinkState(Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;)V
    .locals 3

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 117
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/b/a;->a()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 129
    :goto_0
    invoke-static {v0}, Lcom/alipay/mobile/rome/syncservice/c/a;->a(Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;)V

    .line 135
    return-void

    .line 119
    :pswitch_0
    sget-object v0, Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;->CONNECTED:Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;

    goto :goto_0

    .line 122
    :pswitch_1
    sget-object v0, Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;->CONNECTING:Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;

    goto :goto_0

    .line 125
    :pswitch_2
    sget-object v0, Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;->CONNECT_FAILED:Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;

    goto :goto_0

    .line 128
    :pswitch_3
    sget-object v0, Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;->NOT_AVAILABLE:Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;

    goto :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final onLongLinkDeviceBinded()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/b/a;->b:Landroid/content/Context;

    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/b;->a()Lcom/alipay/mobile/rome/syncservice/sync/b;

    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/b;->c()V

    .line 100
    return-void
.end method

.method public final onLongLinkRegistered()V
    .locals 2

    .prologue
    .line 87
    const-string/jumbo v0, "LongLinkCallbackImpl"

    const-string/jumbo v1, "onLongLinkRegistered"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/b/a;->b:Landroid/content/Context;

    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/b;->a()Lcom/alipay/mobile/rome/syncservice/sync/b;

    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/b;->b()V

    .line 91
    return-void
.end method

.method public final onLongLinkUserBinded()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/b/a;->b:Landroid/content/Context;

    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/b;->a()Lcom/alipay/mobile/rome/syncservice/sync/b;

    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/b;->d()V

    .line 109
    return-void
.end method

.method public final onTunnelSwitch()V
    .locals 1

    .prologue
    .line 139
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->getInstance()Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->tunnelSwitch()V

    .line 140
    return-void
.end method

.method public final processPacket(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 50
    const-string/jumbo v0, "LongLinkCallbackImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "processPacket: [ default channel ] [ appId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ appData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 51
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    const-string/jumbo v0, "LongLinkCallbackImpl"

    const-string/jumbo v1, "processPacket:  [ default channel ] [ appId=null or empty ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/b/a;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "com.alipay.longlink.TRANSFER_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 61
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    const-string/jumbo v1, "payload"

    invoke-virtual {v2, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    invoke-virtual {v0, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 66
    return-void
.end method

.method public final processPacketSync(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/b/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncservice/sync/recv/SyncMsgReceiver;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/rome/syncservice/sync/recv/SyncMsgReceiver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/rome/syncservice/sync/recv/SyncMsgReceiver;->recvSyncMsg(Ljava/lang/String;)V

    .line 80
    return-void
.end method
