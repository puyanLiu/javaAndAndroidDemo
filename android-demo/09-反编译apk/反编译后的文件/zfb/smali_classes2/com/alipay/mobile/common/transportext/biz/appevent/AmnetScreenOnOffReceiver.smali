.class public Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetScreenOnOffReceiver;
.super Ljava/lang/Object;
.source "AmnetScreenOnOffReceiver.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "amnet_AmnetScreenOnOffReceiver"

.field private static broadcastReceiver:Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetScreenOnOffReceiver$SecreenBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetScreenOnOffReceiver;->broadcastReceiver:Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetScreenOnOffReceiver$SecreenBroadcastReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method private static getSecreenBroadcastReceiver()Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetScreenOnOffReceiver$SecreenBroadcastReceiver;
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetScreenOnOffReceiver;->broadcastReceiver:Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetScreenOnOffReceiver$SecreenBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 37
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetScreenOnOffReceiver;->broadcastReceiver:Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetScreenOnOffReceiver$SecreenBroadcastReceiver;

    .line 49
    :goto_0
    return-object v0

    .line 40
    :cond_0
    const-class v1, Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetScreenOnOffReceiver;

    monitor-enter v1

    .line 42
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetScreenOnOffReceiver;->broadcastReceiver:Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetScreenOnOffReceiver$SecreenBroadcastReceiver;

    if-eqz v0, :cond_1

    .line 43
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetScreenOnOffReceiver;->broadcastReceiver:Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetScreenOnOffReceiver$SecreenBroadcastReceiver;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 46
    :cond_1
    :try_start_1
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetScreenOnOffReceiver$SecreenBroadcastReceiver;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetScreenOnOffReceiver$SecreenBroadcastReceiver;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetScreenOnOffReceiver;->broadcastReceiver:Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetScreenOnOffReceiver$SecreenBroadcastReceiver;

    .line 47
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetScreenOnOffReceiver;->broadcastReceiver:Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetScreenOnOffReceiver$SecreenBroadcastReceiver;

    goto :goto_0
.end method

.method public static start()V
    .locals 2

    .prologue
    .line 23
    const-string/jumbo v0, "amnet_AmnetScreenOnOffReceiver"

    const-string/jumbo v1, "onCreate: [ AmnetScreenOnOffReceiver ] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetScreenOnOffReceiver;->getSecreenBroadcastReceiver()Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetScreenOnOffReceiver$SecreenBroadcastReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetScreenOnOffReceiver$SecreenBroadcastReceiver;->register()V

    .line 25
    return-void
.end method

.method public static stop()V
    .locals 2

    .prologue
    .line 28
    const-string/jumbo v0, "amnet_AmnetScreenOnOffReceiver"

    const-string/jumbo v1, "stop: [ AmnetScreenOnOffReceiver ]  "

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetScreenOnOffReceiver;->broadcastReceiver:Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetScreenOnOffReceiver$SecreenBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 31
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetScreenOnOffReceiver;->broadcastReceiver:Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetScreenOnOffReceiver$SecreenBroadcastReceiver;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetScreenOnOffReceiver$SecreenBroadcastReceiver;->unregister()V

    .line 33
    :cond_0
    return-void
.end method
